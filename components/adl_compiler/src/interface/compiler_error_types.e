note
	component:   "openEHR ADL Tools"
	description: "[
				 Types of compiler error generated by the archetype compiler.
				 ]"
	keywords:    "ADL"
	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2008 Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"



class COMPILER_ERROR_TYPES

feature -- Definitions

	Err_type_valid: INTEGER = 0
	Err_type_parse_error: INTEGER = 1
	Err_type_validity_error: INTEGER = 2
	Err_type_warning: INTEGER = 3

feature -- Access

	Err_type_names: HASH_TABLE [STRING, INTEGER]
			-- version of name suitable for screen display
		once
			create Result.make(0)
			Result.put("Parse errors", Err_type_parse_error)
			Result.put("Validity errors", Err_type_validity_error)
			Result.put("Warnings", Err_type_warning)
		end

	Err_type_keys: HASH_TABLE [STRING, INTEGER]
			-- version of name suitable for use as file name
		once
			create Result.make(0)
			Result.put("parse_errors", Err_type_parse_error)
			Result.put("validity_errors", Err_type_validity_error)
			Result.put("warnings", Err_type_warning)
		end

feature -- Status Report

	valid_err_type (i: INTEGER): BOOLEAN
			-- True if i is a valid error type
		do
			Result := i >= Err_type_valid and i <= Err_type_warning
		end

end

