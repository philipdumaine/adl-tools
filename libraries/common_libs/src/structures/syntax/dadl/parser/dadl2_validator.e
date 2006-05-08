indexing
	component:   "openEHR Archetype Project"
	description: "Validating parser for Archetype Description Language (ADL)"
	keywords:    "ADL, dADL"
	
	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2004, 2005 Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"

class DADL2_VALIDATOR

inherit
	YY_PARSER_SKELETON
		rename
			make as make_parser_skeleton
		redefine
			report_error
		end

	DATE_TIME_ROUTINES
		export
			{NONE} all
		end

	DADL_SCANNER
		rename
			make as make_eiffel_scanner
		end

	KL_SHARED_EXCEPTIONS
	KL_SHARED_ARGUMENTS

creation
	make


feature {NONE} -- Implementation

	yy_build_parser_tables is
			-- Build parser tables.
		do
			yytranslate := yytranslate_template
			yyr1 := yyr1_template
			yytypes1 := yytypes1_template
			yytypes2 := yytypes2_template
			yydefact := yydefact_template
			yydefgoto := yydefgoto_template
			yypact := yypact_template
			yypgoto := yypgoto_template
			yytable := yytable_template
			yycheck := yycheck_template
		end

	yy_create_value_stacks is
			-- Create value stacks.
		do
		end

	yy_init_value_stacks is
			-- Initialize value stacks.
		do
			yyvsp1 := -1
			yyvsp2 := -1
			yyvsp3 := -1
			yyvsp4 := -1
			yyvsp5 := -1
			yyvsp6 := -1
			yyvsp7 := -1
			yyvsp8 := -1
			yyvsp9 := -1
			yyvsp10 := -1
			yyvsp11 := -1
			yyvsp12 := -1
			yyvsp13 := -1
			yyvsp14 := -1
			yyvsp15 := -1
			yyvsp16 := -1
			yyvsp17 := -1
			yyvsp18 := -1
			yyvsp19 := -1
			yyvsp20 := -1
			yyvsp21 := -1
			yyvsp22 := -1
			yyvsp23 := -1
			yyvsp24 := -1
			yyvsp25 := -1
			yyvsp26 := -1
			yyvsp27 := -1
			yyvsp28 := -1
			yyvsp29 := -1
			yyvsp30 := -1
			yyvsp31 := -1
			yyvsp32 := -1
			yyvsp33 := -1
			yyvsp34 := -1
			yyvsp35 := -1
			yyvsp36 := -1
			yyvsp37 := -1
		end

	yy_clear_value_stacks is
			-- Clear objects in semantic value stacks so that
			-- they can be collected by the garbage collector.
		do
			if yyvs1 /= Void then
				yyvs1.clear_all
			end
			if yyvs2 /= Void then
				yyvs2.clear_all
			end
			if yyvs3 /= Void then
				yyvs3.clear_all
			end
			if yyvs4 /= Void then
				yyvs4.clear_all
			end
			if yyvs5 /= Void then
				yyvs5.clear_all
			end
			if yyvs6 /= Void then
				yyvs6.clear_all
			end
			if yyvs7 /= Void then
				yyvs7.clear_all
			end
			if yyvs8 /= Void then
				yyvs8.clear_all
			end
			if yyvs9 /= Void then
				yyvs9.clear_all
			end
			if yyvs10 /= Void then
				yyvs10.clear_all
			end
			if yyvs11 /= Void then
				yyvs11.clear_all
			end
			if yyvs12 /= Void then
				yyvs12.clear_all
			end
			if yyvs13 /= Void then
				yyvs13.clear_all
			end
			if yyvs14 /= Void then
				yyvs14.clear_all
			end
			if yyvs15 /= Void then
				yyvs15.clear_all
			end
			if yyvs16 /= Void then
				yyvs16.clear_all
			end
			if yyvs17 /= Void then
				yyvs17.clear_all
			end
			if yyvs18 /= Void then
				yyvs18.clear_all
			end
			if yyvs19 /= Void then
				yyvs19.clear_all
			end
			if yyvs20 /= Void then
				yyvs20.clear_all
			end
			if yyvs21 /= Void then
				yyvs21.clear_all
			end
			if yyvs22 /= Void then
				yyvs22.clear_all
			end
			if yyvs23 /= Void then
				yyvs23.clear_all
			end
			if yyvs24 /= Void then
				yyvs24.clear_all
			end
			if yyvs25 /= Void then
				yyvs25.clear_all
			end
			if yyvs26 /= Void then
				yyvs26.clear_all
			end
			if yyvs27 /= Void then
				yyvs27.clear_all
			end
			if yyvs28 /= Void then
				yyvs28.clear_all
			end
			if yyvs29 /= Void then
				yyvs29.clear_all
			end
			if yyvs30 /= Void then
				yyvs30.clear_all
			end
			if yyvs31 /= Void then
				yyvs31.clear_all
			end
			if yyvs32 /= Void then
				yyvs32.clear_all
			end
			if yyvs33 /= Void then
				yyvs33.clear_all
			end
			if yyvs34 /= Void then
				yyvs34.clear_all
			end
			if yyvs35 /= Void then
				yyvs35.clear_all
			end
			if yyvs36 /= Void then
				yyvs36.clear_all
			end
			if yyvs37 /= Void then
				yyvs37.clear_all
			end
		end

	yy_push_last_value (yychar1: INTEGER) is
			-- Push semantic value associated with token `last_token'
			-- (with internal id `yychar1') on top of corresponding
			-- value stack.
		do
			inspect yytypes2.item (yychar1)
			when 1 then
				yyvsp1 := yyvsp1 + 1
				if yyvsp1 >= yyvsc1 then
					if yyvs1 = Void then
						debug ("GEYACC")
							std.error.put_line ("Create yyvs1")
						end
						create yyspecial_routines1
						yyvsc1 := yyInitial_yyvs_size
						yyvs1 := yyspecial_routines1.make (yyvsc1)
					else
						debug ("GEYACC")
							std.error.put_line ("Resize yyvs1")
						end
						yyvsc1 := yyvsc1 + yyInitial_yyvs_size
						yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
					end
				end
				yyvs1.put (last_any_value, yyvsp1)
			when 2 then
				yyvsp2 := yyvsp2 + 1
				if yyvsp2 >= yyvsc2 then
					if yyvs2 = Void then
						debug ("GEYACC")
							std.error.put_line ("Create yyvs2")
						end
						create yyspecial_routines2
						yyvsc2 := yyInitial_yyvs_size
						yyvs2 := yyspecial_routines2.make (yyvsc2)
					else
						debug ("GEYACC")
							std.error.put_line ("Resize yyvs2")
						end
						yyvsc2 := yyvsc2 + yyInitial_yyvs_size
						yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
					end
				end
				yyvs2.put (last_integer_value, yyvsp2)
			when 3 then
				yyvsp3 := yyvsp3 + 1
				if yyvsp3 >= yyvsc3 then
					if yyvs3 = Void then
						debug ("GEYACC")
							std.error.put_line ("Create yyvs3")
						end
						create yyspecial_routines3
						yyvsc3 := yyInitial_yyvs_size
						yyvs3 := yyspecial_routines3.make (yyvsc3)
					else
						debug ("GEYACC")
							std.error.put_line ("Resize yyvs3")
						end
						yyvsc3 := yyvsc3 + yyInitial_yyvs_size
						yyvs3 := yyspecial_routines3.resize (yyvs3, yyvsc3)
					end
				end
				yyvs3.put (last_real_value, yyvsp3)
			when 4 then
				yyvsp4 := yyvsp4 + 1
				if yyvsp4 >= yyvsc4 then
					if yyvs4 = Void then
						debug ("GEYACC")
							std.error.put_line ("Create yyvs4")
						end
						create yyspecial_routines4
						yyvsc4 := yyInitial_yyvs_size
						yyvs4 := yyspecial_routines4.make (yyvsc4)
					else
						debug ("GEYACC")
							std.error.put_line ("Resize yyvs4")
						end
						yyvsc4 := yyvsc4 + yyInitial_yyvs_size
						yyvs4 := yyspecial_routines4.resize (yyvs4, yyvsc4)
					end
				end
				yyvs4.put (last_string_value, yyvsp4)
			when 5 then
				yyvsp5 := yyvsp5 + 1
				if yyvsp5 >= yyvsc5 then
					if yyvs5 = Void then
						debug ("GEYACC")
							std.error.put_line ("Create yyvs5")
						end
						create yyspecial_routines5
						yyvsc5 := yyInitial_yyvs_size
						yyvs5 := yyspecial_routines5.make (yyvsc5)
					else
						debug ("GEYACC")
							std.error.put_line ("Resize yyvs5")
						end
						yyvsc5 := yyvsc5 + yyInitial_yyvs_size
						yyvs5 := yyspecial_routines5.resize (yyvs5, yyvsc5)
					end
				end
				yyvs5.put (last_character_value, yyvsp5)
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: not a token type: ")
					std.error.put_integer (yytypes2.item (yychar1))
					std.error.put_new_line
				end
				abort
			end
		end

	yy_push_error_value is
			-- Push semantic value associated with token 'error'
			-- on top of corresponding value stack.
		local
			yyval1: ANY
		do
			yyvsp1 := yyvsp1 + 1
			if yyvsp1 >= yyvsc1 then
				if yyvs1 = Void then
					debug ("GEYACC")
						std.error.put_line ("Create yyvs1")
					end
					create yyspecial_routines1
					yyvsc1 := yyInitial_yyvs_size
					yyvs1 := yyspecial_routines1.make (yyvsc1)
				else
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs1")
					end
					yyvsc1 := yyvsc1 + yyInitial_yyvs_size
					yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
				end
			end
			yyvs1.put (yyval1, yyvsp1)
		end

	yy_pop_last_value (yystate: INTEGER) is
			-- Pop semantic value from stack when in state `yystate'.
		local
			yy_type_id: INTEGER
		do
			yy_type_id := yytypes1.item (yystate)
			inspect yy_type_id
			when 1 then
				yyvsp1 := yyvsp1 - 1
			when 2 then
				yyvsp2 := yyvsp2 - 1
			when 3 then
				yyvsp3 := yyvsp3 - 1
			when 4 then
				yyvsp4 := yyvsp4 - 1
			when 5 then
				yyvsp5 := yyvsp5 - 1
			when 6 then
				yyvsp6 := yyvsp6 - 1
			when 7 then
				yyvsp7 := yyvsp7 - 1
			when 8 then
				yyvsp8 := yyvsp8 - 1
			when 9 then
				yyvsp9 := yyvsp9 - 1
			when 10 then
				yyvsp10 := yyvsp10 - 1
			when 11 then
				yyvsp11 := yyvsp11 - 1
			when 12 then
				yyvsp12 := yyvsp12 - 1
			when 13 then
				yyvsp13 := yyvsp13 - 1
			when 14 then
				yyvsp14 := yyvsp14 - 1
			when 15 then
				yyvsp15 := yyvsp15 - 1
			when 16 then
				yyvsp16 := yyvsp16 - 1
			when 17 then
				yyvsp17 := yyvsp17 - 1
			when 18 then
				yyvsp18 := yyvsp18 - 1
			when 19 then
				yyvsp19 := yyvsp19 - 1
			when 20 then
				yyvsp20 := yyvsp20 - 1
			when 21 then
				yyvsp21 := yyvsp21 - 1
			when 22 then
				yyvsp22 := yyvsp22 - 1
			when 23 then
				yyvsp23 := yyvsp23 - 1
			when 24 then
				yyvsp24 := yyvsp24 - 1
			when 25 then
				yyvsp25 := yyvsp25 - 1
			when 26 then
				yyvsp26 := yyvsp26 - 1
			when 27 then
				yyvsp27 := yyvsp27 - 1
			when 28 then
				yyvsp28 := yyvsp28 - 1
			when 29 then
				yyvsp29 := yyvsp29 - 1
			when 30 then
				yyvsp30 := yyvsp30 - 1
			when 31 then
				yyvsp31 := yyvsp31 - 1
			when 32 then
				yyvsp32 := yyvsp32 - 1
			when 33 then
				yyvsp33 := yyvsp33 - 1
			when 34 then
				yyvsp34 := yyvsp34 - 1
			when 35 then
				yyvsp35 := yyvsp35 - 1
			when 36 then
				yyvsp36 := yyvsp36 - 1
			when 37 then
				yyvsp37 := yyvsp37 - 1
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown type id: ")
					std.error.put_integer (yy_type_id)
					std.error.put_new_line
				end
				abort
			end
		end

feature {NONE} -- Semantic actions

	yy_do_action (yy_act: INTEGER) is
			-- Execute semantic action.
		local
			yyval1: ANY
			yyval13: DT_COMPLEX_OBJECT_NODE
			yyval14: DT_OBJECT_LEAF
			yyval29: ARRAYED_LIST [ANY]
			yyval37: OE_INTERVAL [PART_COMPARABLE]
			yyval15: ARRAYED_LIST [STRING]
			yyval2: INTEGER
			yyval17: ARRAYED_LIST [INTEGER_REF]
			yyval30: OE_INTERVAL [INTEGER_REF]
			yyval3: REAL
			yyval19: ARRAYED_LIST [REAL_REF]
			yyval31: OE_INTERVAL [REAL_REF]
			yyval6: BOOLEAN
			yyval23: ARRAYED_LIST [BOOLEAN_REF]
			yyval5: CHARACTER
			yyval21: ARRAYED_LIST [CHARACTER_REF]
			yyval7: ISO8601_DATE
			yyval24: ARRAYED_LIST [ISO8601_DATE]
			yyval33: OE_INTERVAL [ISO8601_DATE]
			yyval9: ISO8601_TIME
			yyval25: ARRAYED_LIST [ISO8601_TIME]
			yyval32: OE_INTERVAL [ISO8601_TIME]
			yyval8: ISO8601_DATE_TIME
			yyval26: ARRAYED_LIST [ISO8601_DATE_TIME]
			yyval34: OE_INTERVAL [ISO8601_DATE_TIME]
			yyval10: ISO8601_DURATION
			yyval27: ARRAYED_LIST [ISO8601_DURATION]
			yyval35: OE_INTERVAL [ISO8601_DURATION]
			yyval11: CODE_PHRASE
			yyval28: ARRAYED_LIST [CODE_PHRASE]
			yyval12: URI
		do
			inspect yy_act
when 1 then
--|#line 103 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 103")
end

			output := complex_object_nodes.item
			debug("dADL_parse")
				io.put_string("Object data definition validated (non-delimited)%N")
			end
			accept
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvs1.put (yyval1, yyvsp1)
end
when 2 then
--|#line 111 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 111")
end

			output := yyvs13.item (yyvsp13)
			debug("dADL_parse")
				io.put_string("Object data definition validated%N")
			end
			accept
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 3 then
--|#line 119 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 119")
end

			debug("dADL_parse")
				io.put_string("dADL text NOT validated%N")
			end
			abort
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvs1.put (yyval1, yyvsp1)
end
when 4 then
--|#line 131 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 131")
end

			debug("dADL_parse")
				io.put_string(indent + "attr_val complete%N")
			end
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvs1.put (yyval1, yyvsp1)
end
when 5 then
--|#line 137 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 137")
end

			debug("dADL_parse")
				io.put_string(indent + "attr_val complete%N")
			end
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs1.put (yyval1, yyvsp1)
end
when 6 then
--|#line 143 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 143")
end

			debug("dADL_parse")
				io.put_string(indent + "attr_val complete%N")
			end
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyvs1.put (yyval1, yyvsp1)
end
when 7 then
--|#line 152 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 152")
end

			debug("dADL_parse")
				io.put_string(indent + "attr_val: POP attr node (" +  attr_nodes.item.rm_attr_name+ ")%N")
				indent.remove_tail(1)
			end
			attr_nodes.remove
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyvs1.put (yyval1, yyvsp1)
end
when 8 then
--|#line 162 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 162")
end

			-- create first anonymous object
			if complex_object_nodes.is_empty then
				debug("dADL_parse")
					io.put_string(indent + "attr_id: create complex_object_node.make_anonymous%N")
					io.put_string(indent + "attr_id: PUSH Object node%N")
					indent.append("%T")
				end
				create complex_object_node.make_anonymous
				complex_object_nodes.extend(complex_object_node)
			end

			debug("dADL_parse")
				io.put_string(indent + "attr_id: create_attr_node.make_single(<<" + yyvs4.item (yyvsp4) + ">>)%N")
			end
			create attr_node.make_single(yyvs4.item (yyvsp4))

			debug("dADL_parse")
				io.put_string(indent + "attr_id: complex_object_nodes.item(" + complex_object_nodes.item.node_id + 
						").put_attribute(" + attr_node.rm_attr_name + ")%N")
			end
			if not complex_object_nodes.item.has_attribute(attr_node.rm_attr_name) then
				complex_object_nodes.item.put_attribute(attr_node)
			else
				raise_error
				report_error("Duplicate relationship: " + attr_node.rm_attr_name)
				abort
			end

			debug("dADL_parse")
				io.put_string(indent + "attr_id: PUSH attr node%N")
				indent.append("%T")
			end
			attr_nodes.extend(attr_node)
			obj_id := Void
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp4 := yyvsp4 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 9 then
--|#line 199 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 199")
end

			raise_error
			report_error("Error in attribute value")
			abort
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 2
	yyvsp4 := yyvsp4 -1
	yyvs1.put (yyval1, yyvsp1)
end
when 10 then
--|#line 210 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 210")
end


if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 11 then
--|#line 211 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 211")
end


if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp14 := yyvsp14 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 12 then
--|#line 214 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 214")
end

			yyval13 := yyvs13.item (yyvsp13)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvs13.put (yyval13, yyvsp13)
end
when 13 then
--|#line 218 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 218")
end

			yyval13 := yyvs13.item (yyvsp13)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvs13.put (yyval13, yyvsp13)
end
when 14 then
--|#line 227 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 227")
end

			yyval13 := yyvs13.item (yyvsp13)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvs13.put (yyval13, yyvsp13)
end
when 15 then
--|#line 231 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 231")
end

			-- probably should set type name on owning attribute - it doesn't belong on each 
			-- object, since it is essentially a constraint
			yyval13 := yyvs13.item (yyvsp13)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 2
	yyvsp4 := yyvsp4 -1
	yyvs13.put (yyval13, yyvsp13)
end
when 16 then
--|#line 247 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 247")
end

			if complex_object_nodes.item.is_addressable and attr_nodes.item.is_generic then
				-- pop the generic attr node
				debug("dADL_parse")
					io.put_string(indent + "multiple_attr_object_block: POP attr node (" +  attr_nodes.item.rm_attr_name+ ")%N")
					indent.remove_tail(1)
				end
				attr_nodes.remove

				debug("dADL_parse")
					io.put_string(indent + "multiple_attr_object_block: POP Object node(" + complex_object_nodes.item.node_id + ")%N")
					indent.remove_tail(1)
				end
				yyval13 := complex_object_nodes.item
				complex_object_nodes.remove
			end
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp13 := yyvsp13 + 1
	yyvsp1 := yyvsp1 -3
	if yyvsp13 >= yyvsc13 then
		if yyvs13 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs13")
			end
			create yyspecial_routines13
			yyvsc13 := yyInitial_yyvs_size
			yyvs13 := yyspecial_routines13.make (yyvsc13)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs13")
			end
			yyvsc13 := yyvsc13 + yyInitial_yyvs_size
			yyvs13 := yyspecial_routines13.resize (yyvs13, yyvsc13)
		end
	end
	yyvs13.put (yyval13, yyvsp13)
end
when 17 then
--|#line 267 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 267")
end

			if obj_id /= Void then
				-- we are in a multi-block which is the value of a keyed object
				-- so create the object with the key id
				create complex_object_node.make_identified(obj_id)
				if not attr_nodes.item.has_child(complex_object_node.node_id) then
					debug("dADL_parse")
						io.put_string(indent + "multiple_attr_object_block_head; attr_nodes(<<" + 
							attr_nodes.item.rm_attr_name + ">>).item.put_child(complex_object_node(" + 
							complex_object_node.node_id + "))%N")
					end
					attr_nodes.item.put_child(complex_object_node)
				else
					raise_error
					report_error("Key must be unique; key [" + complex_object_node.node_id 
							+ "] already exists under attribute %"" + attr_nodes.item.rm_attr_name + "%"")
					abort
				end

				debug("dADL_parse")
					io.put_string(indent + "multiple_attr_object_block_head: PUSH Obj node%N")
					indent.append("%T")
				end
				complex_object_nodes.extend(complex_object_node)

				-- now create a generic attribute node to stand for the hidden attribute of the 
				-- generic object, e.g. it might be List<T>.items or whatever
				debug("dADL_parse")
					io.put_string(indent + "multiple_attr_object_block_head: create_attr_node.make_multiple_generic%N")
				end
				create attr_node.make_multiple_generic

				debug("dADL_parse")
					io.put_string(indent + "multiple_attr_object_block_head: complex_object_node(" + 
							complex_object_node.node_id + ").put_attribute(" + attr_node.rm_attr_name + ")%N")
				end
				if not complex_object_node.has_attribute(attr_node.rm_attr_name) then
					complex_object_node.put_attribute(attr_node)
				else
					raise_error
					report_error("Duplicate relationship: " + attr_node.rm_attr_name)
					abort
				end

				debug("dADL_parse")
					io.put_string(indent + "multiple_attr_object_block_head: PUSH attr node%N")
					indent.append("%T")
				end
				attr_nodes.extend(attr_node)
			end
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvs1.put (yyval1, yyvsp1)
end
when 18 then
--|#line 321 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 321")
end

		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvs1.put (yyval1, yyvsp1)
end
when 19 then
--|#line 324 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 324")
end

		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs1.put (yyval1, yyvsp1)
end
when 20 then
--|#line 329 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 329")
end

		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyvs1.put (yyval1, yyvsp1)
end
when 21 then
--|#line 334 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 334")
end

			obj_id := yyvs1.item (yyvsp1 - 1).out

			debug("dADL_parse")
				io.put_string(indent + "object_key: " + obj_id + 
					" (setting " + attr_nodes.item.rm_attr_name + " to Multiple)%N")
			end
			if not attr_nodes.is_empty then
				attr_nodes.item.set_multiple
			else
				raise_error
				report_error("generic object not enclosed by normal object not allowed")
				abort
			end
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyvs1.put (yyval1, yyvsp1)
end
when 22 then
--|#line 356 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 356")
end

			debug("dADL_parse")
				io.put_string(indent + "untyped single_attr_object_block%N")
			end
			yyval13 := yyvs13.item (yyvsp13)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvs13.put (yyval13, yyvsp13)
end
when 23 then
--|#line 363 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 363")
end

			debug("dADL_parse")
				io.put_string(indent + "typed single_attr_object_block; type = " + yyvs4.item (yyvsp4) + "%N")
			end
			yyvs13.item (yyvsp13).set_type_name(yyvs4.item (yyvsp4))
			yyval13 := yyvs13.item (yyvsp13)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 2
	yyvsp4 := yyvsp4 -1
	yyvs13.put (yyval13, yyvsp13)
end
when 24 then
--|#line 381 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 381")
end

			debug("dADL_parse")
				io.put_string(indent + "empty_object_complex_body: POP Object node(" + 
					complex_object_nodes.item.node_id + ")%N")
				indent.remove_tail(1)
			end
			yyval13 := complex_object_nodes.item
			complex_object_nodes.remove
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 2
	yyvsp13 := yyvsp13 + 1
	yyvsp1 := yyvsp1 -2
	if yyvsp13 >= yyvsc13 then
		if yyvs13 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs13")
			end
			create yyspecial_routines13
			yyvsc13 := yyInitial_yyvs_size
			yyvs13 := yyspecial_routines13.make (yyvsc13)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs13")
			end
			yyvsc13 := yyvsc13 + yyInitial_yyvs_size
			yyvs13 := yyspecial_routines13.resize (yyvs13, yyvsc13)
		end
	end
	yyvs13.put (yyval13, yyvsp13)
end
when 25 then
--|#line 391 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 391")
end

			debug("dADL_parse")
				io.put_string(indent + "single_attr_object_complex_body: POP Object node(" + 
					complex_object_nodes.item.node_id + ")%N")
				indent.remove_tail(1)
			end
			yyval13 := complex_object_nodes.item
			complex_object_nodes.remove
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp13 := yyvsp13 + 1
	yyvsp1 := yyvsp1 -3
	if yyvsp13 >= yyvsc13 then
		if yyvs13 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs13")
			end
			create yyspecial_routines13
			yyvsc13 := yyInitial_yyvs_size
			yyvs13 := yyspecial_routines13.make (yyvsc13)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs13")
			end
			yyvsc13 := yyvsc13 + yyInitial_yyvs_size
			yyvs13 := yyspecial_routines13.resize (yyvs13, yyvsc13)
		end
	end
	yyvs13.put (yyval13, yyvsp13)
end
when 26 then
--|#line 403 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 403")
end

			-- if parent attr is not multiple, create an anon object; else an object identified by a key
			if attr_nodes.is_empty or else not attr_nodes.item.is_multiple then
				debug("dADL_parse")
					io.put_string(indent + "single_attr_object_complex_head: create complex_object_node.make_anonymous%N")
				end
				create complex_object_node.make_anonymous
			else
				debug("dADL_parse")
					io.put_string(indent + "single_attr_object_complex_head: create complex_object_node.make (" + obj_id + ")%N")
				end
				create complex_object_node.make_identified(obj_id)
				obj_id := Void
			end

			-- now put the new object under its attribute, if one exists
			if not attr_nodes.is_empty then
				if not attr_nodes.item.has_child(complex_object_node.node_id) then
					debug("dADL_parse")
						io.put_string(indent + "single_attr_object_complex_head; attr_nodes(<<" + 
							attr_nodes.item.rm_attr_name + ">>).item.put_child(complex_object_node(" + 
							complex_object_node.node_id + "))%N")
					end
					attr_nodes.item.put_child(complex_object_node)
				else
					raise_error
					report_error("Key must be unique; key [" + complex_object_nodes.item.node_id 
								+ "] already exists under attribute %"" + attr_nodes.item.rm_attr_name + "%"")
					abort
				end
			end

			-- finally, put the new object on the object stack
			debug("dADL_parse")
				io.put_string(indent + "single_attr_object_complex_head: PUSH Obj node%N")
				indent.append("%T")
			end
			complex_object_nodes.extend(complex_object_node)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvs1.put (yyval1, yyvsp1)
end
when 27 then
--|#line 449 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 449")
end

			debug("dADL_parse")
				io.put_string(indent + "untyped primitive_object_block%N")
			end
			yyval14 := yyvs14.item (yyvsp14)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvs14.put (yyval14, yyvsp14)
end
when 28 then
--|#line 456 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 456")
end

			debug("dADL_parse")
				io.put_string(indent + "typed primitive_object_block; type = " + yyvs4.item (yyvsp4) + "%N")
			end
			yyvs14.item (yyvsp14).set_type_name(yyvs4.item (yyvsp4))
			yyval14 := yyvs14.item (yyvsp14)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 2
	yyvsp4 := yyvsp4 -1
	yyvs14.put (yyval14, yyvsp14)
end
when 29 then
--|#line 466 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 466")
end

			debug("dADL_parse")
				io.put_string(indent + "untyped_primitive_object_block; attr_nodes(<<" + 
						attr_nodes.item.rm_attr_name + ">>).item.put_child(<<" + 
						leaf_object_node.as_string + ">>)%N")
			end
			if not attr_nodes.item.has_child(leaf_object_node.node_id) then
				attr_nodes.item.put_child(leaf_object_node)
				yyval14 := leaf_object_node
			else
				raise_error
				report_error("Key must be unique; key [" + leaf_object_node.node_id 
						+ "] already exists under attribute %"" + attr_nodes.item.rm_attr_name + "%"")
				abort
			end
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp14 := yyvsp14 + 1
	yyvsp1 := yyvsp1 -3
	if yyvsp14 >= yyvsc14 then
		if yyvs14 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs14")
			end
			create yyspecial_routines14
			yyvsc14 := yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.make (yyvsc14)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs14")
			end
			yyvsc14 := yyvsc14 + yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.resize (yyvs14, yyvsc14)
		end
	end
	yyvs14.put (yyval14, yyvsp14)
end
when 30 then
--|#line 485 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 485")
end

			if obj_id /= Void then
				create {DT_PRIMITIVE_OBJECT} leaf_object_node.make_identified(yyvs1.item (yyvsp1), obj_id)
				obj_id := Void
			else
				create {DT_PRIMITIVE_OBJECT} leaf_object_node.make_anonymous(yyvs1.item (yyvsp1))
			end
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvs1.put (yyval1, yyvsp1)
end
when 31 then
--|#line 494 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 494")
end

			if obj_id /= Void then
				create {DT_PRIMITIVE_OBJECT_LIST} leaf_object_node.make_identified(yyvs29.item (yyvsp29), obj_id)
				obj_id := Void
			else
				create {DT_PRIMITIVE_OBJECT_LIST} leaf_object_node.make_anonymous(yyvs29.item (yyvsp29))
			end
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp29 := yyvsp29 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 32 then
--|#line 503 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 503")
end

			if obj_id /= Void then
				create {DT_PRIMITIVE_OBJECT_INTERVAL} leaf_object_node.make_identified(yyvs37.item (yyvsp37), obj_id)
				obj_id := Void
			else
				create {DT_PRIMITIVE_OBJECT_INTERVAL} leaf_object_node.make_anonymous(yyvs37.item (yyvsp37))
			end
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp37 := yyvsp37 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 33 then
--|#line 512 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 512")
end

			if obj_id /= Void then
				create {DT_PRIMITIVE_OBJECT} leaf_object_node.make_identified(yyvs11.item (yyvsp11), obj_id)
				obj_id := Void
			else
				create {DT_PRIMITIVE_OBJECT} leaf_object_node.make_anonymous(yyvs11.item (yyvsp11))
			end
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp11 := yyvsp11 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 34 then
--|#line 521 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 521")
end

			if obj_id /= Void then
				create {DT_PRIMITIVE_OBJECT_LIST} leaf_object_node.make_identified(yyvs28.item (yyvsp28), obj_id)
				obj_id := Void
			else
				create {DT_PRIMITIVE_OBJECT_LIST} leaf_object_node.make_anonymous(yyvs28.item (yyvsp28))
			end
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp28 := yyvsp28 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 35 then
--|#line 531 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 531")
end


if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvs1.put (yyval1, yyvsp1)
end
when 36 then
--|#line 535 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 535")
end

			raise_error
			report_error("query syntax is obsolete: use a URI instead e.g. [1234] = <http://free.terminology.org?terminology='snomed'&&is-a[94859384]>")
			abort
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 6
	yyvsp1 := yyvsp1 -3
	yyvsp4 := yyvsp4 -2
	yyvs1.put (yyval1, yyvsp1)
end
when 37 then
--|#line 543 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 543")
end

			yyval1 := yyvs1.item (yyvsp1)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvs1.put (yyval1, yyvsp1)
end
when 38 then
--|#line 547 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 547")
end

			yyval1 := yyvs2.item (yyvsp2)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 39 then
--|#line 551 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 551")
end

			yyval1 := yyvs3.item (yyvsp3)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp3 := yyvsp3 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 40 then
--|#line 555 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 555")
end

			yyval1 := yyvs6.item (yyvsp6)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp6 := yyvsp6 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 41 then
--|#line 559 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 559")
end

			yyval1 := yyvs5.item (yyvsp5)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp5 := yyvsp5 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 42 then
--|#line 563 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 563")
end

			yyval1 := yyvs7.item (yyvsp7)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp7 := yyvsp7 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 43 then
--|#line 567 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 567")
end

			yyval1 := yyvs9.item (yyvsp9)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp9 := yyvsp9 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 44 then
--|#line 571 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 571")
end

			yyval1 := yyvs8.item (yyvsp8)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp8 := yyvsp8 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 45 then
--|#line 575 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 575")
end

			yyval1 := yyvs10.item (yyvsp10)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp10 := yyvsp10 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 46 then
--|#line 579 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 579")
end

			yyval1 := yyvs12.item (yyvsp12)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp12 := yyvsp12 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 47 then
--|#line 585 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 585")
end

			yyval29 := yyvs15.item (yyvsp15)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp29 := yyvsp29 + 1
	yyvsp15 := yyvsp15 -1
	if yyvsp29 >= yyvsc29 then
		if yyvs29 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs29")
			end
			create yyspecial_routines29
			yyvsc29 := yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.make (yyvsc29)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs29")
			end
			yyvsc29 := yyvsc29 + yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.resize (yyvs29, yyvsc29)
		end
	end
	yyvs29.put (yyval29, yyvsp29)
end
when 48 then
--|#line 589 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 589")
end

			yyval29 := yyvs17.item (yyvsp17)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp29 := yyvsp29 + 1
	yyvsp17 := yyvsp17 -1
	if yyvsp29 >= yyvsc29 then
		if yyvs29 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs29")
			end
			create yyspecial_routines29
			yyvsc29 := yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.make (yyvsc29)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs29")
			end
			yyvsc29 := yyvsc29 + yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.resize (yyvs29, yyvsc29)
		end
	end
	yyvs29.put (yyval29, yyvsp29)
end
when 49 then
--|#line 593 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 593")
end

			yyval29 := yyvs19.item (yyvsp19)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp29 := yyvsp29 + 1
	yyvsp19 := yyvsp19 -1
	if yyvsp29 >= yyvsc29 then
		if yyvs29 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs29")
			end
			create yyspecial_routines29
			yyvsc29 := yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.make (yyvsc29)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs29")
			end
			yyvsc29 := yyvsc29 + yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.resize (yyvs29, yyvsc29)
		end
	end
	yyvs29.put (yyval29, yyvsp29)
end
when 50 then
--|#line 597 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 597")
end

			yyval29 := yyvs23.item (yyvsp23)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp29 := yyvsp29 + 1
	yyvsp23 := yyvsp23 -1
	if yyvsp29 >= yyvsc29 then
		if yyvs29 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs29")
			end
			create yyspecial_routines29
			yyvsc29 := yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.make (yyvsc29)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs29")
			end
			yyvsc29 := yyvsc29 + yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.resize (yyvs29, yyvsc29)
		end
	end
	yyvs29.put (yyval29, yyvsp29)
end
when 51 then
--|#line 601 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 601")
end

			yyval29 := yyvs21.item (yyvsp21)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp29 := yyvsp29 + 1
	yyvsp21 := yyvsp21 -1
	if yyvsp29 >= yyvsc29 then
		if yyvs29 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs29")
			end
			create yyspecial_routines29
			yyvsc29 := yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.make (yyvsc29)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs29")
			end
			yyvsc29 := yyvsc29 + yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.resize (yyvs29, yyvsc29)
		end
	end
	yyvs29.put (yyval29, yyvsp29)
end
when 52 then
--|#line 605 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 605")
end

			yyval29 := yyvs24.item (yyvsp24)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp29 := yyvsp29 + 1
	yyvsp24 := yyvsp24 -1
	if yyvsp29 >= yyvsc29 then
		if yyvs29 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs29")
			end
			create yyspecial_routines29
			yyvsc29 := yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.make (yyvsc29)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs29")
			end
			yyvsc29 := yyvsc29 + yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.resize (yyvs29, yyvsc29)
		end
	end
	yyvs29.put (yyval29, yyvsp29)
end
when 53 then
--|#line 609 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 609")
end

			yyval29 := yyvs25.item (yyvsp25)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp29 := yyvsp29 + 1
	yyvsp25 := yyvsp25 -1
	if yyvsp29 >= yyvsc29 then
		if yyvs29 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs29")
			end
			create yyspecial_routines29
			yyvsc29 := yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.make (yyvsc29)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs29")
			end
			yyvsc29 := yyvsc29 + yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.resize (yyvs29, yyvsc29)
		end
	end
	yyvs29.put (yyval29, yyvsp29)
end
when 54 then
--|#line 613 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 613")
end

			yyval29 := yyvs26.item (yyvsp26)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp29 := yyvsp29 + 1
	yyvsp26 := yyvsp26 -1
	if yyvsp29 >= yyvsc29 then
		if yyvs29 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs29")
			end
			create yyspecial_routines29
			yyvsc29 := yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.make (yyvsc29)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs29")
			end
			yyvsc29 := yyvsc29 + yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.resize (yyvs29, yyvsc29)
		end
	end
	yyvs29.put (yyval29, yyvsp29)
end
when 55 then
--|#line 617 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 617")
end

			yyval29 := yyvs27.item (yyvsp27)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp29 := yyvsp29 + 1
	yyvsp27 := yyvsp27 -1
	if yyvsp29 >= yyvsc29 then
		if yyvs29 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs29")
			end
			create yyspecial_routines29
			yyvsc29 := yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.make (yyvsc29)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs29")
			end
			yyvsc29 := yyvsc29 + yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.resize (yyvs29, yyvsc29)
		end
	end
	yyvs29.put (yyval29, yyvsp29)
end
when 56 then
--|#line 623 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 623")
end

			yyval37 := yyvs30.item (yyvsp30)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp37 := yyvsp37 + 1
	yyvsp30 := yyvsp30 -1
	if yyvsp37 >= yyvsc37 then
		if yyvs37 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs37")
			end
			create yyspecial_routines37
			yyvsc37 := yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.make (yyvsc37)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs37")
			end
			yyvsc37 := yyvsc37 + yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.resize (yyvs37, yyvsc37)
		end
	end
	yyvs37.put (yyval37, yyvsp37)
end
when 57 then
--|#line 627 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 627")
end

			yyval37 := yyvs31.item (yyvsp31)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp37 := yyvsp37 + 1
	yyvsp31 := yyvsp31 -1
	if yyvsp37 >= yyvsc37 then
		if yyvs37 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs37")
			end
			create yyspecial_routines37
			yyvsc37 := yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.make (yyvsc37)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs37")
			end
			yyvsc37 := yyvsc37 + yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.resize (yyvs37, yyvsc37)
		end
	end
	yyvs37.put (yyval37, yyvsp37)
end
when 58 then
--|#line 631 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 631")
end

			yyval37 := yyvs33.item (yyvsp33)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp37 := yyvsp37 + 1
	yyvsp33 := yyvsp33 -1
	if yyvsp37 >= yyvsc37 then
		if yyvs37 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs37")
			end
			create yyspecial_routines37
			yyvsc37 := yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.make (yyvsc37)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs37")
			end
			yyvsc37 := yyvsc37 + yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.resize (yyvs37, yyvsc37)
		end
	end
	yyvs37.put (yyval37, yyvsp37)
end
when 59 then
--|#line 635 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 635")
end

			yyval37 := yyvs32.item (yyvsp32)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp37 := yyvsp37 + 1
	yyvsp32 := yyvsp32 -1
	if yyvsp37 >= yyvsc37 then
		if yyvs37 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs37")
			end
			create yyspecial_routines37
			yyvsc37 := yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.make (yyvsc37)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs37")
			end
			yyvsc37 := yyvsc37 + yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.resize (yyvs37, yyvsc37)
		end
	end
	yyvs37.put (yyval37, yyvsp37)
end
when 60 then
--|#line 639 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 639")
end

			yyval37 := yyvs34.item (yyvsp34)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp37 := yyvsp37 + 1
	yyvsp34 := yyvsp34 -1
	if yyvsp37 >= yyvsc37 then
		if yyvs37 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs37")
			end
			create yyspecial_routines37
			yyvsc37 := yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.make (yyvsc37)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs37")
			end
			yyvsc37 := yyvsc37 + yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.resize (yyvs37, yyvsc37)
		end
	end
	yyvs37.put (yyval37, yyvsp37)
end
when 61 then
--|#line 643 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 643")
end

			yyval37 := yyvs35.item (yyvsp35)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp37 := yyvsp37 + 1
	yyvsp35 := yyvsp35 -1
	if yyvsp37 >= yyvsc37 then
		if yyvs37 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs37")
			end
			create yyspecial_routines37
			yyvsc37 := yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.make (yyvsc37)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs37")
			end
			yyvsc37 := yyvsc37 + yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.resize (yyvs37, yyvsc37)
		end
	end
	yyvs37.put (yyval37, yyvsp37)
end
when 62 then
--|#line 651 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 651")
end

			yyval1 := yyvs4.item (yyvsp4)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp4 := yyvsp4 -1
	if yyvsp1 >= yyvsc1 then
		if yyvs1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyvs1.put (yyval1, yyvsp1)
end
when 63 then
--|#line 657 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 657")
end

			create yyval15.make(0)
			yyval15.extend(yyvs4.item (yyvsp4 - 1))
			yyval15.extend(yyvs4.item (yyvsp4))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp15 := yyvsp15 + 1
	yyvsp4 := yyvsp4 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp15 >= yyvsc15 then
		if yyvs15 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs15")
			end
			create yyspecial_routines15
			yyvsc15 := yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.make (yyvsc15)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs15")
			end
			yyvsc15 := yyvsc15 + yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.resize (yyvs15, yyvsc15)
		end
	end
	yyvs15.put (yyval15, yyvsp15)
end
when 64 then
--|#line 663 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 663")
end

			yyvs15.item (yyvsp15).extend(yyvs4.item (yyvsp4))
			yyval15 := yyvs15.item (yyvsp15)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp4 := yyvsp4 -1
	yyvs15.put (yyval15, yyvsp15)
end
when 65 then
--|#line 668 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 668")
end

			create yyval15.make(0)
			yyval15.extend(yyvs4.item (yyvsp4))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp15 := yyvsp15 + 1
	yyvsp4 := yyvsp4 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp15 >= yyvsc15 then
		if yyvs15 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs15")
			end
			create yyspecial_routines15
			yyvsc15 := yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.make (yyvsc15)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs15")
			end
			yyvsc15 := yyvsc15 + yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.resize (yyvs15, yyvsc15)
		end
	end
	yyvs15.put (yyval15, yyvsp15)
end
when 66 then
--|#line 675 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 675")
end

			yyval2 := yyvs2.item (yyvsp2)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvs2.put (yyval2, yyvsp2)
end
when 67 then
--|#line 678 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 678")
end

			yyval2 := yyvs2.item (yyvsp2)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs2.put (yyval2, yyvsp2)
end
when 68 then
--|#line 681 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 681")
end

			yyval2 := - yyvs2.item (yyvsp2)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs2.put (yyval2, yyvsp2)
end
when 69 then
--|#line 686 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 686")
end

			create yyval17.make(0)
			yyval17.extend(yyvs2.item (yyvsp2 - 1))
			yyval17.extend(yyvs2.item (yyvsp2))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp17 := yyvsp17 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp17 >= yyvsc17 then
		if yyvs17 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs17")
			end
			create yyspecial_routines17
			yyvsc17 := yyInitial_yyvs_size
			yyvs17 := yyspecial_routines17.make (yyvsc17)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs17")
			end
			yyvsc17 := yyvsc17 + yyInitial_yyvs_size
			yyvs17 := yyspecial_routines17.resize (yyvs17, yyvsc17)
		end
	end
	yyvs17.put (yyval17, yyvsp17)
end
when 70 then
--|#line 692 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 692")
end

			yyvs17.item (yyvsp17).extend(yyvs2.item (yyvsp2))
			yyval17 := yyvs17.item (yyvsp17)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -1
	yyvs17.put (yyval17, yyvsp17)
end
when 71 then
--|#line 697 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 697")
end

			create yyval17.make(0)
			yyval17.extend(yyvs2.item (yyvsp2))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp17 := yyvsp17 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp17 >= yyvsc17 then
		if yyvs17 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs17")
			end
			create yyspecial_routines17
			yyvsc17 := yyInitial_yyvs_size
			yyvs17 := yyspecial_routines17.make (yyvsc17)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs17")
			end
			yyvsc17 := yyvsc17 + yyInitial_yyvs_size
			yyvs17 := yyspecial_routines17.resize (yyvs17, yyvsc17)
		end
	end
	yyvs17.put (yyval17, yyvsp17)
end
when 72 then
--|#line 704 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 704")
end

			create integer_interval.make_bounded(yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), True, True)
			yyval30 := integer_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 5
	yyvsp30 := yyvsp30 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp2 := yyvsp2 -2
	if yyvsp30 >= yyvsc30 then
		if yyvs30 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs30")
			end
			create yyspecial_routines30
			yyvsc30 := yyInitial_yyvs_size
			yyvs30 := yyspecial_routines30.make (yyvsc30)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs30")
			end
			yyvsc30 := yyvsc30 + yyInitial_yyvs_size
			yyvs30 := yyspecial_routines30.resize (yyvs30, yyvsc30)
		end
	end
	yyvs30.put (yyval30, yyvsp30)
end
when 73 then
--|#line 709 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 709")
end

			create integer_interval.make_lower_unbounded(yyvs2.item (yyvsp2), False)
			yyval30 := integer_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp30 := yyvsp30 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp2 := yyvsp2 -1
	if yyvsp30 >= yyvsc30 then
		if yyvs30 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs30")
			end
			create yyspecial_routines30
			yyvsc30 := yyInitial_yyvs_size
			yyvs30 := yyspecial_routines30.make (yyvsc30)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs30")
			end
			yyvsc30 := yyvsc30 + yyInitial_yyvs_size
			yyvs30 := yyspecial_routines30.resize (yyvs30, yyvsc30)
		end
	end
	yyvs30.put (yyval30, yyvsp30)
end
when 74 then
--|#line 714 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 714")
end

			create integer_interval.make_lower_unbounded(yyvs2.item (yyvsp2), True)
			yyval30 := integer_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp30 := yyvsp30 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp2 := yyvsp2 -1
	if yyvsp30 >= yyvsc30 then
		if yyvs30 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs30")
			end
			create yyspecial_routines30
			yyvsc30 := yyInitial_yyvs_size
			yyvs30 := yyspecial_routines30.make (yyvsc30)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs30")
			end
			yyvsc30 := yyvsc30 + yyInitial_yyvs_size
			yyvs30 := yyspecial_routines30.resize (yyvs30, yyvsc30)
		end
	end
	yyvs30.put (yyval30, yyvsp30)
end
when 75 then
--|#line 719 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 719")
end

			create integer_interval.make_upper_unbounded(yyvs2.item (yyvsp2), False)
			yyval30 := integer_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp30 := yyvsp30 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp2 := yyvsp2 -1
	if yyvsp30 >= yyvsc30 then
		if yyvs30 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs30")
			end
			create yyspecial_routines30
			yyvsc30 := yyInitial_yyvs_size
			yyvs30 := yyspecial_routines30.make (yyvsc30)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs30")
			end
			yyvsc30 := yyvsc30 + yyInitial_yyvs_size
			yyvs30 := yyspecial_routines30.resize (yyvs30, yyvsc30)
		end
	end
	yyvs30.put (yyval30, yyvsp30)
end
when 76 then
--|#line 724 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 724")
end

			create integer_interval.make_upper_unbounded(yyvs2.item (yyvsp2), True)
			yyval30 := integer_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp30 := yyvsp30 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp2 := yyvsp2 -1
	if yyvsp30 >= yyvsc30 then
		if yyvs30 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs30")
			end
			create yyspecial_routines30
			yyvsc30 := yyInitial_yyvs_size
			yyvs30 := yyspecial_routines30.make (yyvsc30)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs30")
			end
			yyvsc30 := yyvsc30 + yyInitial_yyvs_size
			yyvs30 := yyspecial_routines30.resize (yyvs30, yyvsc30)
		end
	end
	yyvs30.put (yyval30, yyvsp30)
end
when 77 then
--|#line 729 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 729")
end

			create integer_interval.make_point(yyvs2.item (yyvsp2))
			yyval30 := integer_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp30 := yyvsp30 + 1
	yyvsp1 := yyvsp1 -2
	yyvsp2 := yyvsp2 -1
	if yyvsp30 >= yyvsc30 then
		if yyvs30 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs30")
			end
			create yyspecial_routines30
			yyvsc30 := yyInitial_yyvs_size
			yyvs30 := yyspecial_routines30.make (yyvsc30)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs30")
			end
			yyvsc30 := yyvsc30 + yyInitial_yyvs_size
			yyvs30 := yyspecial_routines30.resize (yyvs30, yyvsc30)
		end
	end
	yyvs30.put (yyval30, yyvsp30)
end
when 78 then
--|#line 736 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 736")
end

			yyval3 := yyvs3.item (yyvsp3)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvs3.put (yyval3, yyvsp3)
end
when 79 then
--|#line 740 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 740")
end

			yyval3 := yyvs3.item (yyvsp3)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs3.put (yyval3, yyvsp3)
end
when 80 then
--|#line 744 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 744")
end

			yyval3 := - yyvs3.item (yyvsp3)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyvs3.put (yyval3, yyvsp3)
end
when 81 then
--|#line 750 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 750")
end

			create yyval19.make(0)
			yyval19.extend(yyvs3.item (yyvsp3 - 1))
			yyval19.extend(yyvs3.item (yyvsp3))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp19 := yyvsp19 + 1
	yyvsp3 := yyvsp3 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp19 >= yyvsc19 then
		if yyvs19 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs19")
			end
			create yyspecial_routines19
			yyvsc19 := yyInitial_yyvs_size
			yyvs19 := yyspecial_routines19.make (yyvsc19)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs19")
			end
			yyvsc19 := yyvsc19 + yyInitial_yyvs_size
			yyvs19 := yyspecial_routines19.resize (yyvs19, yyvsc19)
		end
	end
	yyvs19.put (yyval19, yyvsp19)
end
when 82 then
--|#line 756 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 756")
end

			yyvs19.item (yyvsp19).extend(yyvs3.item (yyvsp3))
			yyval19 := yyvs19.item (yyvsp19)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp3 := yyvsp3 -1
	yyvs19.put (yyval19, yyvsp19)
end
when 83 then
--|#line 761 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 761")
end

			create yyval19.make(0)
			yyval19.extend(yyvs3.item (yyvsp3))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp19 := yyvsp19 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp19 >= yyvsc19 then
		if yyvs19 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs19")
			end
			create yyspecial_routines19
			yyvsc19 := yyInitial_yyvs_size
			yyvs19 := yyspecial_routines19.make (yyvsc19)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs19")
			end
			yyvsc19 := yyvsc19 + yyInitial_yyvs_size
			yyvs19 := yyspecial_routines19.resize (yyvs19, yyvsc19)
		end
	end
	yyvs19.put (yyval19, yyvsp19)
end
when 84 then
--|#line 768 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 768")
end

			create real_interval.make_bounded(yyvs3.item (yyvsp3 - 1), yyvs3.item (yyvsp3), True, True)
			yyval31 := real_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 5
	yyvsp31 := yyvsp31 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp3 := yyvsp3 -2
	if yyvsp31 >= yyvsc31 then
		if yyvs31 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs31")
			end
			create yyspecial_routines31
			yyvsc31 := yyInitial_yyvs_size
			yyvs31 := yyspecial_routines31.make (yyvsc31)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs31")
			end
			yyvsc31 := yyvsc31 + yyInitial_yyvs_size
			yyvs31 := yyspecial_routines31.resize (yyvs31, yyvsc31)
		end
	end
	yyvs31.put (yyval31, yyvsp31)
end
when 85 then
--|#line 773 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 773")
end

			create real_interval.make_lower_unbounded(yyvs3.item (yyvsp3), False)
			yyval31 := real_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp31 := yyvsp31 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp3 := yyvsp3 -1
	if yyvsp31 >= yyvsc31 then
		if yyvs31 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs31")
			end
			create yyspecial_routines31
			yyvsc31 := yyInitial_yyvs_size
			yyvs31 := yyspecial_routines31.make (yyvsc31)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs31")
			end
			yyvsc31 := yyvsc31 + yyInitial_yyvs_size
			yyvs31 := yyspecial_routines31.resize (yyvs31, yyvsc31)
		end
	end
	yyvs31.put (yyval31, yyvsp31)
end
when 86 then
--|#line 778 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 778")
end

			create real_interval.make_lower_unbounded(yyvs3.item (yyvsp3), True)
			yyval31 := real_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp31 := yyvsp31 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp3 := yyvsp3 -1
	if yyvsp31 >= yyvsc31 then
		if yyvs31 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs31")
			end
			create yyspecial_routines31
			yyvsc31 := yyInitial_yyvs_size
			yyvs31 := yyspecial_routines31.make (yyvsc31)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs31")
			end
			yyvsc31 := yyvsc31 + yyInitial_yyvs_size
			yyvs31 := yyspecial_routines31.resize (yyvs31, yyvsc31)
		end
	end
	yyvs31.put (yyval31, yyvsp31)
end
when 87 then
--|#line 783 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 783")
end

			create real_interval.make_upper_unbounded(yyvs3.item (yyvsp3), False)
			yyval31 := real_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp31 := yyvsp31 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp3 := yyvsp3 -1
	if yyvsp31 >= yyvsc31 then
		if yyvs31 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs31")
			end
			create yyspecial_routines31
			yyvsc31 := yyInitial_yyvs_size
			yyvs31 := yyspecial_routines31.make (yyvsc31)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs31")
			end
			yyvsc31 := yyvsc31 + yyInitial_yyvs_size
			yyvs31 := yyspecial_routines31.resize (yyvs31, yyvsc31)
		end
	end
	yyvs31.put (yyval31, yyvsp31)
end
when 88 then
--|#line 788 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 788")
end

			create real_interval.make_upper_unbounded(yyvs3.item (yyvsp3), True)
			yyval31 := real_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp31 := yyvsp31 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp3 := yyvsp3 -1
	if yyvsp31 >= yyvsc31 then
		if yyvs31 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs31")
			end
			create yyspecial_routines31
			yyvsc31 := yyInitial_yyvs_size
			yyvs31 := yyspecial_routines31.make (yyvsc31)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs31")
			end
			yyvsc31 := yyvsc31 + yyInitial_yyvs_size
			yyvs31 := yyspecial_routines31.resize (yyvs31, yyvsc31)
		end
	end
	yyvs31.put (yyval31, yyvsp31)
end
when 89 then
--|#line 793 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 793")
end

			create real_interval.make_point(yyvs3.item (yyvsp3))
			yyval31 := real_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp31 := yyvsp31 + 1
	yyvsp1 := yyvsp1 -2
	yyvsp3 := yyvsp3 -1
	if yyvsp31 >= yyvsc31 then
		if yyvs31 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs31")
			end
			create yyspecial_routines31
			yyvsc31 := yyInitial_yyvs_size
			yyvs31 := yyspecial_routines31.make (yyvsc31)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs31")
			end
			yyvsc31 := yyvsc31 + yyInitial_yyvs_size
			yyvs31 := yyspecial_routines31.resize (yyvs31, yyvsc31)
		end
	end
	yyvs31.put (yyval31, yyvsp31)
end
when 90 then
--|#line 800 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 800")
end

			yyval6 := True
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp6 := yyvsp6 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp6 >= yyvsc6 then
		if yyvs6 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs6")
			end
			create yyspecial_routines6
			yyvsc6 := yyInitial_yyvs_size
			yyvs6 := yyspecial_routines6.make (yyvsc6)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs6")
			end
			yyvsc6 := yyvsc6 + yyInitial_yyvs_size
			yyvs6 := yyspecial_routines6.resize (yyvs6, yyvsc6)
		end
	end
	yyvs6.put (yyval6, yyvsp6)
end
when 91 then
--|#line 804 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 804")
end

			yyval6 := False
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp6 := yyvsp6 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp6 >= yyvsc6 then
		if yyvs6 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs6")
			end
			create yyspecial_routines6
			yyvsc6 := yyInitial_yyvs_size
			yyvs6 := yyspecial_routines6.make (yyvsc6)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs6")
			end
			yyvsc6 := yyvsc6 + yyInitial_yyvs_size
			yyvs6 := yyspecial_routines6.resize (yyvs6, yyvsc6)
		end
	end
	yyvs6.put (yyval6, yyvsp6)
end
when 92 then
--|#line 810 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 810")
end

			create yyval23.make(0)
			yyval23.extend(yyvs6.item (yyvsp6 - 1))
			yyval23.extend(yyvs6.item (yyvsp6))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp23 := yyvsp23 + 1
	yyvsp6 := yyvsp6 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp23 >= yyvsc23 then
		if yyvs23 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs23")
			end
			create yyspecial_routines23
			yyvsc23 := yyInitial_yyvs_size
			yyvs23 := yyspecial_routines23.make (yyvsc23)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs23")
			end
			yyvsc23 := yyvsc23 + yyInitial_yyvs_size
			yyvs23 := yyspecial_routines23.resize (yyvs23, yyvsc23)
		end
	end
	yyvs23.put (yyval23, yyvsp23)
end
when 93 then
--|#line 816 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 816")
end

			yyvs23.item (yyvsp23).extend(yyvs6.item (yyvsp6))
			yyval23 := yyvs23.item (yyvsp23)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp6 := yyvsp6 -1
	yyvs23.put (yyval23, yyvsp23)
end
when 94 then
--|#line 821 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 821")
end

			create yyval23.make(0)
			yyval23.extend(yyvs6.item (yyvsp6))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp23 := yyvsp23 + 1
	yyvsp6 := yyvsp6 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp23 >= yyvsc23 then
		if yyvs23 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs23")
			end
			create yyspecial_routines23
			yyvsc23 := yyInitial_yyvs_size
			yyvs23 := yyspecial_routines23.make (yyvsc23)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs23")
			end
			yyvsc23 := yyvsc23 + yyInitial_yyvs_size
			yyvs23 := yyspecial_routines23.resize (yyvs23, yyvsc23)
		end
	end
	yyvs23.put (yyval23, yyvsp23)
end
when 95 then
--|#line 828 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 828")
end

			yyval5 := yyvs5.item (yyvsp5)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvs5.put (yyval5, yyvsp5)
end
when 96 then
--|#line 834 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 834")
end

			create yyval21.make(0)
			yyval21.extend(yyvs5.item (yyvsp5 - 1))
			yyval21.extend(yyvs5.item (yyvsp5))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp21 := yyvsp21 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp21 >= yyvsc21 then
		if yyvs21 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs21")
			end
			create yyspecial_routines21
			yyvsc21 := yyInitial_yyvs_size
			yyvs21 := yyspecial_routines21.make (yyvsc21)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs21")
			end
			yyvsc21 := yyvsc21 + yyInitial_yyvs_size
			yyvs21 := yyspecial_routines21.resize (yyvs21, yyvsc21)
		end
	end
	yyvs21.put (yyval21, yyvsp21)
end
when 97 then
--|#line 840 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 840")
end

			yyvs21.item (yyvsp21).extend(yyvs5.item (yyvsp5))
			yyval21 := yyvs21.item (yyvsp21)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp5 := yyvsp5 -1
	yyvs21.put (yyval21, yyvsp21)
end
when 98 then
--|#line 845 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 845")
end

			create yyval21.make(0)
			yyval21.extend(yyvs5.item (yyvsp5))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp21 := yyvsp21 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp21 >= yyvsc21 then
		if yyvs21 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs21")
			end
			create yyspecial_routines21
			yyvsc21 := yyInitial_yyvs_size
			yyvs21 := yyspecial_routines21.make (yyvsc21)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs21")
			end
			yyvsc21 := yyvsc21 + yyInitial_yyvs_size
			yyvs21 := yyspecial_routines21.resize (yyvs21, yyvsc21)
		end
	end
	yyvs21.put (yyval21, yyvsp21)
end
when 99 then
--|#line 852 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 852")
end

			if is_valid_iso8601_date(yyvs4.item (yyvsp4)) then
				create yyval7.make_from_string(yyvs4.item (yyvsp4))
			else
				raise_error
				report_error("invalid ISO8601 date: " + yyvs4.item (yyvsp4))
				abort
			end
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp7 := yyvsp7 + 1
	yyvsp4 := yyvsp4 -1
	if yyvsp7 >= yyvsc7 then
		if yyvs7 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs7")
			end
			create yyspecial_routines7
			yyvsc7 := yyInitial_yyvs_size
			yyvs7 := yyspecial_routines7.make (yyvsc7)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs7")
			end
			yyvsc7 := yyvsc7 + yyInitial_yyvs_size
			yyvs7 := yyspecial_routines7.resize (yyvs7, yyvsc7)
		end
	end
	yyvs7.put (yyval7, yyvsp7)
end
when 100 then
--|#line 864 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 864")
end

			create yyval24.make(0)
			yyval24.extend(yyvs7.item (yyvsp7 - 1))
			yyval24.extend(yyvs7.item (yyvsp7))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp24 := yyvsp24 + 1
	yyvsp7 := yyvsp7 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp24 >= yyvsc24 then
		if yyvs24 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs24")
			end
			create yyspecial_routines24
			yyvsc24 := yyInitial_yyvs_size
			yyvs24 := yyspecial_routines24.make (yyvsc24)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs24")
			end
			yyvsc24 := yyvsc24 + yyInitial_yyvs_size
			yyvs24 := yyspecial_routines24.resize (yyvs24, yyvsc24)
		end
	end
	yyvs24.put (yyval24, yyvsp24)
end
when 101 then
--|#line 870 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 870")
end

			yyvs24.item (yyvsp24).extend(yyvs7.item (yyvsp7))
			yyval24 := yyvs24.item (yyvsp24)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp7 := yyvsp7 -1
	yyvs24.put (yyval24, yyvsp24)
end
when 102 then
--|#line 875 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 875")
end

			create yyval24.make(0)
			yyval24.extend(yyvs7.item (yyvsp7))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp24 := yyvsp24 + 1
	yyvsp7 := yyvsp7 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp24 >= yyvsc24 then
		if yyvs24 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs24")
			end
			create yyspecial_routines24
			yyvsc24 := yyInitial_yyvs_size
			yyvs24 := yyspecial_routines24.make (yyvsc24)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs24")
			end
			yyvsc24 := yyvsc24 + yyInitial_yyvs_size
			yyvs24 := yyspecial_routines24.resize (yyvs24, yyvsc24)
		end
	end
	yyvs24.put (yyval24, yyvsp24)
end
when 103 then
--|#line 882 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 882")
end

			create date_interval.make_bounded(yyvs7.item (yyvsp7 - 1), yyvs7.item (yyvsp7), True, True)
			yyval33 := date_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 5
	yyvsp33 := yyvsp33 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp7 := yyvsp7 -2
	if yyvsp33 >= yyvsc33 then
		if yyvs33 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs33")
			end
			create yyspecial_routines33
			yyvsc33 := yyInitial_yyvs_size
			yyvs33 := yyspecial_routines33.make (yyvsc33)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs33")
			end
			yyvsc33 := yyvsc33 + yyInitial_yyvs_size
			yyvs33 := yyspecial_routines33.resize (yyvs33, yyvsc33)
		end
	end
	yyvs33.put (yyval33, yyvsp33)
end
when 104 then
--|#line 887 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 887")
end

			create date_interval.make_lower_unbounded(yyvs7.item (yyvsp7), False)
			yyval33 := date_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp33 := yyvsp33 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp7 := yyvsp7 -1
	if yyvsp33 >= yyvsc33 then
		if yyvs33 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs33")
			end
			create yyspecial_routines33
			yyvsc33 := yyInitial_yyvs_size
			yyvs33 := yyspecial_routines33.make (yyvsc33)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs33")
			end
			yyvsc33 := yyvsc33 + yyInitial_yyvs_size
			yyvs33 := yyspecial_routines33.resize (yyvs33, yyvsc33)
		end
	end
	yyvs33.put (yyval33, yyvsp33)
end
when 105 then
--|#line 892 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 892")
end

			create date_interval.make_lower_unbounded(yyvs7.item (yyvsp7), True)
			yyval33 := date_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp33 := yyvsp33 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp7 := yyvsp7 -1
	if yyvsp33 >= yyvsc33 then
		if yyvs33 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs33")
			end
			create yyspecial_routines33
			yyvsc33 := yyInitial_yyvs_size
			yyvs33 := yyspecial_routines33.make (yyvsc33)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs33")
			end
			yyvsc33 := yyvsc33 + yyInitial_yyvs_size
			yyvs33 := yyspecial_routines33.resize (yyvs33, yyvsc33)
		end
	end
	yyvs33.put (yyval33, yyvsp33)
end
when 106 then
--|#line 897 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 897")
end

			create date_interval.make_upper_unbounded(yyvs7.item (yyvsp7), False)
			yyval33 := date_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp33 := yyvsp33 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp7 := yyvsp7 -1
	if yyvsp33 >= yyvsc33 then
		if yyvs33 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs33")
			end
			create yyspecial_routines33
			yyvsc33 := yyInitial_yyvs_size
			yyvs33 := yyspecial_routines33.make (yyvsc33)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs33")
			end
			yyvsc33 := yyvsc33 + yyInitial_yyvs_size
			yyvs33 := yyspecial_routines33.resize (yyvs33, yyvsc33)
		end
	end
	yyvs33.put (yyval33, yyvsp33)
end
when 107 then
--|#line 902 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 902")
end

			create date_interval.make_upper_unbounded(yyvs7.item (yyvsp7), True)
			yyval33 := date_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp33 := yyvsp33 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp7 := yyvsp7 -1
	if yyvsp33 >= yyvsc33 then
		if yyvs33 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs33")
			end
			create yyspecial_routines33
			yyvsc33 := yyInitial_yyvs_size
			yyvs33 := yyspecial_routines33.make (yyvsc33)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs33")
			end
			yyvsc33 := yyvsc33 + yyInitial_yyvs_size
			yyvs33 := yyspecial_routines33.resize (yyvs33, yyvsc33)
		end
	end
	yyvs33.put (yyval33, yyvsp33)
end
when 108 then
--|#line 907 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 907")
end

			create date_interval.make_point(yyvs7.item (yyvsp7))
			yyval33 := date_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp1 := yyvsp1 -2
	yyvsp7 := yyvsp7 -1
	if yyvsp33 >= yyvsc33 then
		if yyvs33 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs33")
			end
			create yyspecial_routines33
			yyvsc33 := yyInitial_yyvs_size
			yyvs33 := yyspecial_routines33.make (yyvsc33)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs33")
			end
			yyvsc33 := yyvsc33 + yyInitial_yyvs_size
			yyvs33 := yyspecial_routines33.resize (yyvs33, yyvsc33)
		end
	end
	yyvs33.put (yyval33, yyvsp33)
end
when 109 then
--|#line 914 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 914")
end

			if is_valid_iso8601_time(yyvs4.item (yyvsp4)) then
				create yyval9.make_from_string(yyvs4.item (yyvsp4))
			else
				raise_error
				report_error("invalid ISO8601 time: " + yyvs4.item (yyvsp4))
				abort
			end
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp9 := yyvsp9 + 1
	yyvsp4 := yyvsp4 -1
	if yyvsp9 >= yyvsc9 then
		if yyvs9 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs9")
			end
			create yyspecial_routines9
			yyvsc9 := yyInitial_yyvs_size
			yyvs9 := yyspecial_routines9.make (yyvsc9)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs9")
			end
			yyvsc9 := yyvsc9 + yyInitial_yyvs_size
			yyvs9 := yyspecial_routines9.resize (yyvs9, yyvsc9)
		end
	end
	yyvs9.put (yyval9, yyvsp9)
end
when 110 then
--|#line 926 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 926")
end

			create yyval25.make(0)
			yyval25.extend(yyvs9.item (yyvsp9 - 1))
			yyval25.extend(yyvs9.item (yyvsp9))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp25 := yyvsp25 + 1
	yyvsp9 := yyvsp9 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp25 >= yyvsc25 then
		if yyvs25 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs25")
			end
			create yyspecial_routines25
			yyvsc25 := yyInitial_yyvs_size
			yyvs25 := yyspecial_routines25.make (yyvsc25)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs25")
			end
			yyvsc25 := yyvsc25 + yyInitial_yyvs_size
			yyvs25 := yyspecial_routines25.resize (yyvs25, yyvsc25)
		end
	end
	yyvs25.put (yyval25, yyvsp25)
end
when 111 then
--|#line 932 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 932")
end

			yyvs25.item (yyvsp25).extend(yyvs9.item (yyvsp9))
			yyval25 := yyvs25.item (yyvsp25)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp9 := yyvsp9 -1
	yyvs25.put (yyval25, yyvsp25)
end
when 112 then
--|#line 937 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 937")
end

			create yyval25.make(0)
			yyval25.extend(yyvs9.item (yyvsp9))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp25 := yyvsp25 + 1
	yyvsp9 := yyvsp9 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp25 >= yyvsc25 then
		if yyvs25 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs25")
			end
			create yyspecial_routines25
			yyvsc25 := yyInitial_yyvs_size
			yyvs25 := yyspecial_routines25.make (yyvsc25)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs25")
			end
			yyvsc25 := yyvsc25 + yyInitial_yyvs_size
			yyvs25 := yyspecial_routines25.resize (yyvs25, yyvsc25)
		end
	end
	yyvs25.put (yyval25, yyvsp25)
end
when 113 then
--|#line 944 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 944")
end

			create time_interval.make_bounded(yyvs9.item (yyvsp9 - 1), yyvs9.item (yyvsp9), True, True)
			yyval32 := time_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 5
	yyvsp32 := yyvsp32 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp9 := yyvsp9 -2
	if yyvsp32 >= yyvsc32 then
		if yyvs32 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs32")
			end
			create yyspecial_routines32
			yyvsc32 := yyInitial_yyvs_size
			yyvs32 := yyspecial_routines32.make (yyvsc32)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs32")
			end
			yyvsc32 := yyvsc32 + yyInitial_yyvs_size
			yyvs32 := yyspecial_routines32.resize (yyvs32, yyvsc32)
		end
	end
	yyvs32.put (yyval32, yyvsp32)
end
when 114 then
--|#line 949 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 949")
end

			create time_interval.make_lower_unbounded(yyvs9.item (yyvsp9), False)
			yyval32 := time_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp32 := yyvsp32 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp9 := yyvsp9 -1
	if yyvsp32 >= yyvsc32 then
		if yyvs32 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs32")
			end
			create yyspecial_routines32
			yyvsc32 := yyInitial_yyvs_size
			yyvs32 := yyspecial_routines32.make (yyvsc32)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs32")
			end
			yyvsc32 := yyvsc32 + yyInitial_yyvs_size
			yyvs32 := yyspecial_routines32.resize (yyvs32, yyvsc32)
		end
	end
	yyvs32.put (yyval32, yyvsp32)
end
when 115 then
--|#line 954 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 954")
end

			create time_interval.make_lower_unbounded(yyvs9.item (yyvsp9), True)
			yyval32 := time_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp32 := yyvsp32 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp9 := yyvsp9 -1
	if yyvsp32 >= yyvsc32 then
		if yyvs32 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs32")
			end
			create yyspecial_routines32
			yyvsc32 := yyInitial_yyvs_size
			yyvs32 := yyspecial_routines32.make (yyvsc32)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs32")
			end
			yyvsc32 := yyvsc32 + yyInitial_yyvs_size
			yyvs32 := yyspecial_routines32.resize (yyvs32, yyvsc32)
		end
	end
	yyvs32.put (yyval32, yyvsp32)
end
when 116 then
--|#line 959 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 959")
end

			create time_interval.make_upper_unbounded(yyvs9.item (yyvsp9), False)
			yyval32 := time_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp32 := yyvsp32 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp9 := yyvsp9 -1
	if yyvsp32 >= yyvsc32 then
		if yyvs32 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs32")
			end
			create yyspecial_routines32
			yyvsc32 := yyInitial_yyvs_size
			yyvs32 := yyspecial_routines32.make (yyvsc32)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs32")
			end
			yyvsc32 := yyvsc32 + yyInitial_yyvs_size
			yyvs32 := yyspecial_routines32.resize (yyvs32, yyvsc32)
		end
	end
	yyvs32.put (yyval32, yyvsp32)
end
when 117 then
--|#line 964 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 964")
end

			create time_interval.make_upper_unbounded(yyvs9.item (yyvsp9), True)
			yyval32 := time_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp32 := yyvsp32 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp9 := yyvsp9 -1
	if yyvsp32 >= yyvsc32 then
		if yyvs32 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs32")
			end
			create yyspecial_routines32
			yyvsc32 := yyInitial_yyvs_size
			yyvs32 := yyspecial_routines32.make (yyvsc32)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs32")
			end
			yyvsc32 := yyvsc32 + yyInitial_yyvs_size
			yyvs32 := yyspecial_routines32.resize (yyvs32, yyvsc32)
		end
	end
	yyvs32.put (yyval32, yyvsp32)
end
when 118 then
--|#line 969 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 969")
end

			create time_interval.make_point(yyvs9.item (yyvsp9))
			yyval32 := time_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp32 := yyvsp32 + 1
	yyvsp1 := yyvsp1 -2
	yyvsp9 := yyvsp9 -1
	if yyvsp32 >= yyvsc32 then
		if yyvs32 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs32")
			end
			create yyspecial_routines32
			yyvsc32 := yyInitial_yyvs_size
			yyvs32 := yyspecial_routines32.make (yyvsc32)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs32")
			end
			yyvsc32 := yyvsc32 + yyInitial_yyvs_size
			yyvs32 := yyspecial_routines32.resize (yyvs32, yyvsc32)
		end
	end
	yyvs32.put (yyval32, yyvsp32)
end
when 119 then
--|#line 976 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 976")
end

			if is_valid_iso8601_date_time(yyvs4.item (yyvsp4)) then
				create yyval8.make_from_string(yyvs4.item (yyvsp4))
			else
				raise_error
				report_error("invalid ISO8601 date/time: " + yyvs4.item (yyvsp4))
				abort
			end
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp8 := yyvsp8 + 1
	yyvsp4 := yyvsp4 -1
	if yyvsp8 >= yyvsc8 then
		if yyvs8 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs8")
			end
			create yyspecial_routines8
			yyvsc8 := yyInitial_yyvs_size
			yyvs8 := yyspecial_routines8.make (yyvsc8)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs8")
			end
			yyvsc8 := yyvsc8 + yyInitial_yyvs_size
			yyvs8 := yyspecial_routines8.resize (yyvs8, yyvsc8)
		end
	end
	yyvs8.put (yyval8, yyvsp8)
end
when 120 then
--|#line 988 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 988")
end

			create yyval26.make(0)
			yyval26.extend(yyvs8.item (yyvsp8 - 1))
			yyval26.extend(yyvs8.item (yyvsp8))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp26 := yyvsp26 + 1
	yyvsp8 := yyvsp8 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp26 >= yyvsc26 then
		if yyvs26 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs26")
			end
			create yyspecial_routines26
			yyvsc26 := yyInitial_yyvs_size
			yyvs26 := yyspecial_routines26.make (yyvsc26)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs26")
			end
			yyvsc26 := yyvsc26 + yyInitial_yyvs_size
			yyvs26 := yyspecial_routines26.resize (yyvs26, yyvsc26)
		end
	end
	yyvs26.put (yyval26, yyvsp26)
end
when 121 then
--|#line 994 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 994")
end

			yyvs26.item (yyvsp26).extend(yyvs8.item (yyvsp8))
			yyval26 := yyvs26.item (yyvsp26)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp8 := yyvsp8 -1
	yyvs26.put (yyval26, yyvsp26)
end
when 122 then
--|#line 999 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 999")
end

			create yyval26.make(0)
			yyval26.extend(yyvs8.item (yyvsp8))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp26 := yyvsp26 + 1
	yyvsp8 := yyvsp8 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp26 >= yyvsc26 then
		if yyvs26 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs26")
			end
			create yyspecial_routines26
			yyvsc26 := yyInitial_yyvs_size
			yyvs26 := yyspecial_routines26.make (yyvsc26)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs26")
			end
			yyvsc26 := yyvsc26 + yyInitial_yyvs_size
			yyvs26 := yyspecial_routines26.resize (yyvs26, yyvsc26)
		end
	end
	yyvs26.put (yyval26, yyvsp26)
end
when 123 then
--|#line 1006 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1006")
end

			create date_time_interval.make_bounded(yyvs8.item (yyvsp8 - 1), yyvs8.item (yyvsp8), True, True)
			yyval34 := date_time_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 5
	yyvsp34 := yyvsp34 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp8 := yyvsp8 -2
	if yyvsp34 >= yyvsc34 then
		if yyvs34 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs34")
			end
			create yyspecial_routines34
			yyvsc34 := yyInitial_yyvs_size
			yyvs34 := yyspecial_routines34.make (yyvsc34)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs34")
			end
			yyvsc34 := yyvsc34 + yyInitial_yyvs_size
			yyvs34 := yyspecial_routines34.resize (yyvs34, yyvsc34)
		end
	end
	yyvs34.put (yyval34, yyvsp34)
end
when 124 then
--|#line 1011 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1011")
end

			create date_time_interval.make_lower_unbounded(yyvs8.item (yyvsp8), False)
			yyval34 := date_time_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp34 := yyvsp34 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp8 := yyvsp8 -1
	if yyvsp34 >= yyvsc34 then
		if yyvs34 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs34")
			end
			create yyspecial_routines34
			yyvsc34 := yyInitial_yyvs_size
			yyvs34 := yyspecial_routines34.make (yyvsc34)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs34")
			end
			yyvsc34 := yyvsc34 + yyInitial_yyvs_size
			yyvs34 := yyspecial_routines34.resize (yyvs34, yyvsc34)
		end
	end
	yyvs34.put (yyval34, yyvsp34)
end
when 125 then
--|#line 1016 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1016")
end

			create date_time_interval.make_lower_unbounded(yyvs8.item (yyvsp8), True)
			yyval34 := date_time_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp34 := yyvsp34 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp8 := yyvsp8 -1
	if yyvsp34 >= yyvsc34 then
		if yyvs34 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs34")
			end
			create yyspecial_routines34
			yyvsc34 := yyInitial_yyvs_size
			yyvs34 := yyspecial_routines34.make (yyvsc34)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs34")
			end
			yyvsc34 := yyvsc34 + yyInitial_yyvs_size
			yyvs34 := yyspecial_routines34.resize (yyvs34, yyvsc34)
		end
	end
	yyvs34.put (yyval34, yyvsp34)
end
when 126 then
--|#line 1021 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1021")
end

			create date_time_interval.make_upper_unbounded(yyvs8.item (yyvsp8), False)
			yyval34 := date_time_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp34 := yyvsp34 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp8 := yyvsp8 -1
	if yyvsp34 >= yyvsc34 then
		if yyvs34 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs34")
			end
			create yyspecial_routines34
			yyvsc34 := yyInitial_yyvs_size
			yyvs34 := yyspecial_routines34.make (yyvsc34)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs34")
			end
			yyvsc34 := yyvsc34 + yyInitial_yyvs_size
			yyvs34 := yyspecial_routines34.resize (yyvs34, yyvsc34)
		end
	end
	yyvs34.put (yyval34, yyvsp34)
end
when 127 then
--|#line 1026 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1026")
end

			create date_time_interval.make_upper_unbounded(yyvs8.item (yyvsp8), True)
			yyval34 := date_time_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp34 := yyvsp34 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp8 := yyvsp8 -1
	if yyvsp34 >= yyvsc34 then
		if yyvs34 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs34")
			end
			create yyspecial_routines34
			yyvsc34 := yyInitial_yyvs_size
			yyvs34 := yyspecial_routines34.make (yyvsc34)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs34")
			end
			yyvsc34 := yyvsc34 + yyInitial_yyvs_size
			yyvs34 := yyspecial_routines34.resize (yyvs34, yyvsc34)
		end
	end
	yyvs34.put (yyval34, yyvsp34)
end
when 128 then
--|#line 1031 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1031")
end

			create date_time_interval.make_point(yyvs8.item (yyvsp8))
			yyval34 := date_time_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp34 := yyvsp34 + 1
	yyvsp1 := yyvsp1 -2
	yyvsp8 := yyvsp8 -1
	if yyvsp34 >= yyvsc34 then
		if yyvs34 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs34")
			end
			create yyspecial_routines34
			yyvsc34 := yyInitial_yyvs_size
			yyvs34 := yyspecial_routines34.make (yyvsc34)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs34")
			end
			yyvsc34 := yyvsc34 + yyInitial_yyvs_size
			yyvs34 := yyspecial_routines34.resize (yyvs34, yyvsc34)
		end
	end
	yyvs34.put (yyval34, yyvsp34)
end
when 129 then
--|#line 1038 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1038")
end

			if is_valid_iso8601_duration(yyvs4.item (yyvsp4)) then
				create yyval10.make_from_string(yyvs4.item (yyvsp4))
			else
				raise_error
				report_error("invalid ISO8601 duration: " + yyvs4.item (yyvsp4))
				abort
			end
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp10 := yyvsp10 + 1
	yyvsp4 := yyvsp4 -1
	if yyvsp10 >= yyvsc10 then
		if yyvs10 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs10")
			end
			create yyspecial_routines10
			yyvsc10 := yyInitial_yyvs_size
			yyvs10 := yyspecial_routines10.make (yyvsc10)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs10")
			end
			yyvsc10 := yyvsc10 + yyInitial_yyvs_size
			yyvs10 := yyspecial_routines10.resize (yyvs10, yyvsc10)
		end
	end
	yyvs10.put (yyval10, yyvsp10)
end
when 130 then
--|#line 1048 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1048")
end

			if is_valid_iso8601_duration(yyvs4.item (yyvsp4)) then
				create yyval10.make_from_string(yyvs4.item (yyvsp4))
				yyval10.set_sign_negative
			else
				raise_error
				report_error("invalid ISO8601 duration: " + yyvs4.item (yyvsp4))
				abort
			end
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 2
	yyvsp10 := yyvsp10 + 1
	yyvsp1 := yyvsp1 -1
	yyvsp4 := yyvsp4 -1
	if yyvsp10 >= yyvsc10 then
		if yyvs10 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs10")
			end
			create yyspecial_routines10
			yyvsc10 := yyInitial_yyvs_size
			yyvs10 := yyspecial_routines10.make (yyvsc10)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs10")
			end
			yyvsc10 := yyvsc10 + yyInitial_yyvs_size
			yyvs10 := yyspecial_routines10.resize (yyvs10, yyvsc10)
		end
	end
	yyvs10.put (yyval10, yyvsp10)
end
when 131 then
--|#line 1061 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1061")
end

			create yyval27.make(0)
			yyval27.extend(yyvs10.item (yyvsp10 - 1))
			yyval27.extend(yyvs10.item (yyvsp10))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp27 := yyvsp27 + 1
	yyvsp10 := yyvsp10 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp27 >= yyvsc27 then
		if yyvs27 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs27")
			end
			create yyspecial_routines27
			yyvsc27 := yyInitial_yyvs_size
			yyvs27 := yyspecial_routines27.make (yyvsc27)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs27")
			end
			yyvsc27 := yyvsc27 + yyInitial_yyvs_size
			yyvs27 := yyspecial_routines27.resize (yyvs27, yyvsc27)
		end
	end
	yyvs27.put (yyval27, yyvsp27)
end
when 132 then
--|#line 1067 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1067")
end

			yyvs27.item (yyvsp27).extend(yyvs10.item (yyvsp10))
			yyval27 := yyvs27.item (yyvsp27)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp10 := yyvsp10 -1
	yyvs27.put (yyval27, yyvsp27)
end
when 133 then
--|#line 1072 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1072")
end

			create yyval27.make(0)
			yyval27.extend(yyvs10.item (yyvsp10))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp27 := yyvsp27 + 1
	yyvsp10 := yyvsp10 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp27 >= yyvsc27 then
		if yyvs27 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs27")
			end
			create yyspecial_routines27
			yyvsc27 := yyInitial_yyvs_size
			yyvs27 := yyspecial_routines27.make (yyvsc27)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs27")
			end
			yyvsc27 := yyvsc27 + yyInitial_yyvs_size
			yyvs27 := yyspecial_routines27.resize (yyvs27, yyvsc27)
		end
	end
	yyvs27.put (yyval27, yyvsp27)
end
when 134 then
--|#line 1079 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1079")
end

			create duration_interval.make_bounded(yyvs10.item (yyvsp10 - 1), yyvs10.item (yyvsp10), True, True)
			yyval35 := duration_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 5
	yyvsp35 := yyvsp35 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp10 := yyvsp10 -2
	if yyvsp35 >= yyvsc35 then
		if yyvs35 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs35")
			end
			create yyspecial_routines35
			yyvsc35 := yyInitial_yyvs_size
			yyvs35 := yyspecial_routines35.make (yyvsc35)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs35")
			end
			yyvsc35 := yyvsc35 + yyInitial_yyvs_size
			yyvs35 := yyspecial_routines35.resize (yyvs35, yyvsc35)
		end
	end
	yyvs35.put (yyval35, yyvsp35)
end
when 135 then
--|#line 1084 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1084")
end

			create duration_interval.make_lower_unbounded(yyvs10.item (yyvsp10), False)
			yyval35 := duration_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp35 := yyvsp35 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp10 := yyvsp10 -1
	if yyvsp35 >= yyvsc35 then
		if yyvs35 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs35")
			end
			create yyspecial_routines35
			yyvsc35 := yyInitial_yyvs_size
			yyvs35 := yyspecial_routines35.make (yyvsc35)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs35")
			end
			yyvsc35 := yyvsc35 + yyInitial_yyvs_size
			yyvs35 := yyspecial_routines35.resize (yyvs35, yyvsc35)
		end
	end
	yyvs35.put (yyval35, yyvsp35)
end
when 136 then
--|#line 1089 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1089")
end

			create duration_interval.make_lower_unbounded(yyvs10.item (yyvsp10), True)
			yyval35 := duration_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp35 := yyvsp35 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp10 := yyvsp10 -1
	if yyvsp35 >= yyvsc35 then
		if yyvs35 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs35")
			end
			create yyspecial_routines35
			yyvsc35 := yyInitial_yyvs_size
			yyvs35 := yyspecial_routines35.make (yyvsc35)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs35")
			end
			yyvsc35 := yyvsc35 + yyInitial_yyvs_size
			yyvs35 := yyspecial_routines35.resize (yyvs35, yyvsc35)
		end
	end
	yyvs35.put (yyval35, yyvsp35)
end
when 137 then
--|#line 1094 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1094")
end

			create duration_interval.make_upper_unbounded(yyvs10.item (yyvsp10), False)
			yyval35 := duration_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp35 := yyvsp35 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp10 := yyvsp10 -1
	if yyvsp35 >= yyvsc35 then
		if yyvs35 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs35")
			end
			create yyspecial_routines35
			yyvsc35 := yyInitial_yyvs_size
			yyvs35 := yyspecial_routines35.make (yyvsc35)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs35")
			end
			yyvsc35 := yyvsc35 + yyInitial_yyvs_size
			yyvs35 := yyspecial_routines35.resize (yyvs35, yyvsc35)
		end
	end
	yyvs35.put (yyval35, yyvsp35)
end
when 138 then
--|#line 1099 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1099")
end

			create duration_interval.make_upper_unbounded(yyvs10.item (yyvsp10), True)
			yyval35 := duration_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 4
	yyvsp35 := yyvsp35 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp10 := yyvsp10 -1
	if yyvsp35 >= yyvsc35 then
		if yyvs35 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs35")
			end
			create yyspecial_routines35
			yyvsc35 := yyInitial_yyvs_size
			yyvs35 := yyspecial_routines35.make (yyvsc35)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs35")
			end
			yyvsc35 := yyvsc35 + yyInitial_yyvs_size
			yyvs35 := yyspecial_routines35.resize (yyvs35, yyvsc35)
		end
	end
	yyvs35.put (yyval35, yyvsp35)
end
when 139 then
--|#line 1104 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1104")
end

			create duration_interval.make_point(yyvs10.item (yyvsp10))
			yyval35 := duration_interval
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp35 := yyvsp35 + 1
	yyvsp1 := yyvsp1 -2
	yyvsp10 := yyvsp10 -1
	if yyvsp35 >= yyvsc35 then
		if yyvs35 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs35")
			end
			create yyspecial_routines35
			yyvsc35 := yyInitial_yyvs_size
			yyvs35 := yyspecial_routines35.make (yyvsc35)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs35")
			end
			yyvsc35 := yyvsc35 + yyInitial_yyvs_size
			yyvs35 := yyspecial_routines35.resize (yyvs35, yyvsc35)
		end
	end
	yyvs35.put (yyval35, yyvsp35)
end
when 140 then
--|#line 1111 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1111")
end

			create term.make(yyvs4.item (yyvsp4))
			yyval11 := term
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp11 := yyvsp11 + 1
	yyvsp4 := yyvsp4 -1
	if yyvsp11 >= yyvsc11 then
		if yyvs11 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs11")
			end
			create yyspecial_routines11
			yyvsc11 := yyInitial_yyvs_size
			yyvs11 := yyspecial_routines11.make (yyvsc11)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs11")
			end
			yyvsc11 := yyvsc11 + yyInitial_yyvs_size
			yyvs11 := yyspecial_routines11.resize (yyvs11, yyvsc11)
		end
	end
	yyvs11.put (yyval11, yyvsp11)
end
when 141 then
--|#line 1118 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1118")
end

			create yyval28.make(0)
			yyval28.extend(yyvs11.item (yyvsp11 - 1))
			yyval28.extend(yyvs11.item (yyvsp11))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp28 := yyvsp28 + 1
	yyvsp11 := yyvsp11 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp28 >= yyvsc28 then
		if yyvs28 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs28")
			end
			create yyspecial_routines28
			yyvsc28 := yyInitial_yyvs_size
			yyvs28 := yyspecial_routines28.make (yyvsc28)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs28")
			end
			yyvsc28 := yyvsc28 + yyInitial_yyvs_size
			yyvs28 := yyspecial_routines28.resize (yyvs28, yyvsc28)
		end
	end
	yyvs28.put (yyval28, yyvsp28)
end
when 142 then
--|#line 1124 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1124")
end

			yyvs28.item (yyvsp28).extend(yyvs11.item (yyvsp11))
			yyval28 := yyvs28.item (yyvsp28)
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp11 := yyvsp11 -1
	yyvs28.put (yyval28, yyvsp28)
end
when 143 then
--|#line 1129 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1129")
end

			create yyval28.make(0)
			yyval28.extend(yyvs11.item (yyvsp11))
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 3
	yyvsp28 := yyvsp28 + 1
	yyvsp11 := yyvsp11 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp28 >= yyvsc28 then
		if yyvs28 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs28")
			end
			create yyspecial_routines28
			yyvsc28 := yyInitial_yyvs_size
			yyvs28 := yyspecial_routines28.make (yyvsc28)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs28")
			end
			yyvsc28 := yyvsc28 + yyInitial_yyvs_size
			yyvs28 := yyspecial_routines28.resize (yyvs28, yyvsc28)
		end
	end
	yyvs28.put (yyval28, yyvsp28)
end
when 144 then
--|#line 1136 "dadl2_validator.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'dadl2_validator.y' at line 1136")
end

			create a_uri.make_from_string(yyvs4.item (yyvsp4))
			yyval12 := a_uri
		
if yy_parsing_status = yyContinue then
	yyssp := yyssp - 1
	yyvsp12 := yyvsp12 + 1
	yyvsp4 := yyvsp4 -1
	if yyvsp12 >= yyvsc12 then
		if yyvs12 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs12")
			end
			create yyspecial_routines12
			yyvsc12 := yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.make (yyvsc12)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs12")
			end
			yyvsc12 := yyvsc12 + yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.resize (yyvs12, yyvsc12)
		end
	end
	yyvs12.put (yyval12, yyvsp12)
end
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown rule id: ")
					std.error.put_integer (yy_act)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_do_error_action (yy_act: INTEGER) is
			-- Execute error action.
		do
			inspect yy_act
			when 247 then
					-- End-of-file expected action.
				report_eof_expected_error
			else
					-- Default action.
				report_error ("parse error")
			end
		end

feature {NONE} -- Table templates

	yytranslate_template: SPECIAL [INTEGER] is
		once
			Result := yyfixed_array (<<
			    0,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			   38,   40,    2,   41,   39,   42,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,   35,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,   36,    2,   37,    2,    2,    2,    2,    2,    2,

			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,

			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    1,    2,    3,    4,
			    5,    6,    7,    8,    9,   10,   11,   12,   13,   14,
			   15,   16,   17,   18,   19,   20,   21,   22,   23,   24,
			   25,   26,   27,   28,   29,   30,   31,   32,   33,   34, yyDummy>>)
		end

	yyr1_template: SPECIAL [INTEGER] is
		once
			Result := yyfixed_array (<<
			    0,   78,   78,   78,   79,   79,   79,   80,   81,   81,
			   82,   82,   57,   57,   55,   55,   56,   83,   84,   84,
			   85,   86,   53,   53,   54,   54,   88,   59,   59,   58,
			   89,   89,   89,   89,   89,   89,   90,   87,   87,   87,
			   87,   87,   87,   87,   87,   87,   87,   70,   70,   70,
			   70,   70,   70,   70,   70,   70,   77,   77,   77,   77,
			   77,   77,   91,   60,   60,   60,   43,   43,   43,   61,
			   61,   61,   71,   71,   71,   71,   71,   71,   44,   44,
			   44,   62,   62,   62,   72,   72,   72,   72,   72,   72,
			   45,   45,   64,   64,   64,   46,   63,   63,   63,   47,

			   65,   65,   65,   74,   74,   74,   74,   74,   74,   49,
			   66,   66,   66,   73,   73,   73,   73,   73,   73,   48,
			   67,   67,   67,   75,   75,   75,   75,   75,   75,   50,
			   50,   68,   68,   68,   76,   76,   76,   76,   76,   76,
			   51,   69,   69,   69,   52, yyDummy>>)
		end

	yytypes1_template: SPECIAL [INTEGER] is
		once
			Result := yyfixed_array (<<
			    1,    1,    4,    4,    1,   13,   13,   13,   13,   13,
			    1,    1,    1,    1,    1,    1,   13,   13,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    4,
			   13,   14,   14,    1,    1,    1,    1,    1,    5,    4,
			    4,    4,    4,    4,    4,    3,    2,    2,    3,    6,
			    5,    7,    8,    9,   10,   12,    1,    1,    1,    1,
			    1,    1,    1,    1,    4,    4,    2,    3,    6,    5,
			    7,    8,    9,   10,   11,   15,   17,   19,   21,   23,
			   24,   25,   26,   27,   28,   29,   30,   31,   32,   33,
			   34,   35,   37,    1,    1,    1,   14,    4,    3,    2,

			    3,    2,    1,    1,    1,    1,    1,    1,    1,    2,
			    3,    7,    8,    9,   10,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    4,    2,    3,    7,
			    8,    9,   10,    2,    3,    7,    8,    9,   10,    2,
			    3,    7,    8,    9,   10,    2,    3,    7,    8,    9,
			   10,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    4,    1,    1,    1,    2,    1,
			    1,    1,    3,    1,    6,    1,    5,    1,    7,    1,
			    8,    1,    9,    1,    1,   10,    1,   11,    4,    2,

			    3,    5,    6,    7,    9,    8,   10,   11,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    2,    3,    7,    8,    9,   10,    4,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1, yyDummy>>)
		end

	yytypes2_template: SPECIAL [INTEGER] is
		once
			Result := yyfixed_array (<<
			    1,    1,    1,    2,    3,    4,    4,    4,    4,    4,
			    4,    4,    4,    4,    4,    4,    4,    5,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1, yyDummy>>)
		end

	yydefact_template: SPECIAL [INTEGER] is
		once
			Result := yyfixed_array (<<
			    0,   26,    0,    0,    3,   12,   22,   13,   14,    2,
			    1,    4,    0,    0,    0,    9,   23,   15,    0,    5,
			    0,    0,    0,   18,    0,   24,    0,    6,   26,    0,
			   10,   27,   11,    7,    0,    0,   91,   90,   95,  144,
			  129,  119,  109,   99,   62,   78,   66,   38,   39,   40,
			   41,   42,   44,   43,   45,   46,    0,   37,   16,   19,
			    0,   25,    0,    0,  140,   62,   38,   39,   40,   41,
			   42,   44,   43,   45,   33,   47,   48,   49,   51,   50,
			   52,   53,   54,   55,   34,   31,   56,   57,   59,   58,
			   60,   61,   32,   30,    0,   35,   28,  130,   80,   68,

			   79,   67,   21,   20,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,   29,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,   77,    0,   89,    0,  108,    0,  128,    0,  118,
			    0,  139,    0,   65,   63,    0,    0,   71,   69,    0,
			    0,   83,   81,   94,   92,   98,   96,  102,  100,  122,
			  120,  112,  110,    0,  133,  131,  143,  141,   64,   70,

			   82,   97,   93,  101,  111,  121,  132,  142,    0,   76,
			   88,  107,  127,  117,  138,   74,   86,  105,  125,  115,
			  136,   75,   87,  106,  126,  116,  137,   73,   85,  104,
			  124,  114,  135,    0,    0,    0,    0,    0,    0,    0,
			   72,   84,  103,  123,  113,  134,   36,    0,    0,    0, yyDummy>>)
		end

	yydefgoto_template: SPECIAL [INTEGER] is
		once
			Result := yyfixed_array (<<
			   47,   48,   49,   50,   51,   52,   53,   54,   74,   55,
			    5,    6,    7,    8,   30,   31,   32,   75,   76,   77,
			   78,   79,   80,   81,   82,   83,   84,   85,   86,   87,
			   88,   89,   90,   91,   92,  247,   10,   11,   12,   33,
			   13,   22,   23,   24,   56,   14,   94,   95,   57, yyDummy>>)
		end

	yypact_template: SPECIAL [INTEGER] is
		once
			Result := yyfixed_array (<<
			  122,  242,   54,  259, -32768, -32768, -32768, -32768, -32768, -32768,
			    1, -32768,  256,  239,  135, -32768, -32768, -32768,  237, -32768,
			   58,   17,   35, -32768,  251, -32768,  100, -32768,  149,  245,
			 -32768, -32768, -32768, -32768,  158,  190, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768,  235, -32768, -32768, -32768,
			   58, -32768,  236,  178, -32768,  234,  231,  230,  229,  228,
			  227,  226,  225,  223,  222,  221,  220,  219,  218,  217,
			  216,  215,  214,  177,  176, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768,  195, -32768, -32768, -32768, -32768, -32768,

			 -32768, -32768, -32768, -32768,  233,    7,    7,    7,    7,  171,
			  147,  118,   76,   75,  -15,  125,    0,   15,  152,   47,
			   53,  112,  116,   18,   48,  232,   11,    9,  196,  156,
			  192,  189,  191,  -10,  224, -32768,  163,  213,  212,  211,
			  210,  209,  208,  207,  206,  205,  204,  203,  202,  201,
			  200,  199,  198,  197,  188,  187,  182,  181,  180,  179,
			  175, -32768,   11, -32768,    9, -32768,  192, -32768,  191, -32768,
			  189, -32768,  -10, -32768, -32768,  194,  193, -32768, -32768,  174,
			  166, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768,  138, -32768, -32768, -32768, -32768, -32768, -32768,

			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,   60, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768,  140,  127,  119,  109,  107,   79,   25,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768,   30,    5, -32768, yyDummy>>)
		end

	yypgoto_template: SPECIAL [INTEGER] is
		once
			Result := yyfixed_array (<<
			   10,    3,   -5,  -26,  -16,  -20,  -24,  -28,   21, -32768,
			 -32768,   65, -32768,   43,  241,  253, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768,  238,  111, -32768,  157,
			 -32768, -32768,  257, -32768,  252, -32768, -32768, -32768, -32768, yyDummy>>)
		end

	yytable_template: SPECIAL [INTEGER] is
		once
			Result := yyfixed_array (<<
			   73,   40,   69,   46,   72,  249,  172,    2,   71,  171,
			   46,   45,   70,   45,   46,   43,   42,   41,   40,   45,
			   46,   45,  177,   68,   44,   43,   42,   41,   40,   40,
			  248,   67,  193,   39,   38,  114,   18,  181,   66,  113,
			  194,  176,  175,  112,   37,   36,   17,  111,   35,   34,
			  180,  179,  176,  175,   58,   15,  180,  179,   35,   34,
			  193,   43,   64,   29,   38,  246,  110,  239,   16,  185,
			  196,   21,   17,  109,   -8,  187,   28,  142,  148,  154,
			  160,  141,  147,  153,  159,  140,  146,  152,  158,  139,
			  145,  151,  157,  186,   16,  195,  170,  168,  192,  169,

			  167,  190,  201,  245,  188,  206,    2,  204,  138,  144,
			  150,  156,  205,  184,  203,  137,  143,  149,  155,   61,
			  182,   19,   41,    4,  202,   42,  178,    3,    2,   27,
			  200,  244,  174,  243,  189,   18,  199,   19,  191,  166,
			    1,    2,  165,  242,  238,  197,  237,  173,  236,   97,
			  235,  241,   46,   45,   25,  207,   65,   43,   42,   41,
			   40,   99,   98,   64,  240,   39,   38,  234,  164,   97,
			  100,  163,  233,   63,  183,   62,   37,   36,   98,   37,
			   36,   46,   45,   37,   36,  -17,   43,   42,   41,   40,
			   35,   34,  162,  101,  100,  161,  101,   99,   42,  232,

			   43,   41,  208,  231,  230,  229,  228,  108,  107,  106,
			  105,  227,  226,   38,  135,  134,  133,  103,    0,   35,
			   34,  225,  224,  223,  222,  221,  220,  219,  218,  217,
			  216,  215,  214,  213,  212,  211,  210,  209,   64,  198,
			  136,    9,    0,    2,    0,    0,    0,    0,    0,    0,
			    0,    0,   26,  132,  131,  130,  129,  128,  127,  126,
			  125,  124,  123,   28,  122,  121,  120,  119,  118,  117,
			  116,   60,  102,  115,  104,   21,   20,    1,  -17,   59,
			   93,    0,   96, yyDummy>>)
		end

	yycheck_template: SPECIAL [INTEGER] is
		once
			Result := yyfixed_array (<<
			   28,   11,   28,    3,   28,    0,   21,    6,   28,   24,
			    3,    4,   28,    4,    3,    8,    9,   10,   11,    4,
			    3,    4,   22,   28,    7,    8,    9,   10,   11,   11,
			    0,   28,   42,   16,   17,   63,   35,   22,   28,   63,
			   22,   41,   42,   63,   27,   28,    3,   63,   41,   42,
			   41,   42,   41,   42,   19,    1,   41,   42,   41,   42,
			   42,    8,   14,    5,   17,   40,   63,    7,    3,   22,
			   22,   36,   29,   63,   20,   22,   18,  105,  106,  107,
			  108,  105,  106,  107,  108,  105,  106,  107,  108,  105,
			  106,  107,  108,  119,   29,  123,   21,   21,  122,   24,

			   24,  121,  128,   24,  120,  133,    6,  131,  105,  106,
			  107,  108,  132,  118,  130,  105,  106,  107,  108,   19,
			  117,   10,   10,    1,  129,    9,  116,    5,    6,   18,
			  127,   24,    7,   24,   22,   35,  126,   26,   22,   21,
			   18,    6,   24,   24,  172,  124,  170,   22,  168,   11,
			  166,   24,    3,    4,   19,  134,    7,    8,    9,   10,
			   11,    3,    4,   14,   24,   16,   17,  164,   21,   11,
			    4,   24,  162,   24,   22,   26,   27,   28,    4,   27,
			   28,    3,    4,   27,   28,   36,    8,    9,   10,   11,
			   41,   42,   21,    3,    4,   24,    3,    3,    9,   24,

			    8,   10,   39,   24,   24,   24,   24,   29,   30,   31,
			   32,   24,   24,   17,   19,   39,   39,   60,   -1,   41,
			   42,   24,   24,   24,   24,   24,   24,   24,   24,   24,
			   24,   24,   24,   24,   24,   24,   24,   24,   14,    7,
			    7,    0,   -1,    6,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   14,   39,   39,   39,   39,   39,   39,   39,
			   39,   39,   39,   18,   39,   39,   39,   39,   39,   39,
			   39,   20,   37,   39,   38,   36,   20,   18,   36,   22,
			   28,   -1,   29, yyDummy>>)
		end

feature {NONE} -- Semantic value stacks

	yyvs1: SPECIAL [ANY]
			-- Stack for semantic values of type ANY

	yyvsc1: INTEGER
			-- Capacity of semantic value stack `yyvs1'

	yyvsp1: INTEGER
			-- Top of semantic value stack `yyvs1'

	yyspecial_routines1: KL_SPECIAL_ROUTINES [ANY]
			-- Routines that ought to be in SPECIAL [ANY]

	yyvs2: SPECIAL [INTEGER]
			-- Stack for semantic values of type INTEGER

	yyvsc2: INTEGER
			-- Capacity of semantic value stack `yyvs2'

	yyvsp2: INTEGER
			-- Top of semantic value stack `yyvs2'

	yyspecial_routines2: KL_SPECIAL_ROUTINES [INTEGER]
			-- Routines that ought to be in SPECIAL [INTEGER]

	yyvs3: SPECIAL [REAL]
			-- Stack for semantic values of type REAL

	yyvsc3: INTEGER
			-- Capacity of semantic value stack `yyvs3'

	yyvsp3: INTEGER
			-- Top of semantic value stack `yyvs3'

	yyspecial_routines3: KL_SPECIAL_ROUTINES [REAL]
			-- Routines that ought to be in SPECIAL [REAL]

	yyvs4: SPECIAL [STRING]
			-- Stack for semantic values of type STRING

	yyvsc4: INTEGER
			-- Capacity of semantic value stack `yyvs4'

	yyvsp4: INTEGER
			-- Top of semantic value stack `yyvs4'

	yyspecial_routines4: KL_SPECIAL_ROUTINES [STRING]
			-- Routines that ought to be in SPECIAL [STRING]

	yyvs5: SPECIAL [CHARACTER]
			-- Stack for semantic values of type CHARACTER

	yyvsc5: INTEGER
			-- Capacity of semantic value stack `yyvs5'

	yyvsp5: INTEGER
			-- Top of semantic value stack `yyvs5'

	yyspecial_routines5: KL_SPECIAL_ROUTINES [CHARACTER]
			-- Routines that ought to be in SPECIAL [CHARACTER]

	yyvs6: SPECIAL [BOOLEAN]
			-- Stack for semantic values of type BOOLEAN

	yyvsc6: INTEGER
			-- Capacity of semantic value stack `yyvs6'

	yyvsp6: INTEGER
			-- Top of semantic value stack `yyvs6'

	yyspecial_routines6: KL_SPECIAL_ROUTINES [BOOLEAN]
			-- Routines that ought to be in SPECIAL [BOOLEAN]

	yyvs7: SPECIAL [ISO8601_DATE]
			-- Stack for semantic values of type ISO8601_DATE

	yyvsc7: INTEGER
			-- Capacity of semantic value stack `yyvs7'

	yyvsp7: INTEGER
			-- Top of semantic value stack `yyvs7'

	yyspecial_routines7: KL_SPECIAL_ROUTINES [ISO8601_DATE]
			-- Routines that ought to be in SPECIAL [ISO8601_DATE]

	yyvs8: SPECIAL [ISO8601_DATE_TIME]
			-- Stack for semantic values of type ISO8601_DATE_TIME

	yyvsc8: INTEGER
			-- Capacity of semantic value stack `yyvs8'

	yyvsp8: INTEGER
			-- Top of semantic value stack `yyvs8'

	yyspecial_routines8: KL_SPECIAL_ROUTINES [ISO8601_DATE_TIME]
			-- Routines that ought to be in SPECIAL [ISO8601_DATE_TIME]

	yyvs9: SPECIAL [ISO8601_TIME]
			-- Stack for semantic values of type ISO8601_TIME

	yyvsc9: INTEGER
			-- Capacity of semantic value stack `yyvs9'

	yyvsp9: INTEGER
			-- Top of semantic value stack `yyvs9'

	yyspecial_routines9: KL_SPECIAL_ROUTINES [ISO8601_TIME]
			-- Routines that ought to be in SPECIAL [ISO8601_TIME]

	yyvs10: SPECIAL [ISO8601_DURATION]
			-- Stack for semantic values of type ISO8601_DURATION

	yyvsc10: INTEGER
			-- Capacity of semantic value stack `yyvs10'

	yyvsp10: INTEGER
			-- Top of semantic value stack `yyvs10'

	yyspecial_routines10: KL_SPECIAL_ROUTINES [ISO8601_DURATION]
			-- Routines that ought to be in SPECIAL [ISO8601_DURATION]

	yyvs11: SPECIAL [CODE_PHRASE]
			-- Stack for semantic values of type CODE_PHRASE

	yyvsc11: INTEGER
			-- Capacity of semantic value stack `yyvs11'

	yyvsp11: INTEGER
			-- Top of semantic value stack `yyvs11'

	yyspecial_routines11: KL_SPECIAL_ROUTINES [CODE_PHRASE]
			-- Routines that ought to be in SPECIAL [CODE_PHRASE]

	yyvs12: SPECIAL [URI]
			-- Stack for semantic values of type URI

	yyvsc12: INTEGER
			-- Capacity of semantic value stack `yyvs12'

	yyvsp12: INTEGER
			-- Top of semantic value stack `yyvs12'

	yyspecial_routines12: KL_SPECIAL_ROUTINES [URI]
			-- Routines that ought to be in SPECIAL [URI]

	yyvs13: SPECIAL [DT_COMPLEX_OBJECT_NODE]
			-- Stack for semantic values of type DT_COMPLEX_OBJECT_NODE

	yyvsc13: INTEGER
			-- Capacity of semantic value stack `yyvs13'

	yyvsp13: INTEGER
			-- Top of semantic value stack `yyvs13'

	yyspecial_routines13: KL_SPECIAL_ROUTINES [DT_COMPLEX_OBJECT_NODE]
			-- Routines that ought to be in SPECIAL [DT_COMPLEX_OBJECT_NODE]

	yyvs14: SPECIAL [DT_OBJECT_LEAF]
			-- Stack for semantic values of type DT_OBJECT_LEAF

	yyvsc14: INTEGER
			-- Capacity of semantic value stack `yyvs14'

	yyvsp14: INTEGER
			-- Top of semantic value stack `yyvs14'

	yyspecial_routines14: KL_SPECIAL_ROUTINES [DT_OBJECT_LEAF]
			-- Routines that ought to be in SPECIAL [DT_OBJECT_LEAF]

	yyvs15: SPECIAL [ARRAYED_LIST [STRING]]
			-- Stack for semantic values of type ARRAYED_LIST [STRING]

	yyvsc15: INTEGER
			-- Capacity of semantic value stack `yyvs15'

	yyvsp15: INTEGER
			-- Top of semantic value stack `yyvs15'

	yyspecial_routines15: KL_SPECIAL_ROUTINES [ARRAYED_LIST [STRING]]
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [STRING]]

	yyvs16: SPECIAL [INTEGER_REF]
			-- Stack for semantic values of type INTEGER_REF

	yyvsc16: INTEGER
			-- Capacity of semantic value stack `yyvs16'

	yyvsp16: INTEGER
			-- Top of semantic value stack `yyvs16'

	yyspecial_routines16: KL_SPECIAL_ROUTINES [INTEGER_REF]
			-- Routines that ought to be in SPECIAL [INTEGER_REF]

	yyvs17: SPECIAL [ARRAYED_LIST [INTEGER_REF]]
			-- Stack for semantic values of type ARRAYED_LIST [INTEGER_REF]

	yyvsc17: INTEGER
			-- Capacity of semantic value stack `yyvs17'

	yyvsp17: INTEGER
			-- Top of semantic value stack `yyvs17'

	yyspecial_routines17: KL_SPECIAL_ROUTINES [ARRAYED_LIST [INTEGER_REF]]
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [INTEGER_REF]]

	yyvs18: SPECIAL [REAL_REF]
			-- Stack for semantic values of type REAL_REF

	yyvsc18: INTEGER
			-- Capacity of semantic value stack `yyvs18'

	yyvsp18: INTEGER
			-- Top of semantic value stack `yyvs18'

	yyspecial_routines18: KL_SPECIAL_ROUTINES [REAL_REF]
			-- Routines that ought to be in SPECIAL [REAL_REF]

	yyvs19: SPECIAL [ARRAYED_LIST [REAL_REF]]
			-- Stack for semantic values of type ARRAYED_LIST [REAL_REF]

	yyvsc19: INTEGER
			-- Capacity of semantic value stack `yyvs19'

	yyvsp19: INTEGER
			-- Top of semantic value stack `yyvs19'

	yyspecial_routines19: KL_SPECIAL_ROUTINES [ARRAYED_LIST [REAL_REF]]
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [REAL_REF]]

	yyvs20: SPECIAL [CHARACTER_REF]
			-- Stack for semantic values of type CHARACTER_REF

	yyvsc20: INTEGER
			-- Capacity of semantic value stack `yyvs20'

	yyvsp20: INTEGER
			-- Top of semantic value stack `yyvs20'

	yyspecial_routines20: KL_SPECIAL_ROUTINES [CHARACTER_REF]
			-- Routines that ought to be in SPECIAL [CHARACTER_REF]

	yyvs21: SPECIAL [ARRAYED_LIST [CHARACTER_REF]]
			-- Stack for semantic values of type ARRAYED_LIST [CHARACTER_REF]

	yyvsc21: INTEGER
			-- Capacity of semantic value stack `yyvs21'

	yyvsp21: INTEGER
			-- Top of semantic value stack `yyvs21'

	yyspecial_routines21: KL_SPECIAL_ROUTINES [ARRAYED_LIST [CHARACTER_REF]]
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [CHARACTER_REF]]

	yyvs22: SPECIAL [BOOLEAN_REF]
			-- Stack for semantic values of type BOOLEAN_REF

	yyvsc22: INTEGER
			-- Capacity of semantic value stack `yyvs22'

	yyvsp22: INTEGER
			-- Top of semantic value stack `yyvs22'

	yyspecial_routines22: KL_SPECIAL_ROUTINES [BOOLEAN_REF]
			-- Routines that ought to be in SPECIAL [BOOLEAN_REF]

	yyvs23: SPECIAL [ARRAYED_LIST [BOOLEAN_REF]]
			-- Stack for semantic values of type ARRAYED_LIST [BOOLEAN_REF]

	yyvsc23: INTEGER
			-- Capacity of semantic value stack `yyvs23'

	yyvsp23: INTEGER
			-- Top of semantic value stack `yyvs23'

	yyspecial_routines23: KL_SPECIAL_ROUTINES [ARRAYED_LIST [BOOLEAN_REF]]
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [BOOLEAN_REF]]

	yyvs24: SPECIAL [ARRAYED_LIST [ISO8601_DATE]]
			-- Stack for semantic values of type ARRAYED_LIST [ISO8601_DATE]

	yyvsc24: INTEGER
			-- Capacity of semantic value stack `yyvs24'

	yyvsp24: INTEGER
			-- Top of semantic value stack `yyvs24'

	yyspecial_routines24: KL_SPECIAL_ROUTINES [ARRAYED_LIST [ISO8601_DATE]]
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [ISO8601_DATE]]

	yyvs25: SPECIAL [ARRAYED_LIST [ISO8601_TIME]]
			-- Stack for semantic values of type ARRAYED_LIST [ISO8601_TIME]

	yyvsc25: INTEGER
			-- Capacity of semantic value stack `yyvs25'

	yyvsp25: INTEGER
			-- Top of semantic value stack `yyvs25'

	yyspecial_routines25: KL_SPECIAL_ROUTINES [ARRAYED_LIST [ISO8601_TIME]]
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [ISO8601_TIME]]

	yyvs26: SPECIAL [ARRAYED_LIST [ISO8601_DATE_TIME]]
			-- Stack for semantic values of type ARRAYED_LIST [ISO8601_DATE_TIME]

	yyvsc26: INTEGER
			-- Capacity of semantic value stack `yyvs26'

	yyvsp26: INTEGER
			-- Top of semantic value stack `yyvs26'

	yyspecial_routines26: KL_SPECIAL_ROUTINES [ARRAYED_LIST [ISO8601_DATE_TIME]]
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [ISO8601_DATE_TIME]]

	yyvs27: SPECIAL [ARRAYED_LIST [ISO8601_DURATION]]
			-- Stack for semantic values of type ARRAYED_LIST [ISO8601_DURATION]

	yyvsc27: INTEGER
			-- Capacity of semantic value stack `yyvs27'

	yyvsp27: INTEGER
			-- Top of semantic value stack `yyvs27'

	yyspecial_routines27: KL_SPECIAL_ROUTINES [ARRAYED_LIST [ISO8601_DURATION]]
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [ISO8601_DURATION]]

	yyvs28: SPECIAL [ARRAYED_LIST [CODE_PHRASE]]
			-- Stack for semantic values of type ARRAYED_LIST [CODE_PHRASE]

	yyvsc28: INTEGER
			-- Capacity of semantic value stack `yyvs28'

	yyvsp28: INTEGER
			-- Top of semantic value stack `yyvs28'

	yyspecial_routines28: KL_SPECIAL_ROUTINES [ARRAYED_LIST [CODE_PHRASE]]
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [CODE_PHRASE]]

	yyvs29: SPECIAL [ARRAYED_LIST [ANY]]
			-- Stack for semantic values of type ARRAYED_LIST [ANY]

	yyvsc29: INTEGER
			-- Capacity of semantic value stack `yyvs29'

	yyvsp29: INTEGER
			-- Top of semantic value stack `yyvs29'

	yyspecial_routines29: KL_SPECIAL_ROUTINES [ARRAYED_LIST [ANY]]
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [ANY]]

	yyvs30: SPECIAL [OE_INTERVAL [INTEGER_REF]]
			-- Stack for semantic values of type OE_INTERVAL [INTEGER_REF]

	yyvsc30: INTEGER
			-- Capacity of semantic value stack `yyvs30'

	yyvsp30: INTEGER
			-- Top of semantic value stack `yyvs30'

	yyspecial_routines30: KL_SPECIAL_ROUTINES [OE_INTERVAL [INTEGER_REF]]
			-- Routines that ought to be in SPECIAL [OE_INTERVAL [INTEGER_REF]]

	yyvs31: SPECIAL [OE_INTERVAL [REAL_REF]]
			-- Stack for semantic values of type OE_INTERVAL [REAL_REF]

	yyvsc31: INTEGER
			-- Capacity of semantic value stack `yyvs31'

	yyvsp31: INTEGER
			-- Top of semantic value stack `yyvs31'

	yyspecial_routines31: KL_SPECIAL_ROUTINES [OE_INTERVAL [REAL_REF]]
			-- Routines that ought to be in SPECIAL [OE_INTERVAL [REAL_REF]]

	yyvs32: SPECIAL [OE_INTERVAL [ISO8601_TIME]]
			-- Stack for semantic values of type OE_INTERVAL [ISO8601_TIME]

	yyvsc32: INTEGER
			-- Capacity of semantic value stack `yyvs32'

	yyvsp32: INTEGER
			-- Top of semantic value stack `yyvs32'

	yyspecial_routines32: KL_SPECIAL_ROUTINES [OE_INTERVAL [ISO8601_TIME]]
			-- Routines that ought to be in SPECIAL [OE_INTERVAL [ISO8601_TIME]]

	yyvs33: SPECIAL [OE_INTERVAL [ISO8601_DATE]]
			-- Stack for semantic values of type OE_INTERVAL [ISO8601_DATE]

	yyvsc33: INTEGER
			-- Capacity of semantic value stack `yyvs33'

	yyvsp33: INTEGER
			-- Top of semantic value stack `yyvs33'

	yyspecial_routines33: KL_SPECIAL_ROUTINES [OE_INTERVAL [ISO8601_DATE]]
			-- Routines that ought to be in SPECIAL [OE_INTERVAL [ISO8601_DATE]]

	yyvs34: SPECIAL [OE_INTERVAL [ISO8601_DATE_TIME]]
			-- Stack for semantic values of type OE_INTERVAL [ISO8601_DATE_TIME]

	yyvsc34: INTEGER
			-- Capacity of semantic value stack `yyvs34'

	yyvsp34: INTEGER
			-- Top of semantic value stack `yyvs34'

	yyspecial_routines34: KL_SPECIAL_ROUTINES [OE_INTERVAL [ISO8601_DATE_TIME]]
			-- Routines that ought to be in SPECIAL [OE_INTERVAL [ISO8601_DATE_TIME]]

	yyvs35: SPECIAL [OE_INTERVAL [ISO8601_DURATION]]
			-- Stack for semantic values of type OE_INTERVAL [ISO8601_DURATION]

	yyvsc35: INTEGER
			-- Capacity of semantic value stack `yyvs35'

	yyvsp35: INTEGER
			-- Top of semantic value stack `yyvs35'

	yyspecial_routines35: KL_SPECIAL_ROUTINES [OE_INTERVAL [ISO8601_DURATION]]
			-- Routines that ought to be in SPECIAL [OE_INTERVAL [ISO8601_DURATION]]

	yyvs36: SPECIAL [PART_COMPARABLE]
			-- Stack for semantic values of type PART_COMPARABLE

	yyvsc36: INTEGER
			-- Capacity of semantic value stack `yyvs36'

	yyvsp36: INTEGER
			-- Top of semantic value stack `yyvs36'

	yyspecial_routines36: KL_SPECIAL_ROUTINES [PART_COMPARABLE]
			-- Routines that ought to be in SPECIAL [PART_COMPARABLE]

	yyvs37: SPECIAL [OE_INTERVAL [PART_COMPARABLE]]
			-- Stack for semantic values of type OE_INTERVAL [PART_COMPARABLE]

	yyvsc37: INTEGER
			-- Capacity of semantic value stack `yyvs37'

	yyvsp37: INTEGER
			-- Top of semantic value stack `yyvs37'

	yyspecial_routines37: KL_SPECIAL_ROUTINES [OE_INTERVAL [PART_COMPARABLE]]
			-- Routines that ought to be in SPECIAL [OE_INTERVAL [PART_COMPARABLE]]

feature {NONE} -- Constants

	yyFinal: INTEGER is 249
			-- Termination state id

	yyFlag: INTEGER is -32768
			-- Most negative INTEGER

	yyNtbase: INTEGER is 43
			-- Number of tokens

	yyLast: INTEGER is 282
			-- Upper bound of `yytable' and `yycheck'

	yyMax_token: INTEGER is 289
			-- Maximum token id
			-- (upper bound of `yytranslate'.)

	yyNsyms: INTEGER is 92
			-- Number of symbols
			-- (terminal and nonterminal)

feature -- User-defined features



feature -- Initialization

	make is
			-- Create a new Eiffel parser.
		do
			make_eiffel_scanner
			make_parser_skeleton
		end

	execute(in_text:STRING; a_source_start_line: INTEGER) is
		do
			reset
			source_start_line := a_source_start_line

			create indent.make(0)
			create error_text.make(0)

			create complex_object_nodes.make(0)
			create attr_nodes.make(0)

			create time_vc
			create date_vc
	
			set_input_buffer (new_string_buffer (in_text))
			parse
		end

feature {YY_PARSER_ACTION} -- Basic Operations

	report_error (a_message: STRING) is
			-- Print error message.
		local
			f_buffer: YY_FILE_BUFFER
		do
			f_buffer ?= input_buffer
			if f_buffer /= Void then
				error_text.append (f_buffer.file.name)
				error_text.append (", line ")
			else
				error_text.append ("line ")
			end
			error_text.append_integer (in_lineno + source_start_line - 1)
			error_text.append (": ")
			error_text.append (a_message)
			error_text.append (" [last token = " + token_name(last_token) + "]")
			error_text.append_character ('%N')
		end

feature -- Access

	error_text: STRING

	source_start_line: INTEGER
			-- offset of source in other document, else 0

	output: DT_COMPLEX_OBJECT_NODE
			-- parsed structure

feature {NONE} -- Parse Tree

	complex_object_nodes: ARRAYED_STACK[DT_COMPLEX_OBJECT_NODE]
	complex_object_node: DT_COMPLEX_OBJECT_NODE
	leaf_object_node: DT_OBJECT_LEAF
	last_object_node: DT_OBJECT_ITEM

	attr_nodes: ARRAYED_STACK[DT_ATTRIBUTE_NODE]
	attr_node: DT_ATTRIBUTE_NODE

	obj_id: STRING
			-- qualifier of last rel name; use for next object creation

	rm_attr_name: STRING
	node_type: STRING
	node_id: STRING

	time_vc: TIME_VALIDITY_CHECKER
	date_vc: DATE_VALIDITY_CHECKER

feature {NONE} -- Implementation 
	
	term: CODE_PHRASE
	a_uri: URI

	integer_interval: OE_INTERVAL [INTEGER_REF]
	real_interval: OE_INTERVAL [REAL_REF]
	date_interval: OE_INTERVAL [ISO8601_DATE]
	time_interval: OE_INTERVAL [ISO8601_TIME]
	date_time_interval: OE_INTERVAL [ISO8601_DATE_TIME]
	duration_interval: OE_INTERVAL [ISO8601_DURATION]

	indent: STRING
	str: STRING

end
