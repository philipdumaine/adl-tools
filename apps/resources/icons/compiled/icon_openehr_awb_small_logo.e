note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

class ICON_OPENEHR_AWB_SMALL_LOGO

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "openehr_awb_small_logo"
			make_with_size (32, 32)
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
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FE,FE,FE) A(FF,F2,F4,F6) A(FF,FA,FB,FB) A(FF,FE,FE,FE) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FD,FD,FD) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FA,FB,FC) 
					A(FF,C1,CD,D7) A(FF,91,A8,B9) A(FF,70,8D,A4) A(FF,5C,7C,97) A(FF,C0,C5,C9) A(FF,FB,FB,FB) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,F2,F5,F7) A(FF,49,6C,88) A(FF,2C,55,75) A(FF,56,78,94) A(FF,6D,89,A1) A(FF,94,98,9B) A(FF,F6,F6,F6) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,EF,F2,F5) A(FF,D5,DE,E4) A(FF,C6,D1,DB) A(FF,BC,C9,D4) A(FF,BB,C8,D3) A(FF,C7,D2,DB) 
					A(FF,E3,E8,EC) A(FF,FC,FC,FC) A(FF,FE,FE,FE) A(FF,FD,FD,FD) A(FF,DE,E1,E3) A(FF,87,9B,AC) A(FF,92,A8,BA) A(FF,BC,CA,D4) A(FF,98,9B,9E) A(FF,F3,F3,F3) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,A0,B4,C3) A(FF,35,5F,7F) A(FF,40,5E,76) A(FF,55,6A,7B) 
					A(FF,52,6A,7E) A(FF,38,60,80) A(FF,5A,7B,96) A(FF,A9,B8,C3) A(FF,F1,F2,F3) A(FF,FD,FD,FD) A(FF,C4,D0,D9) A(FF,64,83,9D) A(FF,9F,B2,C2) A(FF,D7,DF,E5) 
					A(FF,9D,9F,A1) A(FF,F0,F0,F0) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FD,FD,FD) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,B6,C5,D0) A(FF,2B,56,79) 
					A(FF,5D,75,87) A(FF,C4,C5,C5) A(FF,EB,EB,EB) A(FF,6A,88,A0) A(FF,53,76,93) A(FF,6D,8B,A2) A(FF,A0,AD,B7) A(FF,ED,ED,EE) A(FF,D2,DA,E1) A(FF,6D,84,97) 
					A(FF,94,A8,B8) A(FF,D5,DE,E4) A(FF,9E,A1,A4) A(FF,EA,EA,EA) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,F5,F6,F8) A(FF,A0,B3,C2) A(FF,68,86,9E) A(FF,C3,CA,CF) A(FF,FB,FB,FB) A(FF,FE,FE,FE) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,DB,E2,E8) A(FF,41,68,86) A(FF,6E,86,99) A(FF,B8,BB,BD) A(FF,FC,FC,FC) A(FF,C2,CC,D5) A(FF,74,89,99) A(FF,9B,AF,C0) A(FF,9B,AD,BA) A(FF,B9,BD,C1) 
					A(FF,F9,F9,F9) A(FF,C0,CA,D1) A(FF,91,A6,B8) A(FF,CB,D5,DD) A(FF,9E,A2,A6) A(FF,E4,E4,E4) A(FF,EE,F2,F4) A(FF,E5,EA,EE) A(FF,FB,FB,FB) A(FF,FE,FE,FE) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,C4,D1,DA) A(FF,22,4F,74) A(FF,3F,66,85) A(FF,6D,83,94) A(FF,E6,E7,E7) A(FF,FD,FD,FD) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,EB,EE,F1) A(FF,5A,7C,96) A(FF,75,8F,A4) A(FF,96,9D,A3) A(FF,AF,BE,CA) A(FF,D3,D8,DB) A(FF,7F,96,A9) A(FF,9B,AF,BF) 
					A(FF,BE,CB,D5) A(FF,9D,A5,AB) A(FF,ED,ED,ED) A(FF,72,8F,A6) A(FF,6A,89,A1) A(FF,BC,CA,D4) A(FF,9D,A3,A8) A(FF,DB,DC,DC) A(FF,7B,95,AB) A(FF,4C,6D,89) 
					A(FF,C8,CC,D0) A(FF,FD,FD,FD) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FE,FE,FE) A(FF,9A,AE,BF) A(FF,43,6A,89) A(FF,6B,7E,8C) A(FF,86,9C,AF) 
					A(FF,A1,AA,B1) A(FF,F2,F3,F3) A(FF,FE,FE,FE) A(FF,FF,FF,FF) A(FF,F5,F7,F8) A(FF,76,91,A8) A(FF,73,8F,A6) A(FF,8A,95,9E) A(FF,90,A2,B0) A(FF,96,9E,A6) ;
					memcpy ((EIF_NATURAL_32 *)$a_ptr + $a_offset, &l_data, sizeof l_data - 1);
				}
			}"
		end
	
	c_colors_1 (a_ptr: POINTER; a_offset: INTEGER)
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
					A(FF,B3,BC,C3) A(FF,8C,9C,AA) A(FF,C3,CF,D8) A(FF,AA,B4,BC) A(FF,CB,CB,CB) A(FF,C4,CC,D2) A(FF,7C,92,A2) A(FF,9C,B0,C0) A(FF,96,9F,A6) A(FF,D4,D4,D5) 
					A(FF,92,A7,B7) A(FF,44,5E,74) A(FF,A5,A7,A9) A(FF,C8,D2,DB) A(FF,A9,B7,C3) A(FF,F3,F3,F4) A(FF,FF,FF,FF) A(FF,FA,FB,FB) A(FF,79,94,AB) A(FF,5E,7F,9A) 
					A(FF,7D,86,8F) A(FF,A7,B3,BD) A(FF,74,8C,9E) A(FF,C4,C9,CC) A(FF,FD,FD,FD) A(FF,FE,FE,FE) A(FF,FC,FD,FD) A(FF,91,A7,B9) A(FF,6C,8A,A2) A(FF,92,A1,AD) 
					A(FF,AD,B3,B9) A(FF,7F,8F,9C) A(FF,A9,B5,BF) A(FF,73,8C,A1) A(FF,B7,C5,D0) A(FF,B2,BC,C5) A(FF,B5,B5,B5) A(FF,F8,F8,F8) A(FF,B3,C2,CD) A(FF,74,91,A7) 
					A(FF,88,96,A1) A(FF,CE,CE,CE) A(FF,F2,F3,F4) A(FF,D1,D2,D3) A(FF,E9,E9,E9) A(FF,D6,DD,E4) A(FF,48,69,84) A(FF,BA,BE,C2) A(FF,FF,FF,FF) A(FF,EE,F1,F4) 
					A(FF,61,81,9B) A(FF,71,8E,A5) A(FF,82,8A,90) A(FF,D8,DA,DC) A(FF,69,87,9F) A(FF,74,89,98) A(FF,E8,E8,E8) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,B3,C3,CE) 
					A(FF,64,84,9D) A(FF,9B,AD,BB) A(FF,AE,B1,B3) A(FF,83,95,A3) A(FF,C7,CA,CB) A(FF,85,97,A6) A(FF,A4,B5,C4) A(FF,A4,AE,B8) A(FF,B4,B4,B4) A(FF,FC,FC,FC) 
					A(FF,D7,DF,E5) A(FF,50,74,91) A(FF,78,8B,9A) A(FF,C6,C6,C6) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FD,FD,FD) A(FF,BA,C8,D3) A(FF,36,5C,79) A(FF,87,8E,95) 
					A(FF,FF,FF,FF) A(FF,E1,E7,EC) A(FF,4D,71,8E) A(FF,83,9C,B1) A(FF,86,8C,91) A(FF,EC,EC,EC) A(FF,AA,BB,C8) A(FF,57,78,91) A(FF,A3,AC,B3) A(FF,F8,F8,F8) 
					A(FF,FE,FE,FE) A(FF,D8,E0,E6) A(FF,5B,7C,97) A(FF,99,AC,BC) A(FF,A1,A6,AA) A(FF,BD,C3,C9) A(FF,CA,CE,D0) A(FF,64,84,9D) A(FF,85,9E,B1) A(FF,80,89,92) 
					A(FF,CD,CD,CD) A(FF,FD,FD,FD) A(FF,EF,F2,F4) A(FF,4A,6E,8C) A(FF,6E,85,97) A(FF,B0,B4,B9) A(FF,CC,D6,DE) A(FF,A0,B3,C3) A(FF,69,87,9F) A(FF,37,5B,78) 
					A(FF,4E,61,70) A(FF,B5,B6,B6) A(FF,FF,FF,FF) A(FF,D1,DA,E1) A(FF,43,69,88) A(FF,9A,AE,BE) A(FF,8E,92,95) A(FF,DF,E3,E5) A(FF,90,A6,B8) A(FF,61,80,9A) 
					A(FF,71,89,9B) A(FF,D8,DA,DB) A(FF,FD,FD,FD) A(FF,F5,F7,F8) A(FF,5B,7C,97) A(FF,94,A9,BB) A(FF,9A,A2,A9) A(FF,DF,DF,E0) A(FF,F2,F2,F4) A(FF,7B,96,AB) 
					A(FF,5E,7A,91) A(FF,7B,80,84) A(FF,ED,ED,ED) A(FF,FE,FE,FE) A(FF,F7,F8,F9) A(FF,5D,7E,98) A(FF,66,84,9B) A(FF,7F,97,AA) A(FF,59,7A,95) A(FF,3A,5C,77) 
					A(FF,44,5A,6C) A(FF,78,7F,86) A(FF,BD,BD,BE) A(FF,F3,F3,F3) A(FF,FF,FF,FF) A(FF,AA,BB,C9) A(FF,50,74,90) A(FF,B4,C2,CD) A(FF,AA,B1,B7) A(FF,8F,A3,B2) 
					A(FF,62,73,82) A(FF,81,8B,93) A(FF,8C,A3,B5) A(FF,97,A3,AD) A(FF,EC,EC,EC) A(FF,FD,FD,FD) A(FF,77,92,A8) A(FF,8A,A2,B5) A(FF,A5,B1,BA) A(FF,C6,C7,C8) 
					A(FF,F4,F6,F7) A(FF,79,94,A9) A(FF,5B,69,76) A(FF,C1,C1,C1) A(FF,FC,FC,FC) A(FF,FF,FF,FF) A(FF,FA,FB,FC) A(FF,7E,98,AC) A(FF,4E,69,80) A(FF,6F,7D,88) 
					A(FF,85,8A,8E) A(FF,AB,AC,AD) A(FF,D6,D6,D6) A(FF,F5,F5,F5) A(FF,FD,FD,FD) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,83,9C,B0) A(FF,59,77,8F) A(FF,C4,CF,D8) 
					A(FF,B4,BA,BF) A(FF,81,87,8C) A(FF,8F,99,A0) A(FF,94,A5,B4) A(FF,8E,A4,B6) A(FF,80,97,A8) A(FF,B7,BD,C2) A(FF,FB,FB,FB) A(FF,9A,AF,BF) A(FF,7F,99,AE) 
					A(FF,B6,C4,CE) A(FF,A3,A9,AD) A(FF,91,A5,B5) A(FF,61,74,83) A(FF,B1,B2,B3) A(FF,F4,F4,F4) A(FF,FE,FE,FE) A(FF,FF,FF,FF) A(FF,FD,FD,FD) A(FF,DA,DE,E2) 
					A(FF,B0,B4,B6) A(FF,D2,D3,D3) A(FF,EF,EF,EF) A(FF,F9,F9,F9) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FA,FB,FC) A(FF,5D,7E,98) 
					A(FF,58,6C,7D) A(FF,BF,CA,D2) A(FF,AD,B3,B9) A(FF,A1,B0,BD) A(FF,73,8A,9C) A(FF,68,7A,88) A(FF,7A,84,8D) A(FF,78,90,A3) A(FF,73,89,9B) A(FF,DD,DE,DF) 
					A(FF,BC,CA,D4) A(FF,6E,8C,A3) A(FF,A8,BA,C8) A(FF,89,99,A6) A(FF,70,7C,85) A(FF,B7,B8,B8) A(FF,F4,F4,F4) A(FF,FE,FE,FE) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FE,FE,FE) A(FF,FD,FD,FD) A(FF,FC,FC,FC) A(FF,FE,FE,FE) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,E5,EA,EE) A(FF,49,6C,88) A(FF,65,77,85) A(FF,B1,BE,C8) A(FF,95,99,9E) A(FF,92,95,98) A(FF,AC,AD,AE) A(FF,CD,CE,CE) A(FF,E8,E8,E8) A(FF,BB,C7,D0) 
					A(FF,49,6D,8A) A(FF,86,93,9F) A(FF,CB,D3,DA) A(FF,62,7E,95) A(FF,6F,7D,89) A(FF,90,93,94) A(FF,D2,D2,D3) A(FF,F9,F9,F9) A(FF,FE,FE,FE) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,CA,D5,DE) A(FF,40,63,81) A(FF,6E,7D,89) A(FF,98,A7,B2) A(FF,9C,9E,A0) A(FF,ED,ED,ED) A(FF,FA,FA,FA) A(FF,FE,FE,FE) 
					A(FF,FE,FE,FE) A(FF,F3,F5,F6) A(FF,92,A2,B0) A(FF,86,8D,92) A(FF,E3,E5,E6) A(FF,BE,C4,C7) A(FF,C2,C2,C3) A(FF,EE,EE,EE) A(FF,FC,FC,FC) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,AB,BC,C9) A(FF,32,5A,7A) A(FF,6E,81,91) A(FF,82,93,A0) A(FF,AB,AD,AF) A(FF,FC,FC,FC) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FE,FE,FE) A(FF,F8,F8,F8) A(FF,F3,F3,F3) A(FF,FC,FC,FC) A(FF,FD,FD,FD) A(FF,FD,FD,FD) A(FF,FE,FE,FE) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,D9,DF,E4) A(FF,72,89,9C) A(FF,63,7E,95) A(FF,61,77,88) 
					A(FF,B4,B6,B7) A(FF,FD,FD,FD) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) 
					A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) 
					A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FE,FE,FE) A(FF,FC,FC,FC) A(FF,EE,EE,EE) 
					A(FF,CB,CF,D2) A(FF,9C,A4,AA) A(FF,D1,D2,D2) A(FF,FE,FE,FE) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) ;
					memcpy ((EIF_NATURAL_32 *)$a_ptr + $a_offset, &l_data, sizeof l_data - 1);
				}
			}"
		end
	
	c_colors_2 (a_ptr: POINTER; a_offset: INTEGER)
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
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) ;
					memcpy ((EIF_NATURAL_32 *)$a_ptr + $a_offset, &l_data, sizeof l_data - 1);
				}
			}"
		end

	build_colors (a_ptr: POINTER)
			-- Build `colors'
		do
			c_colors_0 (a_ptr, 0)
			c_colors_1 (a_ptr, 400)
			c_colors_2 (a_ptr, 800)
		end

end