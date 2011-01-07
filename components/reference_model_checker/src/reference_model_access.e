note
	component:   "openEHR Archetype Project"
	description: "Access to service interface to object model"
	keywords:    "ADL, archetype, reference model"
	author:      "Thomas Beale"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2010 Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "See notice at bottom of class"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"


class REFERENCE_MODEL_ACCESS

inherit
	SHARED_RESOURCES
		export
			{NONE} all;
			{ANY} directory_exists
		end

	BMM_DEFINITIONS
		export
			{NONE} all
		end

	SHARED_MESSAGE_BILLBOARD
		export
			{NONE} all
		end

create
	make

feature -- Definitions

	Max_inclusion_depth: INTEGER = 10

feature -- Initialisation

	make
		do
			create all_schemas.make(0)
			create top_level_schemas.make(0)
			create schema_inclusion_map.make(0)
			create schemas_by_package.make(0)
			create schema_metadata_table.make (0)
		end

	initialise (a_rm_dir: attached STRING; a_schemas_load_list: attached LIST [STRING])
		require
			Rm_dir_valid: directory_exists (a_rm_dir)
		do
			schema_directory := a_rm_dir
			schemas_load_list := a_schemas_load_list
			schemas_load_list.compare_objects
			initialise_schema_metadata_table
		ensure
			Schemas_dir_set: schema_directory = a_rm_dir
			Schemas_load_list_set: schemas_load_list = a_schemas_load_list
		end

feature -- Access

	schema_directory: STRING
			-- directory where all the schemas loaded here are found

	schema_metadata_table: attached HASH_TABLE [HASH_TABLE [STRING, STRING], STRING]
			-- table of all schemas found in schema directory; format:
			-- table of {schema meta-data items + path}, keyed by schema name
			-- schema_name is created from
			-- 	model_publisher '_' schema_name '_' model_release
			-- e.g. openehr_rm_1.0.3, openehr_test_1.0.1, iso_13606-1_2008
			-- This is the same key as BMM_SCHEMA.schema_id

	all_schemas: HASH_TABLE [SCHEMA_ACCESS, STRING]
			-- all schemas found and loaded from `schema_directory'
			-- Keyed by schema_id, i.e.
			-- 		model_publisher '_' schema_name '_' model_release
			-- e.g. openehr_rm_1.0.3, openehr_test_1.0.1, iso_13606-1_2008
			-- This is the same key as BMM_SCHEMA.schema_id
			-- Does not include schemas that failed to parse (i.e. SCHEMA_ACCESS.passed = False)

	top_level_schemas: attached HASH_TABLE [SCHEMA_ACCESS, STRING]
			-- top-level (root) schemas in use. Table is keyed by logical schema_name, i.e. model_publisher '_' model_name, e.g. "openehr_rm"
			-- Schemas containing different variants of same model (i.e. model_publisher + model_name) are considered duplicates

	schema_for_package (a_qualified_package_name: STRING): SCHEMA_ACCESS
			-- Return schema containing the package-class key `a_qualified_package_name', e.g. "openEHR-EHR"
		require
			has_schema_for_package (a_qualified_package_name.as_lower)
		do
			Result := schemas_by_package.item (a_qualified_package_name.as_lower)
		end

	schemas_load_list: LIST [STRING]
			-- initial load list for this session, set during initialisation. This may initially be empty
			-- or contain invalid entries; it will be modified to correctly list the actual schemas found

	load_count: INTEGER
			-- load counter so other parts of the application can see if anything has changed

feature -- Status Report

	has_schema_for_package (a_qualified_package_name: STRING): BOOLEAN
			-- True if there is a schema containing the qualified package key `a_qualified_package_name', e.g. "openEHR-EHR"
		do
			Result := schemas_by_package.has (a_qualified_package_name.as_lower)
		end

	found_valid_schemas: BOOLEAN
			-- True if any Reference Model schemas were found
		do
			Result := not top_level_schemas.is_empty
		end

feature -- Commands

	set_schema_load_list (a_schemas_load_list: attached LIST [STRING])
		do
			schemas_load_list := a_schemas_load_list
		ensure
			Schemas_load_list_set: schemas_load_list = a_schemas_load_list
		end

	load_schemas
			-- populate the rm_schemas table by reading in schemas either specified in the 'rm_schemas_load_list'
			-- config variable, or by reading all schemas found in the schema directory
		local
			model_publisher: STRING
			qualified_pkg_name: STRING
			pkgs: HASH_TABLE [BMM_PACKAGE_DEFINITION, STRING]
			included_schema: BMM_SCHEMA
			i: INTEGER
			finished: BOOLEAN
		do
debug("rm_schema")
	io.put_string ("Loading schemas%N")
end
			-- populate the rm_schemas table first
			all_schemas.wipe_out
			top_level_schemas.wipe_out
			schema_inclusion_map.wipe_out
			if not schema_metadata_table.is_empty then

				-- set list of schemas to load; used later to determine what to put in `top_level_schemas'
				if not schemas_load_list.is_empty then
					from schemas_load_list.start until schemas_load_list.off loop
						if not schema_metadata_table.has (schemas_load_list.item) then
							post_warning (Current, "load_schemas", "model_access_w7", <<schemas_load_list.item>>)
							schemas_load_list.remove
						else
							schemas_load_list.forth
						end
					end
				else
					create {ARRAYED_LIST[STRING]} schemas_load_list.make_from_array (schema_metadata_table.current_keys)
					schemas_load_list.compare_objects
					post_warning (Current, "load_schemas", "model_access_w6", Void)
				end

				-- initial load of all schemas & populate `schema_inclusion_map'
				from schema_metadata_table.start until schema_metadata_table.off loop
					if not all_schemas.has (schema_metadata_table.key_for_iteration) then
						load_schema_include_closure (schema_metadata_table.key_for_iteration)
					end
					schema_metadata_table.forth
				end

				-- mark the top level schemas
				from all_schemas.start until all_schemas.off loop
					if all_schemas.item_for_iteration.passed and not schema_inclusion_map.has(all_schemas.item_for_iteration.schema.schema_id) then
						all_schemas.item_for_iteration.set_top_level
					end
					all_schemas.forth
				end

				-- At this point, all schemas that parsed successfully are in `all_schemas' - consists of a set of
				-- SCHEMA_ACCESS objects each containing a BMM_SCHEMA containing only the classes defined in that
				-- schema file. Also at this point, the `schema_inclusion_map' is populated.
				-- Now we process the include relations, in order to add the packages and classes from included schemas to the
				-- top-level schemas.
				-- We iterate again repeatedly until all includes have been processed
				from i := 1 until finished or i > Max_inclusion_depth loop
					finished := True
debug("rm_schema")
	io.put_string ("%Tnow process includes - iteration " +
		i.out + "%N")
end
					from schema_inclusion_map.start until schema_inclusion_map.off loop
						if all_schemas.has (schema_inclusion_map.key_for_iteration) then
							included_schema := all_schemas.item (schema_inclusion_map.key_for_iteration).schema
debug("rm_schema")
	io.put_string ("%T%Tchecking included schema " +
		included_schema.schema_id + "...%N")
end
							-- only process current schema if its lower level includes have already been copied into it,
							-- or if it had no includes, since only then is it ready to be itself included in the next one up the chain
							-- If this included schema is in this state, merge its contents into each schema that includes it
							if included_schema.state = {BMM_SCHEMA}.State_includes_processed then
								from schema_inclusion_map.item_for_iteration.start until schema_inclusion_map.item_for_iteration.off loop
									if all_schemas.item (schema_inclusion_map.item_for_iteration.item).schema.state /= {BMM_SCHEMA}.State_includes_processed then
debug("rm_schema")
	io.put_string ("%T%T%Tmerging schema " +
		included_schema.schema_id + " into " +
		all_schemas.item (schema_inclusion_map.item_for_iteration.item).schema.schema_id + "%N")
end
										all_schemas.item (schema_inclusion_map.item_for_iteration.item).schema.merge_included_schema(included_schema)
										finished := False
									end
									schema_inclusion_map.item_for_iteration.forth
								end
							end
						else
							post_error (Current, "load_schemas", "model_access_e10", <<schema_inclusion_map.key_for_iteration>>)
						end
						schema_inclusion_map.forth
					end
					i := i + 1
				end

				-- finalise and the top-level schemas on the load list (if there is one)
				from all_schemas.start until all_schemas.off loop
debug("rm_schema")
	io.put_string ("%Tfinalising top-level schema " + all_schemas.key_for_iteration + "%N")
end
					if all_schemas.item_for_iteration.is_top_level and schemas_load_list.has (all_schemas.key_for_iteration) then
debug("rm_schema")
	io.put_string ("%T%Tschema found in load list " + all_schemas.key_for_iteration + "%N")
end
						all_schemas.item_for_iteration.schema.finalise_schema
						if all_schemas.item_for_iteration.schema.state = {BMM_SCHEMA}.State_ready_to_validate then
							all_schemas.item_for_iteration.validate
debug("rm_schema")
	io.put_string ("%T%Tvalidating schema " + all_schemas.key_for_iteration + "%N")
end
							-- validate the schema & if passed, put it into `top_level_schemas'
							if all_schemas.item_for_iteration.passed then
								top_level_schemas.extend (all_schemas.item_for_iteration, all_schemas.key_for_iteration)
								post_info (Current, "load_schemas", "general", <<all_schemas.item_for_iteration.errors.as_string>>)
							else
								post_error (Current, "load_schemas", "model_access_e9", <<all_schemas.key_for_iteration, all_schemas.item_for_iteration.errors.as_string>>)
							end
						end
					end
					all_schemas.forth
				end
			end

			-- now populate the rm_schemas_by_package table
			schemas_by_package.wipe_out
			from top_level_schemas.start until top_level_schemas.off loop
				model_publisher := top_level_schemas.item_for_iteration.schema.model_publisher
				pkgs := top_level_schemas.item_for_iteration.schema.packages

				-- put a ref to schema, keyed by the model_publisher-package_name key (lower-case) for later lookup by compiler
				from pkgs.start until pkgs.off loop
					qualified_pkg_name := model_qualified_package_name(model_publisher, pkgs.item_for_iteration.name)
					if not schemas_by_package.has (qualified_pkg_name) then
						schemas_by_package.put (top_level_schemas.item_for_iteration, qualified_pkg_name)
					else
						post_warning (Current, "rm_schemas", "model_access_w3", <<qualified_pkg_name, schemas_by_package.item (qualified_pkg_name).schema.schema_id,
							top_level_schemas.item_for_iteration.schema.schema_id>>)
					end
					pkgs.forth
				end

				top_level_schemas.forth
			end
			load_count := load_count.item + 1
		end

feature {NONE} -- Implementation

	schema_inclusion_map: attached HASH_TABLE [ARRAYED_LIST[STRING], STRING]
			-- map of inclusions among schemas found in the directory; structure:
			-- {key = schema_id; {list of schemas that 'include' key}}
			-- Schemas not included by other schemas have NO ENTRY in this list
			-- this is detected and used to populate `top_level_schemas'

	schemas_by_package: attached HASH_TABLE [SCHEMA_ACCESS, STRING]
			-- schemas keyed by qualified package name, i.e. model_publisher '-' package_name, e.g. "openehr-ehr";
			-- this matches the qualifide package name part of an ARCHETYPE_ID

	initialise_schema_metadata_table
			-- initialise `rm_schema_metadata_table'
		local
			dir: DIRECTORY
			dmp: DADL_MINI_PARSER
			schema_id, schema_path: STRING
		do
			create schema_metadata_table.make(0)
			create dir.make_open_read (schema_directory)
debug("rm_schema")
	io.put_string ("Building rm_schema meta data table. Reading schemas at path " + schema_directory + "%N")
end
			if not (dir.exists and dir.is_readable) then
				post_error (Current, "initialise_schema_metadata_table", "model_access_e5", <<schema_directory>>)
			elseif dir.is_empty then
				post_error (Current, "initialise_schema_metadata_table", "model_access_e6", <<schema_directory, Schema_file_extension>>)
			else
				create dmp
				from
					dir.start
					dir.readentry
				until
					dir.lastentry = Void
				loop
					if dir.lastentry.ends_with (schema_file_extension) then
						schema_path := schema_directory + os_directory_separator.out + dir.lastentry
						dmp.extract_attr_values (schema_path, Schema_fast_parse_attrs)
debug("rm_schema")
	io.put_string ("%TReading schema " + schema_path + "%N")
end

						if dmp.last_parse_valid then
							dmp.last_parse_content.put (schema_path, Metadata_schema_path)
							schema_id := create_schema_id (dmp.last_parse_content_item (Metadata_model_publisher), dmp.last_parse_content_item (metadata_schema_name), dmp.last_parse_content_item (Metadata_model_release))
							-- check for two schema files purporting to be the exact same schema (including release)
							if schema_metadata_table.has(schema_id) then
								post_warning (Current, "initialise_schema_metadata_table", "model_access_w2", <<schema_id, schema_path>>)
							else
								schema_metadata_table.put (dmp.last_parse_content, schema_id)
							end
						else
							post_warning (Current, "initialise_schema_metadata_table", "model_access_w4", <<schema_path, dmp.last_parse_fail_reason>>)
						end
					end
					dir.readentry
				end
				if schema_metadata_table.is_empty then
					post_error (Current, "initialise_schema_metadata_table", "model_access_e6", <<schema_directory, Schema_file_extension>>)
				end
			end
		end

	load_schema_include_closure (a_schema_id: attached STRING)
			-- process the include directives for a given schema & build the `schema_inclusion_map' reverse reference table
		local
			includes: HASH_TABLE [BMM_INCLUDE_SPEC, STRING]
			includers: ARRAYED_SET[STRING]
		do
			load_schema(a_schema_id)
			if all_schemas.item(a_schema_id).passed then
				includes := all_schemas.item(a_schema_id).schema.includes
debug("rm_schema")
	io.put_string ("%Tbuild include map for schema " +
		a_schema_id + "%N")
end
				if not includes.is_empty then
					from includes.start until includes.off loop
						if not schema_inclusion_map.has (includes.item_for_iteration.id) then
							create includers.make (0)
							schema_inclusion_map.put (includers, includes.item_for_iteration.id)
						end
debug("rm_schema")
	io.put_string ("%T%Tadding inclusion map entry: schema " +
		includes.item_for_iteration.id + "; included by " +
		a_schema_id + "%N")
end
						schema_inclusion_map.item (includes.item_for_iteration.id).extend (a_schema_id)
						if not all_schemas.has (includes.item_for_iteration.id) then
							load_schema_include_closure(includes.item_for_iteration.id)
						end
						includes.forth
					end
				end
			end
		end

	load_schema (a_schema_id: attached STRING)
			-- load a single schema
		local
			ma: SCHEMA_ACCESS
			schema_path: STRING
		do
			schema_path := schema_metadata_table.item(a_schema_id).item (Metadata_schema_path)
debug("rm_schema")
	io.put_string ("%Trequest load schema " + schema_path + "%N")
end
			-- load the full schema
			create ma.make(schema_path)
			if not ma.passed then
				post_error (Current, "load_schemas", "model_access_e8", <<a_schema_id, ma.errors.as_string>>)
			end
			all_schemas.put (ma, a_schema_id)
		end

invariant
	-- all_schemas_basic_validity: all_schemas.for_all (agent (sch: SCHEMA_ACCESS):BOOLEAN do Result := sch.passed end)

end



--|
--| ***** BEGIN LICENSE BLOCK *****
--| Version: MPL 1.1/GPL 2.0/LGPL 2.1
--|
--| The contents of this file are subject to the Mozilla Public License Version
--| 1.1 (the 'License'); you may not use this file except in compliance with
--| the License. You may obtain a copy of the License at
--| http://www.mozilla.org/MPL/
--|
--| Software distributed under the License is distributed on an 'AS IS' basis,
--| WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
--| for the specific language governing rights and limitations under the
--| License.
--|
--| The Original Code is reference_model_access.e.
--|
--| The Initial Developer of the Original Code is Thomas Beale.
--| Portions created by the Initial Developer are Copyright (C) 2010
--| the Initial Developer. All Rights Reserved.
--|
--| Contributor(s):
--|
--| Alternatively, the contents of this file may be used under the terms of
--| either the GNU General Public License Version 2 or later (the 'GPL'), or
--| the GNU Lesser General Public License Version 2.1 or later (the 'LGPL'),
--| in which case the provisions of the GPL or the LGPL are applicable instead
--| of those above. If you wish to allow use of your version of this file only
--| under the terms of either the GPL or the LGPL, and not to allow others to
--| use your version of this file under the terms of the MPL, indicate your
--| decision by deleting the provisions above and replace them with the notice
--| and other provisions required by the GPL or the LGPL. If you do not delete
--| the provisions above, a recipient may use your version of this file under
--| the terms of any one of the MPL, the GPL or the LGPL.
--|
--| ***** END LICENSE BLOCK *****
--|
