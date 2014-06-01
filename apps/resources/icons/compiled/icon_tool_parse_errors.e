note
	description: "Icon loader class generated by icon_code_gen"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_TOOL_PARSE_ERRORS

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "tool/parse_errors"
			make_with_size (16, 16)
			fill_memory
		end

feature {NONE} -- Image data
	
	c_colors_0 (a_ptr: POINTER; a_offset: INTEGER)
			-- Fill `a_ptr' with colors data from `a_offset'.
		external
			"C inline"
		alias
			"{
				{
					#define B(q) #q
					#ifdef EIF_WINDOWS
						#define A(a,r,g,b) B(\x##b\x##g\x##r\x##a)
					#else
						#define A(a,r,g,b) B(\x##r\x##g\x##b\x##a)
					#endif

					char l_data[] =
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,E1,AC,78) A(FF,E4,7B,50) 
					A(FF,E4,7B,50) A(FF,E1,AC,78) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,E1,AC,78) A(FF,E7,49,28) A(FF,EB,18,01) A(FF,EB,18,01) A(FF,EB,18,01) A(FF,EB,18,01) A(FF,E7,49,28) A(FF,E1,AC,78) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,E1,AC,78) A(FF,EB,18,01) A(FF,EB,18,01) 
					A(FF,F1,36,08) A(FF,F4,45,0C) A(FF,F8,55,10) A(FF,F4,45,0C) A(FF,F1,36,08) A(FF,EB,18,01) A(FF,E1,AC,78) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,E7,49,28) A(FF,EB,18,01) A(FF,F4,45,0C) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) 
					A(FF,F8,55,10) A(FF,F4,45,0C) A(FF,E7,49,28) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,E1,AC,78) A(FF,EB,18,01) 
					A(FF,F1,36,08) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F1,36,08) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,E4,7B,50) A(FF,EB,18,01) A(FF,F4,45,0C) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) 
					A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F4,45,0C) A(FF,E4,7B,50) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,E4,7B,50) A(FF,EB,18,01) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) 
					A(FF,F8,55,10) A(FF,E4,7B,50) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,E1,AC,78) A(FF,EB,18,01) A(FF,F4,45,0C) A(FF,F8,55,10) 
					A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F4,45,0C) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,E7,49,28) A(FF,F1,36,08) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) 
					A(FF,F8,55,10) A(FF,F8,55,10) A(FF,EE,67,30) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,E1,AC,78) 
					A(FF,EB,18,01) A(FF,F4,45,0C) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F8,55,10) A(FF,F4,45,0C) A(FF,E1,AC,78) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,E1,AC,78) A(FF,E7,49,28) A(FF,F1,36,08) A(FF,F4,45,0C) 
					A(FF,F8,55,10) A(FF,F4,45,0C) A(FF,EE,68,30) A(FF,E1,AC,78) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,E4,7B,50) A(FF,E4,7B,50) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) ;
					memcpy ((EIF_NATURAL_32 *)$a_ptr + $a_offset, &l_data, sizeof l_data - 1);
				}
			}"
		end

	build_colors (a_ptr: POINTER)
			-- Build `colors'
		do
			c_colors_0 (a_ptr, 0)
		end

end