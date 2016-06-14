note
	component:   "openEHR ADL Tools"
	description: "Constrainer type for instances of REAL"
	keywords:    "archetype, real"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2000- The openEHR Foundation <http://www.openEHR.org>"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class C_REAL

inherit
	C_ORDERED [REAL]
		redefine
			assumed_value, enter_subtree, exit_subtree, format_value
		end

create
	make, make_interval, make_value, make_value_list, default_create

feature -- Access

    assumed_value: detachable REAL_REF
            -- value to be assumed if none sent in data

feature -- Status Report

	valid_assumed_value (a_value: REAL_REF): BOOLEAN
		do
			Result := valid_value (a_value.item)
		end

feature -- Conversion

	format_value (a_val: REAL): STRING
		do
			Result := format_real (a_val)
		end

feature -- Visitor

	enter_subtree (visitor: C_VISITOR; depth: INTEGER)
			-- perform action at start of block for this node
		do
			precursor (visitor, depth)
			visitor.start_c_real (Current, depth)
		end

	exit_subtree (visitor: C_VISITOR; depth: INTEGER)
			-- perform action at end of block for this node
		do
			precursor (visitor, depth)
			visitor.end_c_real (Current, depth)
		end

end


