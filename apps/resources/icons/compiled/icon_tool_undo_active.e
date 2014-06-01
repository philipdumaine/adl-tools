note
	description: "Icon loader class generated by icon_code_gen"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_TOOL_UNDO_ACTIVE

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "tool/undo_active"
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
					A(12,29,5F,D0) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(60,21,51,C6) A(AF,2A,58,C9) A(BF,2F,5D,CB) A(BF,2C,5B,CA) 
					A(BF,27,56,C7) A(70,21,50,C0) A(10,20,4F,C0) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(CC,29,5F,D0) A(10,22,50,C5) A(00,00,00,00) A(00,00,00,00) 
					A(50,22,52,C7) A(DF,36,63,CE) A(FF,4F,7A,DA) A(FF,50,7E,DD) A(FF,45,76,DB) A(FF,3F,72,DA) A(FF,3C,70,DC) A(FF,35,67,D8) A(EF,29,58,C9) A(50,22,50,C0) 
					A(00,00,00,00) A(00,00,00,00) A(FF,29,5F,D0) A(CF,32,5E,C9) A(10,22,51,C4) A(8F,28,57,C8) A(FF,47,72,D4) A(FF,57,83,DE) A(FF,3E,71,D7) A(FF,3A,6F,D7) 
					A(FF,40,74,DC) A(FF,3D,72,DE) A(FF,3B,71,DD) A(FF,3A,70,DB) A(FF,3C,72,DE) A(FF,2F,60,CF) A(50,20,4F,BF) A(00,00,00,00) A(FF,29,5F,D0) A(FF,67,8D,DD) 
					A(EF,2E,5B,C9) A(FF,4F,79,D7) A(FF,50,7F,DC) A(FF,36,6C,D4) A(FF,49,7A,DE) A(FF,3D,6E,D7) A(DF,2C,5D,CD) A(BF,29,5B,CC) A(CF,2A,5C,CC) A(FF,33,66,D4) 
					A(FF,3E,74,E0) A(FF,3E,74,E0) A(EF,29,59,C8) A(10,1A,4A,BC) A(FF,29,5F,D0) A(FF,56,82,DB) A(FF,62,8A,DF) A(FF,53,80,DD) A(FF,37,6C,D5) A(FF,4A,7B,DE) 
					A(EF,35,66,D1) A(70,24,56,C7) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(40,25,58,C5) A(EF,2D,5F,CD) A(FF,41,78,E3) A(FF,38,6C,D8) A(60,25,55,C1) 
					A(FF,29,5F,D0) A(FF,40,71,D6) A(FF,42,74,D7) A(FF,38,6D,D5) A(FF,47,7A,DD) A(FF,34,65,D1) A(30,25,57,C7) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(50,27,5A,C6) A(FF,35,69,D5) A(FF,41,79,E3) A(AF,29,5B,C6) A(FF,29,5F,D0) A(FF,40,72,D6) A(FF,35,6B,D3) A(FF,39,6F,D7) 
					A(FF,47,79,DF) A(DF,26,59,C9) A(10,1C,50,C3) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(CF,27,5C,C9) 
					A(FF,40,7A,E5) A(BF,28,5B,C9) A(FF,29,5F,D0) A(FF,45,76,DA) A(FF,3C,71,D8) A(FF,3A,71,D9) A(FF,36,6F,DD) A(FF,32,69,DC) A(CF,22,57,C9) A(10,20,57,C6) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(80,27,5D,C8) A(FF,41,7B,E4) A(CF,2C,62,CC) A(FF,29,5F,D0) A(FF,29,5F,D0) 
					A(FF,29,5F,D0) A(FF,29,5F,D0) A(FF,29,5F,D0) A(FF,29,5F,D0) A(FF,29,5F,D0) A(CF,23,59,C8) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(50,2A,62,CB) A(FF,3E,78,DE) A(BF,2E,64,CD) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(40,2E,68,CD) A(FF,3E,78,DD) A(AF,2E,66,CC) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(70,32,6E,D0) A(FF,3E,75,DB) A(60,2E,68,CC) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(8F,37,74,D4) 
					A(EF,3A,74,D7) A(10,31,6B,CD) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(CF,3A,79,D7) A(80,39,76,D5) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(20,3F,81,DB) A(DF,3C,7C,D8) A(10,39,77,D5) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(8F,3C,7C,D8) A(40,3D,7C,D8) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(30,39,77,D5) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) ;
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