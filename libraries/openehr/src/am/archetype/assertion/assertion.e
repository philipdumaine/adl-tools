note
	component:   "openEHR ADL Tools"
	description: "ADL assertion"
	keywords:    "test, ADL"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2003- Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ASSERTION

inherit
	BASIC_DEFINITIONS

	OPERATOR_TYPES
		export
			{NONE} all
		end

	RULE_STATEMENT

create
	make, make_with_tag

feature -- Initialisation

	make (an_expr: EXPR_ITEM)
			-- make assertion with an expression and an optional tag
   		do
			expression := an_expr
			an_expr.set_parent (Current)
			type := op_type_boolean
		end

	make_with_tag (an_expr: EXPR_ITEM; a_tag: STRING)
			-- make assertion with an expression and an optional tag
		require
			Tag_valid: not a_tag.is_empty
   		do
			tag := a_tag
			expression := an_expr
			an_expr.set_parent (Current)
			type := op_type_boolean
		end

feature -- Access

	tag: detachable STRING
			-- tag name of assertion

	expression: EXPR_ITEM

	regex_constraint: detachable C_STRING
			-- extract regex from assertion of form:
			-- 'id matches {/regex/}'
		do
			if attached {EXPR_BINARY_OPERATOR} expression as bin_op and then bin_op.operator.value = op_matches and then
				attached {EXPR_LEAF} bin_op.right_operand as rhs and then
				attached {C_STRING} rhs.item as c_str
			then
				Result := c_str
			end
		end

feature -- Status Report

	matches_any: BOOLEAN
			-- True if the regex = {/.*/} i.e. matches anything
		do
			Result := attached regex_constraint as att_regex and then att_regex.is_matches_any_regex
		end

feature -- Output

	as_string: STRING
			-- generate string version
		do
			Result := expression.as_string
		end

feature -- Visitor

	enter_subtree (visitor: EXPR_VISITOR; depth: INTEGER)
			-- perform action at start of block for this node
		do
			visitor.start_assertion (Current, depth)
		end

	exit_subtree (visitor: EXPR_VISITOR; depth: INTEGER)
			-- perform action at end of block for this node
		do
			visitor.end_assertion (Current, depth)
		end

invariant
	Tag_valid: attached tag as att_tag implies not att_tag.is_empty

end


