note
	description: "Icon loader class generated by icon_code_gen"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_TOOL_REDO_INACTIVE

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "tool/redo_inactive"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,82,82,82) A(FF,80,80,80) A(FF,8F,8F,8F) A(FF,92,92,92) A(FF,91,91,91) A(FF,8A,8A,8A) A(FF,83,83,83) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,90,90,90) A(00,00,00,00) A(00,00,00,00) A(FF,82,82,82) A(FF,9C,9C,9C) 
					A(FF,BF,BF,BF) A(FF,BF,BF,BF) A(FF,B4,B4,B4) A(FF,B4,B4,B4) A(FF,B6,B6,B6) A(FF,A9,A9,A9) A(FF,92,92,92) A(FF,89,89,89) A(00,00,00,00) A(00,00,00,00) 
					A(FF,93,93,93) A(FF,9A,9A,9A) A(00,00,00,00) A(FF,7E,7E,7E) A(FF,AD,AD,AD) A(FF,C8,C8,C8) A(FF,B6,B6,B6) A(FF,BA,BA,BA) A(FF,B8,B8,B8) A(FF,B1,B1,B1) 
					A(FF,A5,A5,A5) A(FF,A7,A7,A7) A(FF,AE,AE,AE) A(FF,9C,9C,9C) A(FF,90,90,90) A(FF,94,94,94) A(FF,99,99,99) A(FF,9A,9A,9A) A(FF,83,83,83) A(FF,98,98,98) 
					A(FF,CC,CC,CC) A(FF,C6,C6,C6) A(FF,AB,AB,AB) A(FF,92,92,92) A(FF,8D,8D,8D) A(FF,8D,8D,8D) A(FF,A0,A0,A0) A(FF,AB,AB,AB) A(FF,A7,A7,A7) A(FF,B1,B1,B1) 
					A(FF,A6,A6,A6) A(FF,98,98,98) A(FF,B8,B8,B8) A(FF,9A,9A,9A) A(FF,84,84,84) A(FF,C2,C2,C2) A(FF,CE,CE,CE) A(FF,99,99,99) A(FF,80,80,80) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,81,81,81) A(FF,93,93,93) A(FF,AD,AD,AD) A(FF,AF,AF,AF) A(FF,B8,B8,B8) A(FF,B8,B8,B8) A(FF,C2,C2,C2) A(FF,9A,9A,9A) 
					A(FF,8F,8F,8F) A(FF,CF,CF,CF) A(FF,AE,AE,AE) A(FF,83,83,83) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,88,88,88) 
					A(FF,99,99,99) A(FF,B3,B3,B3) A(FF,B4,B4,B4) A(FF,BB,BB,BB) A(FF,BF,BF,BF) A(FF,9A,9A,9A) A(FF,98,98,98) A(FF,CD,CD,CD) A(FF,92,92,92) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,8B,8B,8B) A(FF,90,90,90) A(FF,B0,B0,B0) A(FF,AD,AD,AD) A(FF,AE,AE,AE) 
					A(FF,B2,B2,B2) A(FF,9A,9A,9A) A(FF,95,95,95) A(FF,C5,C5,C5) A(FF,8A,8A,8A) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,8C,8C,8C) A(FF,92,92,92) A(FF,AF,AF,AF) A(FF,B5,B5,B5) A(FF,B4,B4,B4) A(FF,B6,B6,B6) A(FF,B9,B9,B9) A(FF,9A,9A,9A) A(FF,98,98,98) A(FF,B5,B5,B5) 
					A(FF,8D,8D,8D) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,9A,9A,9A) A(FF,9A,9A,9A) A(FF,9A,9A,9A) A(FF,9A,9A,9A) 
					A(FF,9A,9A,9A) A(FF,9A,9A,9A) A(FF,9A,9A,9A) A(FF,9A,9A,9A) A(FF,8F,8F,8F) A(FF,A5,A5,A5) A(FF,77,77,77) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,84,84,84) A(FF,93,93,93) A(FF,79,79,79) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,75,75,75) A(FF,86,86,86) A(FF,7E,7E,7E) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,7D,7D,7D) A(FF,7E,7E,7E) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,7B,7B,7B) 
					A(FF,7D,7D,7D) A(FF,80,80,80) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,7F,7F,7F) A(FF,82,82,82) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,83,83,83) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
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