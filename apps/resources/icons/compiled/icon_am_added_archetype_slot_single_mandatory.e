note
	description: "Icon loader class generated by icon_code_gen"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_AM_ADDED_ARCHETYPE_SLOT_SINGLE_MANDATORY

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "am/added/archetype_slot.single_mandatory"
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
					A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) 
					A(FF,00,00,80) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,80) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) 
					A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,80) 
					A(FF,00,00,80) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) A(FF,EC,EC,EC) A(FF,FE,FE,FE) A(FF,B7,B7,B7) A(FF,6A,6A,6A) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) 
					A(FF,B7,B7,B7) A(FF,C2,C2,C2) A(FF,AC,AC,AC) A(FF,4B,4B,4B) A(FF,FF,FF,FF) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(FF,00,00,80) A(FF,00,00,80) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) A(FF,81,81,81) A(FF,9D,9D,9D) A(FF,7C,7C,7C) A(FF,7E,7E,7E) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,80) A(FF,00,00,80) A(00,00,00,00) 
					A(FF,00,00,80) A(FF,01,34,8D) A(FF,E7,E7,E7) A(FF,5D,5D,5D) A(FF,C1,C1,C1) A(FF,FF,FF,FF) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,FF,FF,FF) 
					A(FF,AC,AC,AC) A(FF,BB,BB,BB) A(FF,80,80,80) A(FF,00,00,80) A(FF,00,00,80) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) A(FF,CC,CC,CC) A(FF,A5,A5,A5) 
					A(FF,FF,FF,FF) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,A0,A0,A0) A(FF,E6,E6,E6) A(FF,DF,DF,DF) A(FF,00,00,80) A(FF,00,00,80) 
					A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,01,34,8D) A(FF,CE,CE,CE) A(FF,96,96,96) A(FF,67,67,67) A(FF,6B,6B,6B) A(FF,6B,6B,6B) A(FF,6B,6B,6B) 
					A(FF,6B,6B,6B) A(FF,92,92,92) A(FF,B8,B8,B8) A(FF,B0,B0,B0) A(FF,90,90,90) A(FF,67,67,67) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) 
					A(FF,FD,FD,FD) A(FF,90,90,90) A(FF,DE,DE,DE) A(FF,C8,C8,C8) A(FF,C8,C8,C8) A(FF,C8,C8,C8) A(FF,CF,CF,CF) A(FF,7D,7D,7D) A(FF,8D,8D,8D) A(FF,A8,A8,A8) 
					A(FF,78,78,78) A(FF,79,79,79) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) A(FF,FF,FF,FF) A(FF,9E,9E,9E) A(FF,FF,FF,FF) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,E6,E6,E6) A(FF,93,93,93) A(FF,70,70,70) A(FF,85,85,85) A(FF,FF,FF,FF) A(00,00,00,00) A(00,00,00,00) 
					A(FF,00,00,80) A(FF,01,34,8D) A(FF,FF,FF,FF) A(FF,9E,9E,9E) A(FF,FF,FF,FF) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(FF,FF,FF,FF) A(00,00,00,00) A(FF,D4,D4,D4) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) A(FF,FF,FF,FF) A(FF,9E,9E,9E) 
					A(FF,FF,FF,FF) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,EE,EE,EE) A(FF,A2,A2,A2) A(FF,94,94,94) A(FF,7E,7E,7E) A(FF,FB,FB,FB) 
					A(00,00,00,00) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) A(FF,FF,FF,FF) A(FF,A0,A0,A0) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,87,87,87) A(FF,E2,E2,E2) A(FF,D0,D0,D0) A(FF,8A,8A,8A) A(FF,4D,4D,4D) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) 
					A(FF,FF,FF,FF) A(FF,8A,8A,8A) A(FF,55,55,55) A(FF,58,58,58) A(FF,58,58,58) A(FF,58,58,58) A(FF,55,55,55) A(FF,90,90,90) A(FF,9F,9F,9F) A(FF,A1,A1,A1) 
					A(FF,84,84,84) A(FF,73,73,73) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,80) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) 
					A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(FF,00,00,80) A(00,00,00,00) 
					A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) 
					A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) A(FF,01,34,8D) ;
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