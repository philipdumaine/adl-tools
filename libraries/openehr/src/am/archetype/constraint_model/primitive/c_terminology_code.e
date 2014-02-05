note
	component:   "openEHR ADL Tools"
	description: "[
					Constrainer type for instances of TERMINOLOGY_CODE. The primary expression of the
					constraint is in the property `tuple_constraint', and comes in 3 variations:
						* a single at-code
						* a single ac-code, representing a value-set that is defined in the archetype terminology
						* a list of at- and/or ac-codes, representing the possibilities of a tuple constraint
					The last possibility above is enabled by the merge_tuple routine, which enables the constraint
					of another single-valued C_TERMINOLOGY_CODE to be merged with the current one.
				 ]"
	keywords:    "archetype, terminology"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2000- The openEHR Foundation <http://www.openEHR.org>"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class C_TERMINOLOGY_CODE

inherit
	C_PRIMITIVE_OBJECT
		redefine
			default_create, constraint, assumed_value, c_equal, c_conforms_to, set_constraint,
			as_string
		end

	OPENEHR_DEFINITIONS
		undefine
			out, default_create
		end

create
	make, default_create

feature -- Initialisation

	default_create
		do
			precursor {C_PRIMITIVE_OBJECT}
			create constraint.make_empty
		end

feature -- Access

	constraint: STRING
			-- single at- or ac-code

	value_set_expanded: ARRAYED_LIST [STRING]
			-- effective value or value set of single constraint in tuple_constraint, mediated by terminology
			-- to expand an ac-code
		do
			if is_valid_constraint_code (constraint) then
				Result := value_set_extractor.item ([constraint])
			else
				create Result.make (0)
				Result.compare_objects
				Result.extend (constraint)
			end
		end

	prototype_value: TERMINOLOGY_CODE
		do
			create Result.make (Local_terminology_id, value_set_expanded.first)
		end

	assumed_value: detachable TERMINOLOGY_CODE

feature -- Status Report

	valid_value (a_value: TERMINOLOGY_CODE): BOOLEAN
			-- see if `a_value', which must be an at-code, is one of the allowed codes in the
			-- value set(s) of this constraint
		do
			if a_value.terminology_id.is_equal (Local_terminology_id) and is_valid_value_code (a_value.code_string) then
				Result := value_set_expanded.has (a_value.code_string)
			end
		end

	valid_assumed_value (a_value: TERMINOLOGY_CODE): BOOLEAN
			-- is `a_value' valid to be set as an assumed value for this object?
			-- True if `code' is an ac-code and `a_value' is an at-code. We don't check against
			-- `value_set_expanded' because it may not be constructed yet.
		do
			Result := a_value.terminology_id.is_equal (Local_terminology_id)
				and is_valid_constraint_code (constraint) and is_valid_value_code (a_value.code_string)
		end

feature -- Comparison

	c_equal (other: like Current): BOOLEAN
			-- True if this node is a subset of, or the same as `other'
		local
			this_vset, other_vset: like value_set_expanded
		do
			if precursor (other) then
				this_vset := value_set_expanded
				other_vset := other.value_set_expanded
				Result := this_vset.count = other_vset.count and then
					across value_set_expanded as vset_csr all other_vset.has (vset_csr.item) end
			end
		end

	c_conforms_to (other: like Current; rm_type_conformance_checker: FUNCTION [ANY, TUPLE [STRING, STRING], BOOLEAN]): BOOLEAN
			-- True if this node is a subset of, or the same as `other'
		do
			if precursor (other, rm_type_conformance_checker) then
				if is_valid_constraint_code (constraint) and is_valid_constraint_code (other.constraint) then
					Result := codes_conformant (constraint, other.constraint) and then
						is_list_subset (value_set_expanded, other.value_set_expanded)
				else
					Result := codes_conformant (constraint, other.constraint)
				end
			end
		end

feature {C_TERMINOLOGY_CODE, ARCHETYPE} -- Modification

	set_value_set_extractor (an_agent: attached like value_set_extractor)
		do
			value_set_extractor := an_agent
		end

feature {AOM_POST_PARSE_PROCESSOR} -- Modification

	set_code (a_code: STRING)
		do
			constraint := a_code
		end

	has_value_code (a_value_code: STRING): BOOLEAN
			-- True if this constraint object knows about the at-code `a_value_code'
		do
			Result := constraint.is_equal (a_value_code) or else (attached assumed_value as att_av and then att_av.code_string.is_equal (a_value_code))
		end

	replace_code (old_code, new_code: STRING)
		require
			has_value_code (old_code)
		do
			-- due to tuple constraints, there could be more than
			-- one occurrence of the old_code in the list
			if constraint.is_equal (old_code) then
				constraint := new_code
			end

			-- check the assumed code
			if attached assumed_value as att_av and then att_av.code_string.is_equal (old_code) then
				att_av.set_code_string (new_code)
			end
		end

feature {P_C_TERMINOLOGY_CODE} -- Modification

	set_constraint (a_constraint: STRING)
		do
			constraint := a_constraint
		end

feature -- Output

	as_string: STRING
			-- <precursor>
		do
			create Result.make(0)
			Result.append ("[")
			Result.append (precursor)
			Result.append ("]")
		end

	as_expanded_string: STRING
			-- output in form with "local::" prepended to `value_set_expanded'
		do
			create Result.make(0)
			Result.append ("[")

			Result.append (Local_terminology_id)
			Result.append (Terminology_separator)
			if not is_valid_constraint_code (constraint) then
				Result.append (constraint)
			else
				across value_set_expanded as vset_csr loop
					if not vset_csr.is_first then
						Result.append (", ")
					end
					Result.append (vset_csr.item)
				end
			end

			if attached assumed_value as av then
				Result.append ("; " + av.code_string)
			end
			Result.append ("]")
		end

feature {NONE} -- Implementation

	constraint_as_string: STRING
			-- generate `constraint' as string
		do
			Result := constraint
		end

	is_list_subset (list1, list2: ARRAYED_LIST [STRING]): BOOLEAN
			-- determine if list1 is a subset of list 2, even though they
			-- might contain duplicates
		local
			set1, set2: ARRAYED_SET [STRING]
		do
			create set1.make (0)
			set1.compare_objects
			set1.fill (list1)

			create set2.make (0)
			set2.compare_objects
			set2.fill (list2)

			Result := set1.is_subset (set2)
		end

	value_set_extractor: detachable FUNCTION [ANY, TUPLE [ac_code: STRING], ARRAYED_LIST [STRING]]
		note
			option: stable
		attribute
		end

end


