note
	description: "This is a class that mostly responsible for copying Archetype class fields, (other than definition). It has some inefficiencies, due to the way Eiffel wrappers for PB C++ objects are generated"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ARCHETYPE_WRAPPER_GENERATOR

create
	make

feature
	archetype:ARCHETYPE

	a_wrapper: ARCHETYPE_WRAPPER_GEN

feature {NONE} -- Initialization

	make(p_archetype:ARCHETYPE )
		require
			param_not_null: attached p_archetype
		do
			archetype := p_archetype
			create a_wrapper.make
			a_wrapper.init_pb_obj
			a_wrapper.set_is_root_object (true)
		end

feature
	get_archetype_definition_wrapper:CCOMPLEXOBJECT_WRAPPER_GEN
	do
		Result := a_wrapper.get_definition
	end

	get_archetype_wrapper:ARCHETYPE_WRAPPER_GEN
	do
		Result := a_wrapper
	end

	fill_archetype_wrapper
	do


		--copy fields other than the definition field: that will be filled by the visitor
		--adlversion
		if archetype.version /= void then
			a_wrapper.set_adlversion (archetype.version)
		end

		--archetypeId
		if archetype.archetype_id /= void then
			copy_archetype_id(a_wrapper.get_archetypeid, archetype.archetype_id)
		end

		--concept
		if archetype.concept /= void then
			a_wrapper.set_concept (archetype.concept)
		end

		--definition:TODO: WILL BE FILLED BY THE VISITOR
		--description
		if archetype.description /= void then
			copy_description(a_wrapper.get_description, archetype.description)
		end

		--invariants
		if attached archetype.invariants as invariants then
			from
			invariants.start
			until
				invariants.after
			loop
				copy_assertion (a_wrapper.add_invariants, invariants.item_for_iteration)
				invariants.forth
			end
		end

		--iscontrolled
		a_wrapper.set_iscontrolled (archetype.is_controlled)
		--ontology
		if archetype.ontology /= void then
			copy_archetype_ontology(a_wrapper.get_ontology, archetype.ontology)
		end

		--originallanguage
		if archetype.original_language /= void then
			copy_code_phrase (a_wrapper.get_originallanguage, archetype.original_language)
		end

		--parentarchetypeid
		if archetype.parent_archetype_id /= void then
			copy_archetype_id (a_wrapper.get_parentarchetypeid, archetype.parent_archetype_id)
		end

		--revisionhistory
		if archetype.revision_history /= void then
			copy_revision_history (a_wrapper.get_revisionhistory, archetype.revision_history)
		end

		--translations
		if archetype.translations /= void then
			from
			archetype.translations.start -- HASH_TABLE[TRANSLATION_DETAILS,STRING_8]
			until
				archetype.translations.after
			loop
				copy_translation_details(a_wrapper.add_translations,archetype.translations.item_for_iteration)

				archetype.translations.forth
			end
		end

		--uid
		if attached a_wrapper.uid as uid then
			copy_hierobject_id(a_wrapper.get_uid,archetype.uid)
		end

	end

	copy_hierobject_id(p_wrapper:HIEROBJECTID_WRAPPER_GEN; p_hierobject_id:HIER_OBJECT_ID)
	require
		p_not_null: attached p_wrapper  and attached p_hierobject_id
	do
		if attached {STRING} p_hierobject_id.value as val then
			p_wrapper.set_value (val)
		end
	end

	copy_archetype_id(p_wrapper:ARCHETYPEID_WRAPPER_GEN; p_archetype_id:ARCHETYPE_ID)
	require
		p_not_null: p_wrapper /= void and p_archetype_id /= void
	do
		if p_archetype_id.value /= void then
			p_wrapper.set_value (p_archetype_id.value)
		end

	end

	copy_description(wrapper:RESOURCEDESCRIPTION_WRAPPER_GEN; p_description:RESOURCE_DESCRIPTION)
	require
		p_not_null: wrapper /= void and p_description /= void
	do
		--details
		if p_description.details /= void then
			copy_resource_description_details(wrapper, p_description.details)
		end

		--lifecyclestate
		if p_description.lifecycle_state /= void then
			wrapper.set_lifecyclestate (p_description.lifecycle_state)
		end

		--originalauthor
		if p_description.original_author /= void then
			from
				p_description.original_author.start
			until
				p_description.original_author.after
			loop
				copy_string_dict_item (wrapper.add_originalauthor, p_description.original_author.key_for_iteration, p_description.original_author.item_for_iteration)

				p_description.original_author.forth
			end
--			copy_resource_description_org_authors(wrapper,p_description.original_author) --OBSOLETE
		end

		--othercontributors
		if p_description.other_contributors /= void then
			from
				p_description.other_contributors.start
			until
				p_description.other_contributors.after
			loop
				wrapper.add_othercontributors (p_description.other_contributors.item_for_iteration)

				p_description.other_contributors.forth
			end
--			copy_resource_description_other_cont(wrapper,p_description.other_contributors)
		end

		--otherdetails
		if p_description.other_details /= void then
			from
				p_description.other_details.start
			until
				p_description.other_details.after
			loop
				copy_string_dict_item (wrapper.add_otherdetails, p_description.other_details.key_for_iteration, p_description.other_details.item_for_iteration)

				p_description.other_details.forth
			end
--			copy_resource_description_otherdetails(wrapper,p_description.other_details)
		end

		--parentresource
		if p_description.parent_resource /= void then
			copy_authored_resource(wrapper.get_parentresource,p_description.parent_resource)
		end

		--resourcepackageURI
		if p_description.resource_package_uri /= void then
			wrapper.set_resourcepackageuri (p_description.resource_package_uri.as_string)
		end

	end

	copy_resource_description_details(wrapper:RESOURCEDESCRIPTION_WRAPPER_GEN; p_descriptions:HASH_TABLE[RESOURCE_DESCRIPTION_ITEM,STRING_8])
	require
		p_not_null: wrapper /= void and p_descriptions /= void
	local
		description_item: RESOURCEDESCRIPTIONITEM_WRAPPER_GEN
	do
		from
			p_descriptions.start
		until
			p_descriptions.after
		loop
			description_item := wrapper.add_details
			--language
			if p_descriptions.item_for_iteration.language /= void then
				copy_code_phrase(description_item.get_language, p_descriptions.item_for_iteration.language)
			end

			--purpose
			if p_descriptions.item_for_iteration.purpose /= void then
				description_item.set_purpose (p_descriptions.item_for_iteration.purpose)
			end

			--keywords
			if p_descriptions.item_for_iteration.keywords /= void then
				copy_description_item_keywords(description_item,p_descriptions.item_for_iteration.keywords)
			end

			--use
			if p_descriptions.item_for_iteration.use /= void then
				description_item.set_use (p_descriptions.item_for_iteration.use)
			end

			--misuse
			if p_descriptions.item_for_iteration.misuse /= void then
				description_item.set_misuse (p_descriptions.item_for_iteration.misuse)
			end

			--copyright
			if p_descriptions.item_for_iteration.copyright /= void then
				description_item.set_copyright (p_descriptions.item_for_iteration.copyright)
			end

			--original resource uri
			if p_descriptions.item_for_iteration.original_resource_uri /= void then
				from
					p_descriptions.item_for_iteration.original_resource_uri.start
				until
					p_descriptions.item_for_iteration.original_resource_uri.after
				loop
					copy_string_dict_item (description_item.add_originalresourceuri, p_descriptions.item_for_iteration.original_resource_uri.key_for_iteration, p_descriptions.item_for_iteration.original_resource_uri.item_for_iteration)
					p_descriptions.item_for_iteration.original_resource_uri.forth
				end
--				copy_description_item_originalresuri(description_item,p_descriptions.item_for_iteration.original_resource_uri) --OBSOLETE
			end

			--other details
			if p_descriptions.item_for_iteration.other_details /= void then
				from
					p_descriptions.item_for_iteration.other_details.start
				until
					p_descriptions.item_for_iteration.other_details.after
				loop
					copy_string_dict_item (description_item.add_otherdetails, p_descriptions.item_for_iteration.other_details.key_for_iteration, p_descriptions.item_for_iteration.other_details.item_for_iteration)
					p_descriptions.item_for_iteration.other_details.forth
				end
--				copy_description_item_otherdetails(description_item,p_descriptions.item_for_iteration.other_details) --OBSOLETE
			end

			p_descriptions.forth
		end
	end

	copy_code_phrase(p_wrapper:CODEPHRASE_WRAPPER_GEN; p_code_phrase:CODE_PHRASE)
	require
		p_not_null: p_wrapper /= void and p_code_phrase /= void
	do
		--codestring
		if p_code_phrase.code_string /= void then
			p_wrapper.set_codestring (p_code_phrase.code_string)
		end

		--terminologyId
		if p_code_phrase.terminology_id /= void then
			copy_terminology_id(p_wrapper.get_terminologyid,p_code_phrase.terminology_id)
		end
	end

	copy_terminology_id(p_wrapper:TERMINOLOGYID_WRAPPER_GEN;p_terminology_id:TERMINOLOGY_ID)
	require
		p_not_null: p_wrapper /= void and p_terminology_id /= void
	do
		if p_terminology_id.value /= void then
			p_wrapper.set_value (p_terminology_id.value)
		end

	end

	copy_description_item_keywords(p_wrapper:RESOURCEDESCRIPTIONITEM_WRAPPER_GEN;p_keywords:ARRAYED_LIST[STRING])
	require
		p_not_null: p_wrapper /= void and p_keywords /= void
	do
		from
			p_keywords.start
		until
			p_keywords.after
		loop
			if p_keywords.item_for_iteration /= void then
				p_wrapper.add_keywords (p_keywords.item_for_iteration)
			end

			p_keywords.forth
		end
	end

	copy_string_dict_item(p_wrapper:STRINGDICTIONARYITEM_WRAPPER_GEN; p_id:STRING; p_value:STRING)
	require
		p_not_null: p_wrapper /= void and p_id /= void and p_value /= void
	do
		p_wrapper.set_value (p_value)
		p_wrapper.set_id (p_value)
	end

--	copy_description_item_originalresuri(p_wrapper:RESOURCEDESCRIPTIONITEM_WRAPPER_GEN;p_original_uris:HASH_TABLE[STRING_8,STRING_8])
--	require
--		p_not_nul: p_wrapper /= void and p_original_uris /= void
--	local
--		sd_item:STRINGDICTIONARYITEM_WRAPPER_GEN
--	do
--		from
--			p_original_uris.start
--		until
--			p_original_uris.after
--		loop
--			sd_item := p_wrapper.add_originalresourceuri
--			if p_original_uris.item_for_iteration /= void and p_original_uris.key_for_iteration /= void then
--				sd_item.set_value (p_original_uris.item_for_iteration)
--				sd_item.set_id (p_original_uris.key_for_iteration)
--			end

--			p_original_uris.forth
--		end
--	end

--	copy_description_item_otherdetails(p_wrapper:RESOURCEDESCRIPTIONITEM_WRAPPER_GEN;p_other_details:HASH_TABLE[STRING_8,STRING_8])
--	local
--		sd_item:STRINGDICTIONARYITEM_WRAPPER_GEN
--	do
--		from
--			p_other_details.start
--		until
--			p_other_details.after
--		loop
--			sd_item := p_wrapper.add_otherdetails
--			sd_item.set_value (p_other_details.item_for_iteration)
--			sd_item.set_id (p_other_details.key_for_iteration)
--			p_other_details.forth
--		end
--	end

--	copy_resource_description_org_authors(p_wrapper:RESOURCEDESCRIPTION_WRAPPER_GEN;p_authors:HASH_TABLE[STRING_8,STRING_8])
--	local
--		sd_item:STRINGDICTIONARYITEM_WRAPPER_GEN
--	do
--		from
--			p_authors.start
--		until
--			p_authors.after
--		loop
--			sd_item := p_wrapper.add_originalauthor
--			sd_item.set_value (p_authors.item_for_iteration)
--			sd_item.set_id (p_authors.key_for_iteration)
--			p_authors.forth
--		end
--	end

--	copy_resource_description_other_cont(p_wrapper:RESOURCEDESCRIPTION_WRAPPER_GEN;p_other_conts:ARRAYED_LIST[STRING_8])
--	do
--		from
--			p_other_conts.start
--		until
--			p_other_conts.after
--		loop
--			p_wrapper.add_othercontributors (p_other_conts.item_for_iteration)
--			p_other_conts.forth
--		end
--	end

--	copy_resource_description_otherdetails(p_wrapper:RESOURCEDESCRIPTION_WRAPPER_GEN;p_other_details:HASH_TABLE[STRING_8,STRING_8])
--	local
--		sd_item:STRINGDICTIONARYITEM_WRAPPER_GEN
--	do
--		from
--			p_other_details.start
--		until
--			p_other_details.after
--		loop
--			sd_item := p_wrapper.add_otherdetails
--			sd_item.set_value (p_other_details.item_for_iteration)
--			sd_item.set_id (p_other_details.key_for_iteration)
--			p_other_details.forth
--		end
--	end

	copy_authored_resource(p_wrapper:AUTHOREDRESOURCE_WRAPPER_GEN;p_resource:AUTHORED_RESOURCE)
	require
		p_not_null: p_wrapper /= void and p_resource /= void
	do
		--description
		if p_resource.description /= void then
			copy_description (p_wrapper.get_description, p_resource.description)
		end

		--iscontrolled
		if p_resource.is_controlled /= void then --TODO: CAN A BOOLEAN BE VOID IN EIFFEL?
			p_wrapper.set_iscontrolled (p_resource.is_controlled)
		end

		--original language
		if p_resource.original_language /= void then
			copy_code_phrase (p_wrapper.get_originallanguage, p_resource.original_language)
		end

		--revision history
		if p_resource.revision_history /= void then
			copy_revision_history(p_wrapper.get_revisionhistory,p_resource.revision_history)
		end

		--translations
		if p_resource.translations /= void then
			from
			p_resource.translations.start
			until
				p_resource.translations.after
			loop
				if p_resource.translations.item_for_iteration /= void then
					copy_translation_details (p_wrapper.add_translations, p_resource.translations.item_for_iteration)
				end

				p_resource.translations.forth
			end
		end

	end

	copy_revision_history(p_wrapper:REVISIONHISTORY_WRAPPER_GEN;p_history:REVISION_HISTORY)
	require
		p_not_null: p_wrapper /= void and p_history /= void
	do
		--items
		if p_history.items /= void then
			copy_revision_history_items(p_wrapper,p_history.items)
		end

	end

	copy_revision_history_items(p_wrapper:REVISIONHISTORY_WRAPPER_GEN;p_history_items:LIST[REVISION_HISTORY_ITEM])
	require
		p_not_null: p_wrapper /= void and p_history_items /= void
	local
		history_item:REVISIONHISTORYITEM_WRAPPER_GEN
	do
		from
			p_history_items.start
		until
			p_history_items.after
		loop
			history_item := p_wrapper.add_items
			--audits
			if p_history_items.item_for_iteration.audits /= void then
				copy_rev_history_item_audit_details(history_item,p_history_items.item_for_iteration)
			end

			--versionid
			if p_history_items.item_for_iteration.version_id /= void then
				copy_object_version_id(history_item.get_versionid, p_history_items.item_for_iteration.version_id)
			end

			p_history_items.forth
		end
	end

	copy_rev_history_item_audit_details(p_wrapper:REVISIONHISTORYITEM_WRAPPER_GEN;p_history_item:REVISION_HISTORY_ITEM)
	require
		p_not_null: p_wrapper /= void and p_history_item /= void
	local
		audit_details:AUDITDETAILS_WRAPPER_GEN
	do
		from
			p_history_item.audits.start
		until
			p_history_item.audits.after
		loop
			audit_details := p_wrapper.add_audits
			--audit_details fields
			--changetype
			if p_history_item.audits.item_for_iteration.change_type /= void then
				copy_dv_coded_text(audit_details.get_changetype,p_history_item.audits.item_for_iteration.change_type)
			end

			--committer
			if p_history_item.audits.item_for_iteration.committer /= void then
				copy_party_proxy(audit_details.get_committer,p_history_item.audits.item_for_iteration.committer)
			end

			--description
			if p_history_item.audits.item_for_iteration.description /= void then
				copy_dv_text(audit_details.get_description, p_history_item.audits.item_for_iteration.description)
			end

			--systemid
			if p_history_item.audits.item_for_iteration.system_id /= void then
				audit_details.set_systemid (p_history_item.audits.item_for_iteration.system_id)
			end

			--timecommitted
			if p_history_item.audits.item_for_iteration.time_committed /= void then
				copy_dv_datetime(audit_details.get_timecommitted, p_history_item.audits.item_for_iteration.time_committed)
			end


			p_history_item.audits.forth
		end
	end

	copy_dv_coded_text(p_wrapper:DVCODEDTEXT_WRAPPER_GEN;p_dv_coded_text:DV_CODED_TEXT)
	require
		p_not_null: p_wrapper /= void and p_dv_coded_text /= void
	do
		--definingcode
		if p_dv_coded_text.defining_code /= void then
			copy_code_phrase (p_wrapper.get_definingcode, p_dv_coded_text.defining_code)
		end

		--encoding
		if p_dv_coded_text.encoding /= void then
			copy_code_phrase (p_wrapper.get_encoding, p_dv_coded_text.encoding)
		end

		--formatting
		if p_dv_coded_text.formatting /= void then
			p_wrapper.set_formatting (p_dv_coded_text.formatting)
		end

		--hyperlink
		if p_dv_coded_text.hyperlink /= void then
			copy_dv_uri(p_wrapper.get_hyperlink,p_dv_coded_text.hyperlink)
		end

		--language
		if p_dv_coded_text.language /= void then
			copy_code_phrase (p_wrapper.get_language, p_dv_coded_text.language)
		end

		--mappings
		if p_dv_coded_text.mappings /= void then
			copy_dv_coded_text_mappings(p_wrapper,p_dv_coded_text.mappings)
		end

		--value
		if p_dv_coded_text.value /= void then
			p_wrapper.set_value (p_dv_coded_text.value)
		end

	end

	copy_dv_uri(p_wrapper:DVURI_WRAPPER_GEN;p_dv_uri:DV_URI)
	require
		p_not_null: p_wrapper /= void and p_dv_uri /= void
	do
		if p_dv_uri.value /= void then
			p_wrapper.set_value (p_dv_uri.value)
		end

	end

	copy_dv_coded_text_mappings(p_wrapper:DVCODEDTEXT_WRAPPER_GEN;p_mappings:LINKED_LIST[TERM_MAPPING])
	require
		p_not_null: p_wrapper /= void and p_mappings /= void
	local
		term_mapping:TERMMAPPING_WRAPPER_GEN
	do
		from
			p_mappings.start
		until
			p_mappings.after
		loop
			term_mapping := p_wrapper.add_mappings
			--term mapping fields
			--match
			if p_mappings.item_for_iteration.match /= void then
				term_mapping.set_match (p_mappings.item_for_iteration.match.out)
			end

			--purpose
			if p_mappings.item_for_iteration.purpose /= void then
				copy_dv_coded_text(term_mapping.purpose,p_mappings.item_for_iteration.purpose)
			end

			--target
			if p_mappings.item_for_iteration.target /= void then
				copy_code_phrase (term_mapping.get_target, p_mappings.item_for_iteration.target)
			end

			p_mappings.forth
		end

	end

	copy_dv_text_mappings(p_wrapper:DVTEXT_WRAPPER_GEN;p_mappings:LINKED_LIST[TERM_MAPPING])
	require
		p_not_null: p_wrapper /= void and p_mappings /= void
	local
		term_mapping:TERMMAPPING_WRAPPER_GEN
	do
		from
			p_mappings.start
		until
			p_mappings.after
		loop
			term_mapping := p_wrapper.add_mappings
			--term mapping fields
			--match
			if p_mappings.item_for_iteration.match /= void then
				term_mapping.set_match (p_mappings.item_for_iteration.match.out)
			end

			--purpose
			if p_mappings.item_for_iteration.purpose /= void then
				copy_dv_coded_text(term_mapping.purpose,p_mappings.item_for_iteration.purpose)
			end

			--target
			if p_mappings.item_for_iteration.target /= void then
				copy_code_phrase (term_mapping.get_target, p_mappings.item_for_iteration.target)
			end

			p_mappings.forth
		end

	end

	copy_party_proxy(p_wrapper:PARTYPROXYALTERNATIVES_WRAPPER_GEN;p_party_proxy:PARTY_PROXY)
	require
		p_not_null: p_wrapper /= void and p_party_proxy /= void
	do
		--perform operations based on the actual concrete type
		if attached {PARTY_IDENTIFIED} p_party_proxy as party_identified then
			copy_party_identified(p_wrapper.get_partyidentifiedfield,party_identified)
		elseif attached {PARTY_RELATED} p_party_proxy as party_related then
			--party related
			copy_party_related(p_wrapper.get_partyrelatedfield,party_related)
		elseif attached {PARTY_SELF} p_party_proxy as party_self then
			--party self
			copy_party_self(p_wrapper.get_partyselffield, party_self)
		end
	end

	copy_party_identified(p_wrapper:PARTYIDENTIFIED_WRAPPER_GEN;p_party_identified:PARTY_IDENTIFIED)
	require
		p_not_null: p_wrapper /= void and p_party_identified /= void
	do
		--external ref
		if p_party_identified.external_ref /= void then
			copy_party_ref(p_wrapper.get_externalref,p_party_identified.external_ref)
		end

		--identifiers
		if p_party_identified.identifiers /= void then
			copy_party_identified_identifiers(p_wrapper, p_party_identified.identifiers)
		end

		--name
		if p_party_identified.name /= void then
			p_wrapper.set_name (p_party_identified.name)
		end

	end

	copy_party_ref(p_wrapper:PARTYREF_WRAPPER_GEN;p_party_ref:PARTY_REF)
	require
		p_not_null: p_wrapper /= void and p_party_ref /= void
	do
		--id
		if p_party_ref.id /= void then
			copy_object_id(p_wrapper.get_id, p_party_ref.id)
		end

		--namespace
		if p_party_ref.namespace /= void then
			p_wrapper.set_namespace_ (p_party_ref.namespace)
		end

		--type
		if p_party_ref.type /= void then
			p_wrapper.set_type (p_party_ref.type)
		end
	end

	--TODO: TALK TO THOMAS BEALE: THE OBJECT ID HIEARARCHY DOES NOT SEEM TO MIMIC THE XSD TYPE HIEARARCHY!!
	copy_object_id(p_wrapper:OBJECTIDALTERNATIVES_WRAPPER_GEN;p_object_id:OBJECT_ID)
	require
		p_not_null: p_wrapper /= void and p_object_id /= void
	do
		if attached {ARCHETYPE_ID} p_object_id as  archetype_id then
			p_wrapper.get_archetypeidfield.set_value (archetype_id.value)
		elseif attached {TERMINOLOGY_ID} p_object_id as  terminology_id then
			p_wrapper.get_terminologyidfield.set_value (terminology_id.value)
		elseif attached {OBJECT_VERSION_ID} p_object_id as object_version_id then
			p_wrapper.get_objectversionidfield.set_value (object_version_id.value)
		elseif attached {TEMPLATE_ID} p_object_id as template_id then
			p_wrapper.get_objectversionidfield.set_value (template_id.value)
		elseif attached {HIER_OBJECT_ID} p_object_id as uid_based_id then
			p_wrapper.get_hierobjectidfield.set_value (uid_based_id.value)
		end
	end

	copy_party_identified_identifiers(p_wrapper:PARTYIDENTIFIED_WRAPPER_GEN; p_identifiers:LINKED_LIST[DV_IDENTIFIER])
	require
		p_not_null: p_wrapper /= void and p_identifiers /= void
	local
		dv_identifier:DVIDENTIFIER_WRAPPER_GEN
	do
		from
			p_identifiers.start
		until
			p_identifiers.after
		loop
			dv_identifier := p_wrapper.add_identifiers
			--issuer
			if p_identifiers.item_for_iteration.issuer /= void then
				dv_identifier.set_issuer (p_identifiers.item_for_iteration.issuer)
			end

			--assigner
			if p_identifiers.item_for_iteration.assigner /= void then
				dv_identifier.set_assigner (p_identifiers.item_for_iteration.assigner)
			end

			--id
			if p_identifiers.item_for_iteration.id /= void then
				dv_identifier.set_id (p_identifiers.item_for_iteration.id)
			end

			--type
			if p_identifiers.item_for_iteration.type /= void then
				dv_identifier.set_type (p_identifiers.item_for_iteration.type)
			end

			p_identifiers.forth
		end
	end

	copy_party_related(p_wrapper:PARTYRELATED_WRAPPER_GEN;p_party_related:PARTY_RELATED)
	require
		p_not_null: p_wrapper /= void and p_party_related /= void
	do
		--externalref
		if p_party_related.external_ref /= void then
			copy_party_ref(p_wrapper.get_externalref, p_party_related.external_ref)
		end

		--identifiers
		if p_party_related.identifiers /= void then
			copy_party_ref_identifiers(p_wrapper, p_party_related.identifiers)
		end

		--name
		if p_party_related.name /= void then
			p_wrapper.set_name (p_party_related.name)
		end

		--relationship
		if p_party_related.relationship /= void then
			copy_dv_coded_text (p_wrapper.relationship, p_party_related.relationship)
		end
	end

	copy_party_ref_identifiers(p_wrapper:PARTYRELATED_WRAPPER_GEN; p_identifiers:LINKED_LIST[DV_IDENTIFIER])
	require
		p_not_null: p_wrapper /= void and p_identifiers /= void
	local
		dv_identifier:DVIDENTIFIER_WRAPPER_GEN
	do
		from
			p_identifiers.start
		until
			p_identifiers.after
		loop
			dv_identifier := p_wrapper.add_identifiers
			--issuer
			if p_identifiers.item_for_iteration.issuer /= void then
				dv_identifier.set_issuer (p_identifiers.item_for_iteration.issuer)
			end

			--assigner
			if p_identifiers.item_for_iteration.assigner /= void then
				dv_identifier.set_assigner (p_identifiers.item_for_iteration.assigner)
			end

			--id
			if p_identifiers.item_for_iteration.id /= void then
				dv_identifier.set_id (p_identifiers.item_for_iteration.id)
			end

			--type
			if p_identifiers.item_for_iteration.type /= void then
				dv_identifier.set_type (p_identifiers.item_for_iteration.type)
			end

			p_identifiers.forth
		end
	end

	copy_party_self(p_wrapper:PARTYSELF_WRAPPER_GEN;p_party_self:PARTY_SELF)
	require
		p_not_null: p_wrapper /= void and p_party_self /= void
	do
		--externalref
		if p_party_self.external_ref /= void then
			copy_party_ref(p_wrapper.get_externalref, p_party_self.external_ref)
		end

	end

	copy_dv_text(p_wrapper:DVTEXT_WRAPPER_GEN; p_dv_text:DV_TEXT)
	require
		p_not_null:  p_wrapper /= void and p_dv_text /= void
	do
		--encoding
		if p_dv_text.encoding /= void then
			copy_code_phrase (p_wrapper.get_encoding, p_dv_text.encoding)
		end

		--formatting
		if p_dv_text.formatting /= void then
			p_wrapper.set_formatting (p_dv_text.formatting)
		end

		--hyperlink
		if p_dv_text.hyperlink /= void then
			copy_dv_uri(p_wrapper.get_hyperlink,p_dv_text.hyperlink)
		end

		--language
		if p_dv_text.language /= void then
			copy_code_phrase (p_wrapper.get_language, p_dv_text.language)
		end

		--mappings
		if p_dv_text.mappings /= void then
			copy_dv_text_mappings(p_wrapper,p_dv_text.mappings)
		end

		--value
		if p_dv_text.value /= void then
			p_wrapper.set_value (p_dv_text.value)
		end

	end

	copy_dv_datetime(p_wrapper:DVDATETIME_WRAPPER_GEN; p_dv_datetime:DV_DATE_TIME)
	require
		p_not_null: p_wrapper /= void and p_dv_datetime /= void
	do
		--accuracy
		if p_dv_datetime.accuracy /= void then
			copy_dv_duration(p_wrapper.get_accuracy, p_dv_datetime.accuracy)
		end

		--magnitude status
		if p_dv_datetime.magnitude_status /= void then
			p_wrapper.set_magnitudestatus (p_dv_datetime.magnitude_status)
		end

		--normal range
		if p_dv_datetime.normal_range /= void then
			copy_dv_interval (p_wrapper.get_normalrange, p_dv_datetime.normal_range)
		end

		--normal status
		if attached p_dv_datetime.normal_status  then
			copy_code_phrase(p_wrapper.get_normalstatus, p_dv_datetime.normal_status)
		end

		--otherreference ranges
		if p_dv_datetime.other_reference_ranges /= void then
			copy_dv_date_time_other_ref_ranges (p_wrapper, p_dv_datetime.other_reference_ranges)
		end

		--value
		if p_dv_datetime.value /= void then
			p_wrapper.set_value (p_dv_datetime.value)
		end
	end

	copy_dv_duration(p_wrapper:DVDURATION_WRAPPER_GEN;p_dv_duration:DV_DURATION)
	require
		p_not_null: p_wrapper /= void and p_dv_duration /= void
	do
		--accuracy
		if p_dv_duration.accuracy /= void then --TODO: CAN REAL VALUES BE NULL IN EIFFEL?
			p_wrapper.set_accuracy (p_dv_duration.accuracy.out)--TODO: FLOAT REPRESENTED AS STRING
		end

		--accuracyispercent
		if p_dv_duration.accuracy_is_percent /= void then
			p_wrapper.set_accuracyispercent (p_dv_duration.accuracy_is_percent)
		end

		--magnitudestatus
		if p_dv_duration.magnitude_status /= void then
			p_wrapper.set_magnitudestatus (p_dv_duration.magnitude_status)
		end

		--normalrange
		if p_dv_duration.normal_range /= void then
			copy_dv_interval(p_wrapper.get_normalrange, p_dv_duration.normal_range)
		end

		--normalstatus
		if attached p_dv_duration.normal_status then
			copy_code_phrase(p_wrapper.get_normalstatus,p_dv_duration.normal_status)
		end


		--otherreferenceranges
		if p_dv_duration.other_reference_ranges /= void then
			copy_dv_duration_other_ref_ranges(p_wrapper, p_dv_duration.other_reference_ranges)
		end

		--value
		if p_dv_duration.value /= void then
			p_wrapper.set_value (p_dv_duration.value)
		end

	end

	copy_dv_interval(p_wrapper:DVINTERVAL_WRAPPER_GEN; p_dv_interval:DV_INTERVAL[DV_ORDERED])--the generic parameter here is the most generic allowed (other than ANY)
	require
		p_not_null: p_wrapper /= void and p_dv_interval /= void
	do
		--lower
		if p_dv_interval.lower /= void then
			copy_dv_ordered(p_wrapper.get_lower, p_dv_interval.lower)
		end

		--lowerincluded
		if p_dv_interval.lower_included /= void then
			p_wrapper.set_lowerincluded (p_dv_interval.lower_included)
		end

		--upper
		if p_dv_interval.upper /= void then
			copy_dv_ordered(p_wrapper.get_upper, p_dv_interval.upper)
		end

		--upperincluded
		if p_dv_interval.upper_included /= void then
			p_wrapper.set_upperincluded (p_dv_interval.upper_included)
		end

		--lowerunbounded
		if p_dv_interval.lower_unbounded /= void then
			p_wrapper.set_lowerunbounded (p_dv_interval.lower_unbounded)
		end

		--upperunbounded
		if p_dv_interval.upper_unbounded /= void then
			p_wrapper.set_upperunbounded (p_dv_interval.upper_unbounded)
		end

	end

	copy_dv_ordered(p_wrapper:DVORDEREDALTERNATIVES_WRAPPER_GEN;p_dv_interval:DV_ORDERED)--DV_TEMPORAL IS AN ABSTRACT CLASS, THEEFORE ONLY ITS DESCENDANTS ARE USED BELOW
	require
		p_not_null: p_wrapper /= void and p_dv_interval /= void
	do
		if attached {DV_ORDINAL} p_dv_interval as dv_ordinal  then
			copy_dv_ordinal(p_wrapper.get_dvordinalfield,dv_ordinal)
		elseif attached {DV_AMOUNT} p_dv_interval as dv_amount then
			copy_dv_amount(p_wrapper.get_dvamountfield, dv_amount)
		elseif attached {DV_COUNT} p_dv_interval as dv_count  then
			copy_dv_count(p_wrapper.get_dvcountfield, dv_count)
		elseif attached {DV_DURATION} p_dv_interval as dv_duration  then
			copy_dv_duration(p_wrapper.get_dvdurationfield, dv_duration)
		elseif attached {DV_PROPORTION} p_dv_interval as dv_proportion  then
			copy_dv_proportion(p_wrapper.get_dvproportionfield, dv_proportion)
		elseif attached {DV_QUANTITY} p_dv_interval as dv_quantity  then
			copy_dv_quantity(p_wrapper.get_dvquantityfield, dv_quantity)
		elseif attached {DV_DATE} p_dv_interval as dv_date then
			copy_dv_date(p_wrapper.get_dvdatefield, dv_date)
		elseif attached {DV_DATE_TIME} p_dv_interval as dv_date_time  then
			copy_dv_date_time(p_wrapper.get_dvdatetimefield, dv_date_time)
		elseif attached {DV_TIME} p_dv_interval as dv_time then
			coyp_dv_time(p_wrapper.get_dvtimefield, dv_time)
		end
	end

	coyp_dv_time(p_wrapper:DVTIME_WRAPPER_GEN; p_dv_time:DV_TIME)
	require
		p_not_null: attached p_wrapper and attached p_dv_time
	do
		--accuracy
		if attached p_dv_time.accuracy as acc then
			copy_dv_duration (p_wrapper.get_accuracy, acc)
		end
		--magnitudestaus
		if attached p_dv_time.magnitude_status as ms then
			p_wrapper.set_magnitudestatus (ms)
		end
		--normalrange
		if attached p_dv_time.normal_range as nr then
			copy_dv_interval (p_wrapper.get_normalrange, nr)
		end

		if attached p_dv_time.normal_status as ns then
			copy_code_phrase (p_wrapper.get_normalstatus, ns)
		end

		--otherreferenceranges
		if attached p_dv_time.other_reference_ranges as orr then
			from
				orr.start
			until
				orr.after
			loop
				copy_reference_range_time(p_wrapper.add_otherreferenceranges, orr.item_for_iteration)
				orr.forth
			end
		end
		--value
		if attached p_dv_time.value as val then
			p_wrapper.set_value (val)
		end
	end

	copy_reference_range_time(p_wrapper:REFERENCERANGE_WRAPPER_GEN; p_ref_range: REFERENCE_RANGE[DV_TIME])
	require
		p_not_null: attached p_wrapper and attached p_ref_range
	do
		--meaning
		if attached p_ref_range.meaning as mn then
			copy_dv_text (p_wrapper.get_meaning, mn)
		end
		--range
		if attached p_ref_range.range as rr then
			copy_dv_interval (p_wrapper.get_range, rr)
		end
	end

	copy_dv_date(p_wrapper:DVDATE_WRAPPER_GEN; p_dv_date:DV_DATE)
	require
		p_not_null: attached p_wrapper and attached p_dv_date
	do
		--accuracy
		if attached p_dv_date.accuracy as acc then
			copy_dv_duration (p_wrapper.get_accuracy, acc)
		end
		--magnitudestatus
		if attached p_dv_date.magnitude_status as ms then
			p_wrapper.set_magnitudestatus (ms)
		end
		--normalrange
		if attached p_dv_date.normal_range as nr then
			copy_dv_interval (p_wrapper.get_normalrange, nr)
		end

		if attached p_dv_date.normal_status as ns then
			copy_code_phrase (p_wrapper.get_normalstatus, ns)
		end
		--otherreferenceranges
		if attached p_dv_date.other_reference_ranges as orr then
			from
				orr.start
			until
				orr.after
			loop
				copy_reference_range_dv_date (p_wrapper.add_otherreferenceranges, orr.item_for_iteration)
				orr.forth
			end
		end
		--value
		if attached p_dv_date.value as val then
			p_wrapper.set_value (val)
		end
	end

	copy_reference_range_dv_date (p_wrapper:REFERENCERANGE_WRAPPER_GEN; p_ref_r:REFERENCE_RANGE[DV_DATE])
	require
		p_not_null: attached p_wrapper and attached p_ref_r
	do

		if attached p_ref_r.meaning as mn then
			copy_dv_text (p_wrapper.get_meaning, mn)
		end
		--range
		if attached p_ref_r.range as range then
			copy_dv_interval (p_wrapper.get_range, range)
		end
	end

	copy_dv_quantity(p_wrapper:DVQUANTITY_WRAPPER_GEN; p_dv_quantity:DV_QUANTITY)
	require
		p_not_null: attached p_wrapper and attached p_dv_quantity
	do
		--accuracy
		if attached p_dv_quantity.accuracy as acc then
			p_wrapper.set_accuracy (acc.out)--TODO: REAL REPRESENTED AS STRING
		end
		--accuracyispercent
		if attached p_dv_quantity.accuracy_is_percent as aip then
			p_wrapper.set_accuracyispercent (aip)
		end
		--magnitude
		if attached p_dv_quantity.magnitude as  mag then
			p_wrapper.set_magnitude (mag.item.out) --TODO: REAL REPRESENTED AS STRING
		end
		--magnitudestatus
		if attached p_dv_quantity.magnitude_status as mags then
			p_wrapper.set_magnitudestatus (mags)
		end
		--normalrange
		if attached p_dv_quantity.normal_range as nr then
			copy_dv_interval (p_wrapper.get_normalrange, nr)
		end

		if attached p_dv_quantity.normal_status as ns then
			copy_code_phrase (p_wrapper.get_normalstatus, ns)
		end
		--otherreferenceranges
		if attached p_dv_quantity.other_reference_ranges as orr then
			from
				orr.start
			until
				orr.after
			loop
				copy_reference_range(p_wrapper.add_otherreferenceranges, orr.item_for_iteration)
				orr.forth
			end
		end
		--precision
		if attached p_dv_quantity.precision as p then
			p_wrapper.set_precision (p)
		end
		--units
		if attached p_dv_quantity.units as u then
			p_wrapper.set_units (u)
		end
	end

	copy_reference_range(p_wrapper:REFERENCERANGE_WRAPPER_GEN; p_ref_range:REFERENCE_RANGE[DV_QUANTITY])
	require
		p_not_null: attached p_wrapper and attached p_ref_range
	do
		--meaning
		if attached p_ref_range.meaning as mn then
			copy_dv_text (p_wrapper.get_meaning, mn)
		end
		--range
		if attached p_ref_range.range as range then
			copy_dv_interval (p_wrapper.get_range, range)
		end
	end

	copy_dv_ordinal(p_wrapper:DVORDINAL_WRAPPER_GEN; p_dv_ordinal:DV_ORDINAL)
	require
		p_not_null: p_wrapper /= void and p_dv_ordinal /= void
	do
		--normalrange
		if p_dv_ordinal.normal_range /= void then
			copy_dv_interval (p_wrapper.get_normalrange, p_dv_ordinal.normal_range)
		end


		--normalstatus
		if attached p_dv_ordinal.normal_status then
			copy_code_phrase (p_wrapper.get_normalstatus, p_dv_ordinal.normal_status)
		end

		--otherreferenceranges
		if p_dv_ordinal.other_reference_ranges /= void then
			copy_dv_ordinal_other_ref_ranges(p_wrapper,p_dv_ordinal.other_reference_ranges)
		end
	end

	copy_dv_ordinal_other_ref_ranges(p_wrapper:DVORDINAL_WRAPPER_GEN; p_reference_ranges:LINKED_LIST[REFERENCE_RANGE[DV_ORDINAL]])
	require
		p_not_null: p_wrapper /= void and p_reference_ranges /= void
	local
		ref_range:REFERENCERANGE_WRAPPER_GEN
	do
		from
			p_reference_ranges.start
		until
			p_reference_ranges.after
		loop
			ref_range := p_wrapper.add_otherreferenceranges
			--meaning
			copy_dv_text (ref_range.get_meaning, p_reference_ranges.item_for_iteration.meaning)
			if p_reference_ranges.item_for_iteration.meaning /= void then
				copy_dv_text (ref_range.get_meaning, p_reference_ranges.item_for_iteration.meaning)
			end

			--range
			if p_reference_ranges.item_for_iteration.range /= void then
				copy_dv_interval (ref_range.get_range, p_reference_ranges.item_for_iteration.range)
			end

			p_reference_ranges.forth
		end
	end

	copy_dv_date_time_other_ref_ranges(p_wrapper:DVDATETIME_WRAPPER_GEN; p_reference_ranges:LINKED_LIST[REFERENCE_RANGE[DV_DATE_TIME]])
	require
		p_not_null: p_wrapper /= void and p_reference_ranges /= void
	local
		ref_range:REFERENCERANGE_WRAPPER_GEN
	do
		from
			p_reference_ranges.start
		until
			p_reference_ranges.after
		loop
			ref_range := p_wrapper.add_otherreferenceranges
			--meaning			
			if p_reference_ranges.item_for_iteration.meaning /= void then
				copy_dv_text (ref_range.get_meaning, p_reference_ranges.item_for_iteration.meaning)
			end

			--range
			if p_reference_ranges.item_for_iteration.range /= void then
				copy_dv_interval (ref_range.get_range, p_reference_ranges.item_for_iteration.range)
			end

			p_reference_ranges.forth
		end
	end

--	get_dv_text_from_dv_coded_text(p_dv_coded_text:DV_CODED_TEXT):DV_TEXT
--	require
--		p_not_null: p_dv_coded_text /= void
--	do
--		create Result.make_from_canonical_string (p_dv_coded_text.as_canonical_string)
--	end

	copy_dv_amount(p_wrapper:DVAMOUNT_WRAPPER_GEN;p_dv_amount:DV_AMOUNT)
	require
		p_not_null: p_wrapper /= void and p_dv_amount /= void
	do
		--accuracy
		if p_dv_amount.accuracy /= void then
			p_wrapper.set_accuracy (p_dv_amount.accuracy.out)--TODO: FLOAT REPRESENTED AS STRING
		end

		--accuracyispercent
		if p_dv_amount.accuracy_is_percent /= void then
			p_wrapper.set_accuracyispercent (p_dv_amount.accuracy_is_percent)
		end

		--magnitudestatus
		if p_dv_amount.magnitude_status  /= void then
			p_wrapper.set_magnitudestatus (p_dv_amount.magnitude_status)
		end

		--normalrange
		if p_dv_amount.normal_range   /= void then
			copy_dv_interval (p_wrapper.get_normalrange, p_dv_amount.normal_range)
		end

		--normalstatus
		if attached p_dv_amount.normal_status then
			copy_code_phrase (p_wrapper.normalstatus, p_dv_amount.normal_status)
		end

		--otherreferenceranges	
		if p_dv_amount.other_reference_ranges /= void then
			copy_dv_amount_other_ref_ranges(p_wrapper,p_dv_amount.other_reference_ranges)
		end
	end

	copy_dv_amount_other_ref_ranges(p_wrapper:DVAMOUNT_WRAPPER_GEN; p_reference_ranges:LINKED_LIST[REFERENCE_RANGE[DV_AMOUNT]])
	require
		p_not_nul: p_wrapper /= void and p_reference_ranges /= void
	local
		ref_range:REFERENCERANGE_WRAPPER_GEN
	do
		from
			p_reference_ranges.start
		until
			p_reference_ranges.after
		loop
			ref_range := p_wrapper.add_otherreferenceranges

			if attached p_reference_ranges.item_for_iteration.meaning then
				copy_dv_text (ref_range.get_meaning, p_reference_ranges.item_for_iteration.meaning)
			end

			--range
			if p_reference_ranges.item_for_iteration.range /= void then
				copy_dv_interval (ref_range.get_range, p_reference_ranges.item_for_iteration.range)
			end

			p_reference_ranges.forth
		end
	end

	copy_dv_count(p_wrapper:DVCOUNT_WRAPPER_GEN;p_dv_count:DV_COUNT)
	require
		p_not_null: p_wrapper /= void and p_dv_count /= void
	do
		--accuracy
		if attached p_dv_count.accuracy as acc then
			p_wrapper.set_accuracy (acc.out) --TODO:  REAL REPRESENTED AS STRING
		end

		if attached p_dv_count.accuracy_is_percent as ip  then
			p_wrapper.set_accuracyispercent (ip)
		end

		--magnitude
		if p_dv_count.magnitude /= void then
			p_wrapper.set_magnitude (p_dv_count.magnitude)
		end

		--magnitudestatus
		if p_dv_count.magnitude_status /= void then
			p_wrapper.set_magnitudestatus (p_dv_count.magnitude_status)
		end

		--normalrange
		if p_dv_count.normal_range /= void then
			copy_dv_interval (p_wrapper.get_normalrange, p_dv_count.normal_range)
		end

		if attached p_dv_count.normal_status as ns then
			copy_code_phrase (p_wrapper.get_normalstatus, ns)
		end

		--otherreferenceranges
		if p_dv_count.other_reference_ranges /= void then
			copy_dv_count_other_ref_ranges(p_wrapper,p_dv_count.other_reference_ranges)
		end
	end

	copy_dv_count_other_ref_ranges(p_wrapper:DVCOUNT_WRAPPER_GEN; p_reference_ranges:LINKED_LIST[REFERENCE_RANGE[DV_COUNT]])
	require
		p_not_null: p_wrapper /= void and p_reference_ranges /= void
	local
		ref_range:REFERENCERANGE_WRAPPER_GEN
	do
		from
			p_reference_ranges.start
		until
			p_reference_ranges.after
		loop
			ref_range := p_wrapper.add_otherreferenceranges
			--meaning

			if p_reference_ranges.item.meaning /= void then
				copy_dv_text (ref_range.get_meaning, p_reference_ranges.item_for_iteration.meaning)
			end

			--range
			if p_reference_ranges.item_for_iteration.range /= void then
				copy_dv_interval (ref_range.get_range, p_reference_ranges.item_for_iteration.range)
			end

			p_reference_ranges.forth
		end
	end

	copy_dv_duration_other_ref_ranges(p_wrapper:DVDURATION_WRAPPER_GEN; p_reference_ranges:LINKED_LIST[REFERENCE_RANGE[DV_DURATION]])
	require
		p_not_null: p_wrapper /= void and p_reference_ranges /= void
	local
		ref_range:REFERENCERANGE_WRAPPER_GEN
	do
		from
			p_reference_ranges.start
		until
			p_reference_ranges.after
		loop
			ref_range := p_wrapper.add_otherreferenceranges
			--meaning
			if p_reference_ranges.item_for_iteration.meaning /= void then
				copy_dv_text (ref_range.get_meaning, p_reference_ranges.item_for_iteration.meaning)
			end

			--range
			if p_reference_ranges.item_for_iteration.range /= void then
				copy_dv_interval (ref_range.get_range, p_reference_ranges.item_for_iteration.range)
			end

			p_reference_ranges.forth
		end
	end

	copy_dv_proportion(p_wrapper:DVPROPORTION_WRAPPER_GEN; p_dv_proportion:DV_PROPORTION)
	require
		p_not_null: p_wrapper /= void and p_dv_proportion /= void
	do
		--accurracy
		if attached p_dv_proportion.accuracy as acc then
			p_wrapper.set_accuracy (acc.out) --TODO: REAL REPRESENTED AS STRING
		end

		if attached p_dv_proportion.accuracy_is_percent as aip then
			p_wrapper.set_accuracyispercent (aip)
		end

		--denominator
		if p_dv_proportion.denominator /= void then
			p_wrapper.set_denominator (p_dv_proportion.denominator.out)--TODO: real represented as string
		end

		--magnitudestatus
		if p_dv_proportion.magnitude_status /= void then
			p_wrapper.set_magnitudestatus (p_dv_proportion.magnitude_status)
		end

		--normalrange
		if p_dv_proportion.normal_range /= void then
			copy_dv_interval(p_wrapper.get_normalrange, p_dv_proportion.normal_range)
		end

		--normalstatus
		if attached p_dv_proportion.normal_status as ns then
		copy_code_phrase(p_wrapper.get_normalstatus, ns)
		end

		--numerator
		if p_dv_proportion.numerator /= void then
			p_wrapper.set_numerator (p_dv_proportion.numerator.out)--TODO: REAL REPRESENTED AS STRING
		end

		--otherreferenceranges
		if p_dv_proportion.other_reference_ranges /= void then
			copy_dv_proportion_other_ref_ranges(p_wrapper, p_dv_proportion.other_reference_ranges)
		end

		--precisision
		if attached p_dv_proportion.precision as prec then
			p_wrapper.set_precision (prec)
		end

		--type
		if p_dv_proportion.type /= void then
			p_wrapper.set_type (p_dv_proportion.type.out)--TODO: INTEGER REPRESENTED AS STRING
		end

	end

	copy_dv_proportion_other_ref_ranges(p_wrapper:DVPROPORTION_WRAPPER_GEN; p_reference_ranges:LINKED_LIST[REFERENCE_RANGE[DV_PROPORTION]])
	require
		p_not_null: p_wrapper /= void and p_reference_ranges /= void
	local
		ref_range:REFERENCERANGE_WRAPPER_GEN
	do
		from
			p_reference_ranges.start
		until
			p_reference_ranges.after
		loop
			ref_range := p_wrapper.add_otherreferenceranges
			--meaning
			if p_reference_ranges.item_for_iteration.meaning /= void then
				copy_dv_text (ref_range.get_meaning, p_reference_ranges.item_for_iteration.meaning)
			end

			--range
			if p_reference_ranges.item_for_iteration.range /= void then
				copy_dv_interval (ref_range.get_range, p_reference_ranges.item_for_iteration.range)
			end

			p_reference_ranges.forth
		end
	end

	copy_dv_date_time(p_wrapper:DVDATETIME_WRAPPER_GEN;p_dv_date_time:DV_DATE_TIME)
	require
		p_not_null: p_wrapper /= void and p_dv_date_time /= void
	do
		--accuracy
		if p_dv_date_time.accuracy /= void then
			copy_dv_duration (p_wrapper.accuracy, p_dv_date_time.accuracy)
		end

		--magnitudestatus
		if p_dv_date_time.magnitude_status /= void then
			p_wrapper.set_magnitudestatus (p_dv_date_time.magnitude_status)
		end

		--normalrange
		if p_dv_date_time.normal_range /= void then
			copy_dv_interval(p_wrapper.get_normalrange, p_dv_date_time.normal_range)
		end

		--otherrefranges
		if p_dv_date_time.other_reference_ranges /= void then
			copy_dv_date_time_other_ref_ranges (p_wrapper, p_dv_date_time.other_reference_ranges)
		end

		--value
		if p_dv_date_time.value /= void then
			p_wrapper.set_value (p_dv_date_time.value)
		end

	end

	copy_assertion(p_wrapper: ASSERTION_WRAPPER_GEN; p_assertion:ASSERTION)
	require
		p_not_null: p_wrapper /= void and p_assertion /= void
	do
		if p_assertion.expression /= void then
			copy_expr_item (p_wrapper.get_expression, p_assertion.expression)
		end

		if attached p_assertion.as_string then
			p_wrapper.set_stringexpression (p_assertion.as_string)
		end
		if attached p_assertion.tag then
			p_wrapper.set_tag (p_assertion.tag)
		end

	end

	copy_expr_item(p_wrapper:EXPRITEMALTERNATIVES_WRAPPER_GEN; p_operand: EXPR_ITEM  )
	--this is an EXPR_ITEM known to be a either an  EXPR_UNARY_OPERATOR OR EXPR_BINARY_OPERATOR so configure accordingly
	require
		p_not_null: p_wrapper /= void and p_operand /= void
	local
		c_string_wrapper : CSTRING_WRAPPER_GEN
		c_string_string_ser: STRING
		c_string_tagged_ser: STRING
		debug_file: RAW_FILE
		c_string_wrapper_byte_arr: POINTER
	do
		if attached {EXPR_UNARY_OPERATOR} p_operand as unary_op then
			p_wrapper.get_exprunaryoperatorfield.set_type (unary_op.type)
			p_wrapper.get_exprunaryoperatorfield.set_precedenceoverridden (unary_op.precedence_overridden)
			--operator of unary operator
			p_wrapper.get_exprunaryoperatorfield.set_operator_ (unary_op.operator.out)--TODO: BIG INT MUST BE HANDLED IN EIFFEL CODE GENERATOR (int to str conversion at the moment)
			--operand of unary operator may be unary, binary  or leaf. Recursion would handle it
			copy_expr_item(p_wrapper.get_exprunaryoperatorfield.get_operand, unary_op.operand)
		elseif attached {EXPR_BINARY_OPERATOR} p_operand as binary_op then
			p_wrapper.get_exprbinaryoperatorfield.set_type (binary_op.type)
			p_wrapper.get_exprbinaryoperatorfield.set_precedenceoverridden (binary_op.precedence_overridden)
			--operator of binary operator
			p_wrapper.get_exprbinaryoperatorfield.set_operator_ (binary_op.operator.out)--TODO: BIG INT MUST BE HANDLED IN EIFFEL CODE GENERATOR (int to str conversion at the moment)
			--left operand of binary operator
			copy_expr_item(p_wrapper.get_exprbinaryoperatorfield.get_leftoperand,binary_op.left_operand)
			--right operand of binary operator
			copy_expr_item(p_wrapper.get_exprbinaryoperatorfield.get_rightoperand,binary_op.right_operand)
		elseif attached {EXPR_LEAF} p_operand as leaf then
			if attached {STRING} leaf.item as string_leaf then
				p_wrapper.get_exprleaffield.get_item.set_typeinfo ("<STRING>")
				p_wrapper.get_exprleaffield.get_item.set_stringvalue (string_leaf)
			elseif attached {C_STRING} leaf.item as cstring_leaf then

				c_string_wrapper := get_standalone_cstring_wrapper
				copy_c_string (c_string_wrapper, cstring_leaf)
--				c_string_string_ser := c_string_wrapper.serialize_pb_object_to_string
--				c_string_tagged_ser := "<serialized_type:C_STRING>" + c_string_string_ser
				c_string_wrapper_byte_arr := c_string_wrapper.serialize_to_byte_array
				p_wrapper.get_exprleaffield.get_item.set_typeinfo ("<CSTRING>")
				p_wrapper.get_exprleaffield.get_item.set_msgdata (c_string_wrapper_byte_arr, c_string_wrapper.get_pb_object_size)


				c_string_wrapper := void --make sure that this is garbage collected asap
			else
				p_wrapper.get_exprleaffield.get_item.set_typeinfo ("<UNKNOWN>")
				--NO VALUE SET
			end
			p_wrapper.get_exprleaffield.set_referencetype (leaf.reference_type)
			p_wrapper.get_exprleaffield.set_type (leaf.type)
--			create debug_file.make_open_write ("c:\\tmp\\eiffelpbstring.txt")
--			debug_file.put_string (p_wrapper.get_exprleaffield.serialize_pb_object_to_string)
--			debug_file.close
		end
	end

	get_standalone_cstring_wrapper:CSTRING_WRAPPER_GEN
	do
		create Result.make
		Result.init_pb_obj
		Result.set_is_root_object (true)
	end

	copy_archetype_ontology(p_wrapper:ARCHETYPEONTOLOGY_WRAPPER_GEN;p_ontology:ARCHETYPE_ONTOLOGY)
	require
		p_not_null: p_wrapper /= void and p_ontology /= void
	local
		constraint_bindings: HASH_TABLE[ HASH_TABLE[URI,STRING_8], STRING_8]
		constraint_binding_set:CONSTRAINTBINDINGSET_WRAPPER_GEN
		constraint_binding_items: HASH_TABLE[URI,STRING_8]
		constraint_binding_item_wrapper:CONSTRAINTBINDINGITEM_WRAPPER_GEN

		constraint_definitions:HASH_TABLE[HASH_TABLE[ARCHETYPE_TERM,STRING_8], STRING_8]
		constraint_definitions_wrapper: CODEDEFINITIONSET_WRAPPER_GEN
		constraint_definition_item:HASH_TABLE[ARCHETYPE_TERM,STRING_8]
		constraint_definition_item_wrapper:ARCHETYPETERM_WRAPPER_GEN

		term_bindings:HASH_TABLE[HASH_TABLE[CODE_PHRASE,STRING_8], STRING_8]
		term_bindings_item:HASH_TABLE[CODE_PHRASE,STRING_8]
		term_bindings_wrapper:TERMBINDINGSET_WRAPPER_GEN
		term_bindings_item_wrapper:TERMBINDINGITEM_WRAPPER_GEN

		term_definitions:HASH_TABLE[HASH_TABLE[ARCHETYPE_TERM,STRING_8], STRING_8]
		term_definitions_wrapper: CODEDEFINITIONSET_WRAPPER_GEN
		term_definition_item:HASH_TABLE[ARCHETYPE_TERM,STRING_8]
		term_definition_item_wrapper:ARCHETYPETERM_WRAPPER_GEN

	do
		--constraintbindings
		constraint_bindings := p_ontology.constraint_bindings
		from
			constraint_bindings.start
		until
			constraint_bindings.after
		loop

			constraint_binding_set := p_wrapper.add_constraintbindings
			--terminology
			if attached constraint_bindings.item_for_iteration  and attached constraint_bindings.key_for_iteration then
				constraint_binding_set.set_terminology (constraint_bindings.item_for_iteration.key_for_iteration)--TODO: IS THIS THE TERMINOLOGY?
			end

			constraint_binding_items := constraint_bindings.item_for_iteration
			--items
			from
				constraint_binding_items.start
			until
				constraint_binding_items.after
			loop
				constraint_binding_item_wrapper := constraint_binding_set.add_items
				if attached constraint_binding_items.item_for_iteration and attached constraint_binding_items.key_for_iteration then
					constraint_binding_item_wrapper.set_value (constraint_binding_items.item_for_iteration.as_string)--TODO: DEBUG THIS POINT
					constraint_binding_item_wrapper.set_code (constraint_binding_items.key_for_iteration.out)
				end

				constraint_binding_items.forth
			end

			constraint_bindings.forth
		end
		--constraintdefinitions
		constraint_definitions := p_ontology.constraint_definitions
		from
			constraint_definitions.start
		until
			constraint_definitions.after
		loop
			constraint_definition_item := constraint_definitions.item_for_iteration
			constraint_definitions_wrapper := p_wrapper.add_constraintdefinitions
			--language
			if attached constraint_definitions.key_for_iteration then
				constraint_definitions_wrapper.set_language (constraint_definitions.key_for_iteration)--TODO: IS THIS THE LANGUAGE?
			end

			--items
			from
				constraint_definition_item.start
			until
				constraint_definition_item.after
			loop
				if attached constraint_definition_item.item_for_iteration then
					copy_archeype_term(constraint_definitions_wrapper.add_items, constraint_definition_item.item_for_iteration)
				end

				constraint_definition_item.forth
			end

			constraint_definitions.forth
		end
		--termbinding
		term_bindings := p_ontology.term_bindings
		from
			term_bindings.start
		until
			term_bindings.after
		loop
			term_bindings_item := term_bindings.item_for_iteration
			term_bindings_wrapper := p_wrapper.add_termbindings
			--terminology
			if attached term_bindings.key_for_iteration then
				term_bindings_wrapper.set_terminology (term_bindings.key_for_iteration)--TODO: IS THIS THE TERMINOLOGY?
			end

			--items
			from
				term_bindings_item.start
			until
				term_bindings_item.after
			loop
				term_bindings_item_wrapper := term_bindings_wrapper.add_items
				--value
				if attached term_bindings_item.item_for_iteration then
					copy_code_phrase (term_bindings_item_wrapper.get_value, term_bindings_item.item_for_iteration)
				end

				--code
				if attached term_bindings_item.key_for_iteration then
					term_bindings_item_wrapper.set_code (term_bindings_item.key_for_iteration)--TODO: IS THIS THE CODE?
				end

				term_bindings_item.forth
			end

			term_bindings.forth
		end
		--termdefinitions	
		term_definitions := p_ontology.term_definitions
		from
			term_definitions.start
		until
			term_definitions.after
		loop
			term_definition_item := term_definitions.item_for_iteration
			term_definitions_wrapper := p_wrapper.add_termdefinitions
			--language
			if attached term_definitions.key_for_iteration then
				term_definitions_wrapper.set_language (term_definitions.key_for_iteration)--TODO: IS THIS THE LANGUAGE?
			end

			--items
			from
				term_definition_item.start
			until
				term_definition_item.after
			loop
				if attached term_definition_item.item_for_iteration then
					copy_archeype_term(term_definitions_wrapper.add_items, term_definition_item.item_for_iteration)
				end

				term_definition_item.forth
			end

			term_definitions.forth
		end

	end

	copy_archeype_term(p_wrapper:ARCHETYPETERM_WRAPPER_GEN;p_archetype_term:ARCHETYPE_TERM)
	require
		p_not_null: p_wrapper /= void and p_archetype_term /= void
	local
		string_dict_item:STRINGDICTIONARYITEM_WRAPPER_GEN
	do
		--code
		if p_archetype_term.code /= void then
			p_wrapper.set_code (p_archetype_term.code)
		end

		--items
		from
--			p_archetype_term.items.start
			p_archetype_term.keys.start
		until
--			p_archetype_term.items.after
			p_archetype_term.keys.after
		loop
			string_dict_item  := p_wrapper.add_items
			if p_archetype_term.keys.item_for_iteration /= void and p_archetype_term.item (p_archetype_term.keys.item_for_iteration) /= void then
				string_dict_item.set_value (p_archetype_term.item (p_archetype_term.keys.item_for_iteration))
				string_dict_item.set_id (p_archetype_term.keys.item_for_iteration)
			end

--			p_archetype_term.items.forth
			p_archetype_term.keys.forth
		end
	end

	copy_translation_details(p_wrapper:TRANSLATIONDETAILS_WRAPPER_GEN;p_trans_details:TRANSLATION_DETAILS)
	require
		p_not_null: p_wrapper /= void and p_trans_details /= void
	local
		string_dict_item_wrapper: STRINGDICTIONARYITEM_WRAPPER_GEN
	do
		--language
		if p_trans_details.language /= void then
			copy_code_phrase (p_wrapper.get_language, p_trans_details.language)
		end

		--author
		from
			p_trans_details.author.start
		until
			p_trans_details.author.after
		loop
			string_dict_item_wrapper := p_wrapper.add_author
			if p_trans_details.author.item_for_iteration /= void and p_trans_details.author.key_for_iteration /= void then
				string_dict_item_wrapper.set_value (p_trans_details.author.item_for_iteration)
				string_dict_item_wrapper.set_id (p_trans_details.author.key_for_iteration)--TODO: IS THIS THE ID?
			end

			p_trans_details.author.forth
		end
		--accreditation
		if p_trans_details.accreditation /= void then
			p_wrapper.set_accreditation (p_trans_details.accreditation)
		end

		--otherdetails
		if p_trans_details.other_details /= void then
			from
			p_trans_details.other_details.start
			until
				p_trans_details.other_details.after
			loop
				string_dict_item_wrapper := p_wrapper.add_otherdetails
				if p_trans_details.other_details.key_for_iteration /= void and p_trans_details.other_details.item_for_iteration /= void then
					string_dict_item_wrapper.set_value (p_trans_details.other_details.item_for_iteration)
					string_dict_item_wrapper.set_id (p_trans_details.other_details.key_for_iteration) --TODO: IS THIS THE ID?
				end

				p_trans_details.other_details.forth
			end
		end
	end

	copy_object_version_id(p_wrapper:OBJECTVERSIONID_WRAPPER_GEN;p_object_vid:OBJECT_VERSION_ID)
	require
		p_not_null: p_wrapper /= void and p_object_vid /= void
	do
		if p_object_vid.value /= void then
			p_wrapper.set_value (p_object_vid.value)
		end
	end

	copy_c_primitive(p_wrapper:CPRIMITIVEALTERNATIVES_WRAPPER_GEN; p_c_primitive:C_PRIMITIVE)
	require
		p_not_null: attached p_wrapper and attached p_c_primitive
	do
		if attached {C_BOOLEAN} p_c_primitive as cboolean then
			copy_c_boolean(p_wrapper.get_cbooleanfield, cboolean)
		elseif attached {C_DATE} p_c_primitive as cdate then
			copy_c_date(p_wrapper.get_cdatefield, cdate)
		elseif attached {C_DATE_TIME} p_c_primitive as cdatetime then
			copy_c_date_time(p_wrapper.get_cdatetimefield, cdatetime)
		elseif attached {C_DURATION} p_c_primitive as cduration then
			copy_c_duration(p_wrapper.get_cdurationfield, cduration)
		elseif attached {C_INTEGER} p_c_primitive as cinteger then
			copy_c_integer(p_wrapper.get_cintegerfield, cinteger)
		elseif attached {C_REAL} p_c_primitive as creal then
			copy_c_real(p_wrapper.get_crealfield, creal)
		elseif attached {C_STRING} p_c_primitive as cstring then
			copy_c_string(p_wrapper.get_cstringfield, cstring)
		elseif attached {C_TIME} p_c_primitive as ctime then
			copy_c_time(p_wrapper.get_ctimefield, ctime)
		end
	end

	copy_c_time(p_wrapper:CTIME_WRAPPER_GEN; p_ctime:C_TIME)
	require
		p_not_null: attached p_wrapper and attached p_ctime
	do
		--assumedvalue
		if attached p_ctime.assumed_value as aval then
			p_wrapper.set_assumedvalue (aval.as_string) --TODO: TIME REPRESENTED AS STRING
		end
		--pattern
		if attached p_ctime.pattern as pat then
			p_wrapper.set_pattern(pat)
		end
		--range
		if attached p_ctime.range as range then
			copy_interval_of_time(p_wrapper.get_range, range)
		end
		--timezonevalidity --TODO: WHERE IS THIS VALUE IN EIFFEL IMPLEMENTATION?

	end

	copy_interval_of_time(p_wrapper:INTERVALOFTIME_WRAPPER_GEN; p_range:INTERVAL[ISO8601_TIME])
	require
		p_not_null: attached p_wrapper and attached p_range
	do
		--lower
		if attached p_range.lower as low then
			p_wrapper.set_lower (low.as_string) --TODO: TIME EXPRESSED AS STRING
		end
		--lowerincluded
		if attached p_range.lower_included as li then
			p_wrapper.set_lowerincluded (li)
		end
		--lowerunbounded
		if attached p_range.lower_unbounded as lu then
			p_wrapper.set_lowerunbounded (lu)
		end
		--upper
		if attached p_range.upper as up then
			p_wrapper.set_upper (up.as_string) --TODO: TIME EXPRESSED AS STRING
		end
		--upperincluded
		if attached p_range.upper_included as ui then
			p_wrapper.set_upperincluded (ui)
		end
		--upperunbounded
		if attached p_range.upper_unbounded as uu then
			p_wrapper.set_upperunbounded (uu)
		end

	end

	copy_c_string(p_wrapper:CSTRING_WRAPPER_GEN; p_cstring:C_STRING)
	require
		p_not_null: attached p_wrapper and attached p_cstring
	do
		--assumedvalue
		if attached p_cstring.assumed_value as aval then
			p_wrapper.set_assumedvalue (aval)
		end
		--list
		if attached p_cstring.strings as list then
			from
				list.start
			until
				list.after
			loop
				p_wrapper.add_list (list.item_for_iteration)
				list.forth
			end
		end
		--listopen
		if attached p_cstring.is_open as lio then--TODO: IS IS_OPEN THE FIELD FOR LIST_OPEN?? Ask T. BEALE
			p_wrapper.set_listopen (lio)
		end
		--pattern
		if attached p_cstring.regexp as pat then --TODO: IS REGEXP THE FIELD FOR PATTERN?
			p_wrapper.set_pattern (pat)
		end
	end


	copy_c_real(p_wrapper:CREAL_WRAPPER_GEN;p_creal:C_REAL)
	require
		p_not_null: attached p_wrapper and attached p_creal
	do
		--assumedvalue
		if attached p_creal.assumed_value as aval then
			p_wrapper.set_assumedvalue (aval.out)--TODO: REAL REPRESENTED AS STRING
		end
		--list
		if attached p_creal.list as li then
			from
				li.start
			until
				li.after
			loop
				p_wrapper.add_list (li.item_for_iteration.out) --TODO: REAL REPRESENTED AS STRING
				li.forth
			end
		end
		--range
		if attached p_creal.range as range then
			copy_interval_of_real(p_wrapper.get_range, range)
		end
	end

	copy_interval_of_real(p_wrapper:INTERVALOFREAL_WRAPPER_GEN;p_range:INTERVAL[REAL_32])
	require
		p_not_null: attached p_wrapper and attached p_range
	do
		--lower
		if attached p_range.lower as low then
			p_wrapper.set_lower (low.out) --TODO: REAL REPRESENTED AS STRING
		end
		--lowerincluded
		if attached p_range.lower_included as li then
			p_wrapper.set_lowerincluded (li)
		end
		--lowerunbounded
		if attached p_range.lower_unbounded as lunb then
			p_wrapper.set_lowerunbounded (lunb)
		end
		--upper
		if attached p_range.upper as up then
			p_wrapper.set_upper (up.out)--TODO: REAL REPRESENTED AS STRING
		end
		--upperincluded
		if attached p_range.upper_included as ui then
			p_wrapper.set_upperincluded (ui)
		end
		--upperunbounded
		if attached p_range.upper_unbounded as uu then
			p_wrapper.set_upperunbounded (uu)
		end
	end

	copy_c_integer(p_wrapper:CINTEGER_WRAPPER_GEN; p_cinteger:C_INTEGER)
	require
		p_not_null: attached p_wrapper and attached p_cinteger
	do
		--assumedvalue
		if attached p_cinteger.assumed_value as aval then
			p_wrapper.set_assumedvalue (aval.item)
		end
		--list
		if attached p_cinteger.list as li then
			from
				li.start
			until
				li.after
			loop
				p_wrapper.add_list (li.item_for_iteration.item)
				li.forth
			end
		end
		--range
		if attached p_cinteger.range as range then
			copy_interval_of_integer(p_wrapper.get_range, range)
		end
	end

	copy_interval_of_integer(p_wrapper:INTERVALOFINTEGER_WRAPPER_GEN;p_range:INTERVAL[INTEGER_32])
	require
		p_not_null: attached p_wrapper and attached p_range
	do
		--lower
		if attached p_range.lower as low then
			p_wrapper.set_lower (low.item)
		end
		--lowerincluded
		if attached p_range.lower_included as li then
			p_wrapper.set_lowerincluded (li)
		end
		--lowerunbounded
		if attached p_range.lower_unbounded as lu then
			p_wrapper.set_lowerunbounded (lu)
		end
		--upper
		if attached p_range.upper as upp then
			p_wrapper.set_upper (upp.item)
		end
		--upperincluded
		if attached p_range.upper_included as ui then
			p_wrapper.set_upperincluded (ui)
		end
		--upperunbounded
		if attached p_range.upper_unbounded as uu then
			p_wrapper.set_upperunbounded (uu)
		end
	end

	copy_c_duration(p_wrapper:CDURATION_WRAPPER_GEN; cduration:C_DURATION)
	require
		p_not_null: attached p_wrapper and attached cduration
	do
		--assumed value
		if attached cduration.assumed_value as aval then
			p_wrapper.set_assumedvalue (aval.as_string)--TODO: DURATION REPRESENTED AS STRING
		end
		--pattern
		if attached cduration.pattern as pat then
			p_wrapper.set_pattern (pat)
		end
		--range
		if attached cduration.range as range then
			copy_interval_of_duration(p_wrapper.get_range, range)
		end
	end

	copy_interval_of_duration(p_wrapper:INTERVALOFDURATION_WRAPPER_GEN; p_range:INTERVAL[ISO8601_DURATION])
	require
		p_not_null: attached p_wrapper and attached p_range
	do
		--lower
		if attached p_range.lower as low then
			p_wrapper.set_lower (low.as_string) --TODO: DURATION EXPRESSED AS STRING
		end
		--lowerincluded
		if attached p_range.lower_included as li then
			p_wrapper.set_lowerincluded (li)
		end
		--lowerunbounded
		if attached p_range.lower_unbounded as lu then
			p_wrapper.set_lowerunbounded (lu)
		end
		--upper
		if attached p_range.upper as up then
			p_wrapper.set_upper (up.as_string) --TODO: DURATION EXPRESSED AS STRING
		end
		--upperincluded
		if attached p_range.upper_included as uinc then
			p_wrapper.set_upperincluded (uinc)
		end
		--upperunbounded
		if attached p_range.upper_unbounded as uu then
			p_wrapper.set_upperunbounded (uu)
		end
	end

	copy_c_date_time(p_wrapper:CDATETIME_WRAPPER_GEN; p_cdatetime:C_DATE_TIME)
	require
		p_not_null: attached p_wrapper and attached p_cdatetime
	do
		--assumedvalue
		if attached p_cdatetime.assumed_value as aval then
			p_wrapper.set_assumedvalue (aval.as_string)--TODO: DATETIME REPRESENTED AS STRING
		end
		--pattern
		if attached p_cdatetime.pattern as pat then
			p_wrapper.set_pattern (pat)
		end
		--range
		if attached p_cdatetime.range as range then
			copy_c_date_time_interval(p_wrapper.get_range, range)
		end
		--timezonevalidity --TODO: WHERE IS THIS VALUE IN EIFFEL CODE??
	end

	copy_c_date_time_interval(p_wrapper:INTERVALOFDATETIME_WRAPPER_GEN; range:INTERVAL[ISO8601_DATE_TIME])
	require
		p_not_null: attached p_wrapper and attached range
	do
		--lower
		if attached range.lower as low then
			p_wrapper.set_lower (low.as_string) --TODO: DATETIME REPRESENTED AS STRING
		end
		--lowerincluded
		if attached range.lower_included as li then
			p_wrapper.set_lowerincluded (li)
		end
		--lowerunbounded
		if attached range.lower_unbounded as lu then
			p_wrapper.set_lowerunbounded (lu)
		end
		--upper
		if attached range.upper as up then
			p_wrapper.set_upper (up.as_string) --TODO: DATETIME REPRESENTED AS STRING
		end
		--upperincluded
		if attached range.upper_included as ui then
			p_wrapper.set_upperincluded (ui)
		end
		--upperunbounded
		if attached range.upper_unbounded as uu then
			p_wrapper.set_upperunbounded (uu)
		end
	end

	copy_c_boolean(p_wrapper:CBOOLEAN_WRAPPER_GEN; p_cboolean:C_BOOLEAN)
	require
		p_not_null: attached p_wrapper and attached p_cboolean
	do
			--assumedvalue
			if attached p_cboolean.assumed_value as aval then
				p_wrapper.set_assumedvalue (aval.item)
			end
			--falsevalid
			if attached p_cboolean.false_valid as fv then
				p_wrapper.set_falsevalid (fv)
			end
			--truevalid
			if attached p_cboolean.true_valid as tv then
				p_wrapper.set_truevalid (tv)
			end
	end

	copy_c_date(p_wrapper:CDATE_WRAPPER_GEN; p_cdate:C_DATE)
	require
		p_not_null: attached p_wrapper and attached p_cdate
	do
		--assumedvalue
		if attached p_cdate.assumed_value as aval then
			p_wrapper.set_assumedvalue ("value:" + aval.value + ";year:" + aval.year.out + ";month:" + aval.month.out + ";day:" + aval.day.out)
		end
		--pattern
		if attached p_cdate.pattern as pat then
			p_wrapper.set_pattern (pat)
		end
		--range
		if attached p_cdate.range as range then
			copy_interval_of_date(p_wrapper.get_range, range)
		end
		--timezonevalidity --TODO: TALK TO THOMAS BEALE: WHERE IS THIS VALUE IN THE EIFFEL IMPLEMENTATION?


	end

	copy_interval_of_date(p_wrapper:INTERVALOFDATE_WRAPPER_GEN; range:INTERVAL[ISO8601_DATE])
	do
		--lower
		if attached range.lower as lower then
			p_wrapper.set_lower (lower.as_string)--TODO: DATE REPRESENTED AS STRING
		end
		--lowerincluded
		if attached range.lower_included as li then
			p_wrapper.set_lowerincluded (li)
		end
		--lowerunbounded
		if attached range.lower_unbounded as lu then
			p_wrapper.set_lowerunbounded (lu)
		end
		--upper
		if attached range.upper as up then
			p_wrapper.set_upper (up.as_string)--TODO: DATE REPRESENTED AS STRING
		end
		--upperincluded
		if attached range.upper_included as ui then
			p_wrapper.set_upperincluded (ui)
		end
		--upperunbounded
		if attached range.upper_unbounded as uu then
			p_wrapper.set_upperunbounded (uu)
		end
	end

end