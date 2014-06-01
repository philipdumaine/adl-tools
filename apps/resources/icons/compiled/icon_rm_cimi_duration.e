note
	description: "Icon loader class generated by icon_code_gen"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_RM_CIMI_DURATION

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/cimi/duration"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(19,A4,B0,BD) A(41,4A,6C,94) A(5D,54,74,9A) A(59,59,76,9B) A(38,4C,6A,8D) 
					A(0E,F3,EC,E5) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(43,50,71,9A) 
					A(E5,5F,80,A8) A(FF,9C,B0,C9) A(FF,9F,B1,C8) A(FF,A2,B3,C9) A(FF,9D,AE,C5) A(FF,A1,B2,C6) A(FF,9D,AE,C2) A(F4,73,89,A4) A(50,55,6C,87) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,37,59,81) A(FE,E1,DF,DB) A(FF,1E,43,6F) A(FF,2A,4F,7C) A(FF,30,55,84) 
					A(FF,31,57,84) A(FF,2C,51,7F) A(FF,1A,3B,65) A(FE,B8,BB,BF) A(FF,3D,4D,60) A(04,FF,FF,FF) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(83,4F,62,7A) A(FF,42,57,71) A(FF,70,7B,8A) A(FF,6D,79,87) A(FF,6B,76,84) A(FF,67,72,81) A(FF,6B,75,82) A(FF,79,80,8B) A(FF,58,63,70) 
					A(BF,40,51,64) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(11,FF,FF,FF) A(FF,1C,36,56) A(FF,A4,AA,B1) 
					A(FF,9A,A1,A0) A(FF,84,8E,91) A(FF,79,83,83) A(FF,83,8D,94) A(FF,8A,95,A4) A(FF,1B,34,53) A(59,58,5D,64) A(00,B9,BF,C8) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(14,FF,FF,FF) A(FF,29,3F,59) A(FF,8D,94,9B) A(FF,E0,C0,35) A(FF,F6,DA,49) A(FF,FB,E3,54) A(FF,D7,C2,4C) 
					A(FF,79,84,94) A(F4,40,54,6D) A(5C,48,4D,56) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(14,FF,FF,FF) 
					A(EC,30,43,5C) A(CB,3D,50,68) A(FE,BC,B0,85) A(FF,D7,B2,15) A(FF,C0,A0,12) A(FE,9C,91,6D) A(E4,3D,50,67) A(A1,4A,62,80) A(5C,48,4D,56) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(14,FF,FF,FF) A(F7,31,44,5C) A(00,00,00,00) A(C3,41,55,6E) A(FF,B4,AC,87) 
					A(FF,90,8F,80) A(EE,4F,63,7D) A(14,7B,7A,7E) A(A7,42,5B,78) A(5C,48,4C,56) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(11,FF,FF,FF) A(F7,30,43,5B) A(00,00,00,00) A(00,00,00,00) A(F6,5B,61,58) A(F8,4C,57,62) A(00,00,00,00) A(00,00,00,00) A(A7,47,5E,7A) 
					A(5C,52,57,5F) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FB,37,4A,61) A(00,00,00,00) 
					A(35,3F,61,89) A(FF,93,95,86) A(FD,52,5D,67) A(18,7A,8C,9E) A(00,00,00,00) A(9F,44,5B,77) A(5C,5E,62,69) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FA,3A,4C,62) A(47,36,55,78) A(FF,A7,AF,B2) A(FE,FF,EA,43) A(FE,D3,B7,4D) A(FF,72,81,97) 
					A(40,57,68,7C) A(82,20,3C,5D) A(59,5B,5F,66) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FD,3D,4F,66) A(FE,8D,9B,B2) A(FE,FA,DC,3A) A(FF,FF,DF,23) A(FF,FF,DB,21) A(FE,CC,B4,5B) A(FF,60,71,86) A(98,37,4E,69) A(35,04,0A,15) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(75,45,64,88) A(FF,1C,32,4E) A(FF,E7,E6,E3) A(FF,C9,AA,29) A(FF,BF,9A,08) 
					A(FF,BA,97,0B) A(FF,B0,94,24) A(FF,DF,E2,E8) A(FF,1C,33,50) A(98,39,4D,65) A(01,FF,FF,FF) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(2C,82,8E,9E) A(FF,56,66,7B) A(FF,42,5B,7A) A(FF,24,41,66) A(FF,83,99,B8) A(FF,AC,BB,D0) A(FF,AC,BC,D3) A(FF,8C,A4,C5) A(FF,38,59,81) A(FF,27,46,69) 
					A(FF,63,73,85) A(7C,41,4E,5E) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(85,3E,56,72) A(FF,53,68,81) A(FF,5A,6D,83) 
					A(FF,56,69,80) A(FF,53,68,82) A(FE,51,65,7E) A(FF,52,65,7B) A(FF,5A,6C,81) A(FF,5D,6F,85) A(BD,43,5B,77) A(0C,CE,CF,D0) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(2F,5B,71,8B) A(5C,3A,54,70) A(7C,46,61,7F) A(80,46,61,81) A(68,39,54,73) 
					A(4B,62,73,88) A(09,FF,FF,FF) A(00,00,00,00) A(00,B5,BE,C7) A(00,00,00,00) A(00,00,00,00) ;
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