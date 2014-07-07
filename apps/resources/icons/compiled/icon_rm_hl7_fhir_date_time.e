note
	description: "Icon loader class generated by icon_code_gen"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_RM_HL7_FHIR_DATE_TIME

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/hl7-fhir/date_time"
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
					A(00,00,00,00) A(00,B9,C6,D6) A(00,00,00,00) A(00,6B,84,A4) A(00,00,00,00) A(4A,73,8E,AD) A(0A,BE,AD,9A) A(6F,4E,6D,94) A(27,77,96,BA) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(A7,67,82,A3) A(62,53,70,96) 
					A(B1,3E,63,90) A(FC,2D,51,7E) A(FF,5D,76,97) A(FF,56,6B,86) A(6F,4C,66,87) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(7D,4B,5F,77) A(FF,36,57,80) A(FF,40,61,8A) A(FF,8E,9F,B3) A(FF,D2,D5,D8) A(FE,CB,D5,E1) A(FF,FF,FF,FF) A(FF,97,A1,AD) 
					A(7F,48,63,86) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(93,35,49,62) A(FF,B3,BF,CD) 
					A(FF,F8,F9,FB) A(FF,FE,FE,FE) A(FF,B7,B7,B7) A(FF,D6,D6,D6) A(FF,FF,FF,FF) A(FF,A9,B1,BB) A(8A,39,55,79) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(7E,3B,4E,65) A(FF,95,A5,B8) A(FF,FF,FF,FF) A(FF,96,96,96) A(FF,89,89,89) A(FF,77,77,77) 
					A(FF,FF,FF,FF) A(FF,BB,C2,C9) A(9F,3D,57,78) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(74,4A,5C,70) A(FF,89,99,AE) A(FF,FF,FF,FF) A(FF,E1,E1,E1) A(FF,FF,FF,FF) A(FF,68,68,68) A(FF,FF,FF,FF) A(FF,CC,D1,D7) A(A7,2C,48,6B) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(5F,50,60,74) A(FF,79,8B,A1) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,F3,F3,F3) A(FF,84,84,84) A(FF,FF,FF,FF) A(FF,DC,E0,E3) A(C8,33,4C,6D) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,81,90,A3) 
					A(00,00,00,00) A(00,00,00,00) A(4C,5F,6F,81) A(FF,67,7A,93) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,BD,BD,BD) A(FF,C1,C1,C1) A(FF,FE,FE,FE) A(FF,ED,EE,F0) 
					A(C5,22,3C,5E) A(62,55,78,A3) A(E0,52,77,A2) A(F0,3F,64,90) A(CA,49,6B,94) A(50,63,76,8B) A(00,00,00,00) A(00,00,00,00) A(38,80,8D,9C) A(FF,55,6B,86) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,79,79,79) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FE) A(FF,26,4B,78) A(FF,3B,58,7B) A(FF,A8,B1,BE) A(FF,9B,A2,AA) 
					A(FF,96,A5,B6) A(FF,2E,52,7C) A(8B,50,62,78) A(00,00,00,00) A(1D,9E,A8,B2) A(FF,45,5C,79) A(FF,FF,FF,FF) A(FF,CA,CA,CA) A(FF,90,90,90) A(FF,8A,8A,8A) 
					A(FF,B5,B5,B5) A(FF,AE,BB,CB) A(FF,33,50,72) A(FF,FC,FC,FB) A(FF,FF,FF,FF) A(FF,AE,AE,AE) A(FF,FF,FF,FF) A(FF,DF,E2,E5) A(FF,2A,4B,73) A(1F,3C,38,35) 
					A(10,FF,FF,FF) A(FF,32,4C,6B) A(FF,FF,FF,FF) A(FF,C3,C3,C3) A(FF,B1,B0,B0) A(FE,E6,E3,E0) A(FF,D5,DC,E5) A(FF,51,70,96) A(FF,9D,A2,A8) A(FF,FF,FF,FE) 
					A(FF,FF,FF,FF) A(FF,B1,B2,B2) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FE,71,88,A3) A(91,31,42,55) A(00,00,00,00) A(FF,27,41,62) A(FF,FF,FF,FF) A(FE,BF,C9,D7) 
					A(FF,7B,94,B4) A(FF,35,56,7E) A(A7,3C,5D,86) A(F5,39,5A,82) A(FF,77,84,94) A(FF,F6,F7,F9) A(FF,F4,DF,DF) A(FF,AD,A0,A0) A(FF,AD,AD,AD) A(FF,E7,EC,F3) 
					A(FF,66,7F,9E) A(9C,2E,43,5D) A(00,00,00,00) A(FF,3A,51,6E) A(FF,39,59,82) A(A1,3F,5E,85) A(4C,5C,6A,7B) A(00,00,00,00) A(00,00,00,00) A(CB,47,64,87) 
					A(FE,84,8F,9C) A(FF,F1,DD,DD) A(FF,E2,BA,BA) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,57,76,9C) A(82,34,40,4F) A(00,00,00,00) A(2A,6B,79,8A) 
					A(00,00,00,00) A(00,00,00,00) A(00,FF,FF,FF) A(00,00,00,00) A(00,7D,8A,98) A(4B,61,70,82) A(FF,2A,4C,75) A(FF,D0,C7,CA) A(FF,FF,FF,FF) A(FF,D8,DF,E8) 
					A(FF,FF,FF,FF) A(FF,A4,B6,CA) A(FF,30,4E,71) A(10,BA,B1,A9) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(8B,67,7C,93) A(FF,2E,51,7A) A(FE,6D,89,A9) A(FF,7A,94,B5) A(FF,5D,7F,A8) A(FF,38,56,7B) A(43,62,6A,76) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(24,A1,B2,C5) 
					A(91,5B,71,8D) A(9B,48,63,82) A(87,55,66,7C) A(10,E5,EC,F2) A(00,00,00,00) A(00,00,00,00) ;
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