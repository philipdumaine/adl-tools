note
	description: "Icon loader class generated by icon_code_gen"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_RM_OPENEHR_PARTY_RELATIONSHIP

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/openehr/party_relationship"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,77,7E,88) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(32,A2,A7,B1) 
					A(00,00,00,00) A(00,00,00,00) A(00,FF,FF,FF) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(44,71,78,85) A(EF,40,48,55) A(FF,32,3A,46) A(FF,25,2F,3F) A(FF,20,2A,38) A(FF,2F,39,47) A(B5,4E,58,68) A(01,FF,FF,FF) A(00,A9,B1,BB) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(3D,8C,94,A3) A(FF,32,3F,52) A(FE,4E,61,7E) A(DD,38,42,52) 
					A(7A,52,57,5D) A(FF,3C,4B,62) A(FE,46,57,72) A(FD,38,46,5B) A(E6,4A,56,68) A(33,9F,A7,B5) A(15,BC,C2,CC) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(77,66,72,85) A(FF,4E,5F,7A) A(FF,66,7F,A4) A(FF,5E,75,99) A(B9,70,80,99) A(00,00,00,00) A(95,4E,53,5B) A(FF,64,7C,A2) A(FF,63,7C,A0) 
					A(FE,5D,73,95) A(FF,38,48,61) A(38,AA,B4,C2) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(43,9F,AD,C3) A(FF,74,91,BD) A(FF,73,8F,B9) 
					A(FF,5C,72,93) A(6B,68,6F,79) A(0C,FF,FF,FF) A(FF,4F,60,79) A(FE,6C,86,AE) A(FE,6C,86,AD) A(FF,70,8B,B3) A(FF,71,8E,BA) A(32,BC,C1,CB) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(1D,A7,84,73) A(62,C2,67,3F) A(FF,7E,96,BF) A(FF,6A,83,A8) A(41,86,8E,9A) A(00,00,00,00) A(00,00,00,00) A(02,FF,FF,FF) 
					A(B0,4B,55,64) A(FF,5B,75,9B) A(FF,73,94,C4) A(FF,77,99,C9) A(06,FF,FF,F3) A(00,00,00,00) A(00,9B,70,5E) A(48,91,52,3E) A(FF,9C,2B,02) A(FF,C0,4E,10) 
					A(FF,C7,45,04) A(8E,91,59,48) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,F1,F5,F0) A(54,D1,CB,D9) A(FE,CA,C2,D3) A(FF,E2,DC,E2) A(FF,D3,D0,DC) 
					A(26,DE,DB,DF) A(00,00,00,00) A(00,00,00,00) A(CA,77,26,17) A(FF,9C,39,0E) A(FF,C2,6B,33) A(FE,C7,73,3C) A(B2,D0,93,5E) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(88,C2,AB,A7) A(FF,C5,C3,D4) A(FF,E0,E5,F3) A(FF,DD,DE,E6) A(79,A2,A0,A5) A(00,00,00,00) A(00,00,00,00) A(C5,69,21,13) 
					A(FF,99,4A,21) A(FF,ED,B7,6E) A(FE,EF,BB,75) A(B1,E3,A8,63) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(C8,E1,9C,57) A(FF,EF,B4,69) 
					A(FF,DE,99,4D) A(FE,7D,4D,1E) A(80,32,2A,22) A(00,00,00,00) A(00,00,00,00) A(5C,8C,4B,2F) A(FF,7C,2B,06) A(FF,DF,90,3C) A(FF,DD,92,44) A(7D,9C,92,C1) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(96,E0,97,4F) A(FF,DD,98,50) A(FF,D8,8E,43) A(FF,DD,87,35) A(5B,AC,80,62) A(00,00,00,00) 
					A(00,00,00,00) A(B2,3C,45,B8) A(FF,2F,3D,C3) A(FF,D1,D2,D4) A(FE,EF,F6,F6) A(FF,A7,AB,E0) A(65,7E,86,DA) A(00,BE,C6,FF) A(00,00,00,00) A(00,00,00,00) 
					A(C8,96,99,AC) A(FF,DF,AF,84) A(FF,D2,90,58) A(F2,B4,92,7C) A(00,00,00,00) A(00,AE,B0,B8) A(2C,6E,71,B5) A(FF,0D,14,9C) A(FE,1D,25,A7) A(FF,55,5E,C6) 
					A(FF,E4,E7,DD) A(FF,9A,A0,D9) A(E3,6D,74,D0) A(00,00,00,00) A(00,E6,E9,E7) A(68,AC,A9,BA) A(FF,AD,A0,AC) A(FE,ED,F1,F6) A(FF,C5,CC,D6) A(FE,EA,EA,EB) 
					A(CE,E6,E6,E9) A(00,00,00,00) A(C7,86,88,BD) A(FF,0C,13,93) A(FF,14,1D,A4) A(FF,24,2C,AC) A(FF,75,7C,C3) A(FF,7F,86,C7) A(FF,55,5E,C8) A(00,00,00,00) 
					A(00,00,00,00) A(A5,AA,A5,B8) A(FF,B0,96,A1) A(FF,AE,81,78) A(FF,EB,E3,E8) A(FE,F8,F8,FB) A(FF,E8,E7,EE) A(46,E5,E6,E5) A(FD,B0,B0,C9) A(FF,00,01,89) 
					A(FF,0D,14,98) A(FE,10,19,A0) A(FF,0C,16,A5) A(FF,59,61,BD) A(5E,A1,A4,D3) A(00,00,00,00) A(00,CF,D2,D2) A(3C,BC,BD,C4) A(FF,A2,9E,B4) A(FE,AC,94,9F) 
					A(FE,BA,92,8C) A(FE,D6,D2,E0) A(FF,C9,C4,D4) A(E4,DD,DE,DF) A(00,00,00,00) A(6F,B1,B1,C1) A(7F,4C,4E,9D) A(80,56,59,A5) A(62,9B,9B,BE) A(06,FF,FF,FF) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(03,FF,FF,FF) A(E9,B7,83,73) A(90,B7,A0,A1) A(93,BA,B7,C4) A(68,BF,C0,C3) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,CB,8D,75) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,FF,FF,FF) A(00,00,00,00) ;
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