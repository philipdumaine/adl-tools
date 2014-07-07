note
	description: "Icon loader class generated by icon_code_gen"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_RM_HL7_FHIR_RELATED_PERSON

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/hl7-fhir/related_person"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,92,9C,A8) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,7E,7F,80) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(69,82,8F,9F) A(10,03,18,28) A(00,74,82,91) A(00,00,00,00) A(00,00,00,00) A(7F,56,55,55) A(C8,40,3D,3C) A(BC,50,4E,4C) A(58,76,75,75) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(3F,5E,74,8F) A(7F,46,6C,99) A(7F,45,69,95) A(7F,45,69,95) A(BE,56,73,96) A(FF,3B,58,7A) A(26,92,96,9D) A(00,00,00,00) 
					A(C1,3E,3D,3C) A(FF,1A,17,15) A(FF,34,30,2E) A(FF,4D,49,45) A(FF,50,4D,48) A(71,68,67,65) A(00,00,00,00) A(00,00,00,00) A(7F,49,5E,78) A(FF,4D,74,A5) 
					A(FF,54,7B,AB) A(FF,54,7B,AB) A(FF,55,7B,AC) A(FE,48,6F,9F) A(FF,40,5C,7F) A(32,83,9D,B6) A(FF,54,2D,17) A(FF,2C,24,1D) A(FF,2C,2A,28) A(FF,4D,47,42) 
					A(FF,5B,53,4A) A(FF,40,3D,3B) A(00,00,00,00) A(00,00,00,00) A(83,49,5F,7A) A(FF,35,55,7D) A(FF,37,56,7D) A(FF,36,56,7D) A(FF,35,55,7C) A(FE,3C,5F,8A) 
					A(E4,31,43,59) A(85,A1,6D,5C) A(FF,9D,48,17) A(FF,C3,7D,43) A(FF,E7,B2,80) A(FF,F1,C9,9F) A(FF,99,7E,63) A(FF,18,16,15) A(27,BE,BF,C0) A(00,00,00,00) 
					A(1E,7F,90,A6) A(37,74,8A,A5) A(37,74,8A,A5) A(37,74,8A,A5) A(99,77,89,9E) A(E2,30,43,5B) A(02,FF,FF,FF) A(75,90,5E,54) A(FF,9C,49,18) A(FF,AD,65,2E) 
					A(FF,C4,88,52) A(FF,CE,98,66) A(FF,9A,70,4A) A(FF,64,46,2F) A(04,FF,FF,FF) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(4B,8B,96,A4) A(01,FF,FF,FF) A(00,D3,D7,DC) A(00,00,00,00) A(FF,A1,58,31) A(FF,98,45,17) A(FF,A7,5C,27) A(FF,AE,66,30) A(FF,A6,5A,25) A(8D,9B,61,45) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,FF,FF,FF) A(00,00,00,00) A(51,BB,8D,68) 
					A(DB,B8,81,59) A(FF,93,4D,2B) A(FF,99,3F,0C) A(FF,86,2D,04) A(F5,B3,70,45) A(00,FF,FF,FF) A(00,ED,A4,58) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,B3,84,60) A(3F,A1,67,3F) A(FF,99,40,00) A(FF,D1,A3,6E) A(FF,62,61,D0) A(FF,B8,BB,C9) A(FF,F3,EA,D8) 
					A(FE,FF,B8,58) A(FF,F4,A3,41) A(1F,E0,9F,69) A(00,DF,A8,77) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(DE,9E,57,22) A(FF,A8,4A,00) A(FF,C4,B0,A2) A(FF,68,63,CB) A(FF,F1,EA,DC) A(FF,FC,A7,3A) A(FF,FC,B9,5F) A(FE,F9,A1,34) A(E7,F1,A3,47) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,8E,3C,00) A(FF,AF,4C,00) A(FF,6B,61,A5) A(FF,7F,85,D4) 
					A(FF,FB,98,28) A(FF,EE,93,27) A(FF,EC,97,31) A(FF,FC,A4,34) A(FF,FC,A0,2C) A(2D,BD,97,84) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(0F,E6,FF,FF) A(FF,91,3E,00) A(FF,A1,47,00) A(FF,0C,12,9F) A(FF,8D,49,3F) A(FF,F8,81,03) A(FF,EA,80,0E) A(FF,FD,8F,12) A(FF,FA,96,20) 
					A(FF,FD,91,14) A(F2,DB,BD,A1) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(04,FF,FF,FF) A(FF,8A,4F,24) A(FF,8E,3C,00) 
					A(FF,2C,21,86) A(FF,C8,5E,00) A(FF,B9,58,01) A(FF,E1,70,01) A(FF,F2,7A,02) A(FF,F2,7C,02) A(FE,F1,78,00) A(FF,CD,AE,92) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,9A,98,8E) A(2E,AE,C7,CF) A(F2,8B,62,42) A(FF,88,38,07) A(FE,94,40,00) A(FF,B4,55,00) A(FF,C3,5E,01) 
					A(FF,CA,62,02) A(FF,CB,62,01) A(FF,C3,58,00) A(CD,C1,BD,B9) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,B3,BF,BE) A(00,00,00,00) A(56,A8,B7,B8) A(B1,9A,77,5A) A(E6,A0,6C,44) A(EF,9F,61,2D) A(F0,A4,67,35) A(D0,AA,78,50) A(68,B5,B4,B2) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,EC,F2,F2) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,56,83,8D) A(00,00,00,00) ;
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