note
	description: "Icon loader class generated by icon_code_gen"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_RM_OPENEHR_DV_QUANTITY

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/openehr/dv_quantity"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,7B,95,B4) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,4F,79,AC) A(01,FF,FF,FF) A(8F,58,80,B1) A(E7,4E,75,A4) A(FF,51,76,A3) 
					A(FF,4E,73,A0) A(CE,4F,72,9D) A(48,62,7C,9D) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,68,82,A1) A(0A,CA,DB,EA) A(E9,43,6B,9D) A(FE,3E,65,94) A(FF,3E,5E,85) A(E9,4D,6B,8E) A(FD,42,63,8B) A(FF,3C,61,8E) A(FF,3C,62,8F) A(6C,4E,64,80) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(A5,4B,6F,9A) A(FE,3F,66,95) A(E8,3E,5A,7A) 
					A(0B,FF,FF,FF) A(00,00,00,00) A(00,00,00,00) A(97,4F,6A,8C) A(FF,3D,64,92) A(FF,3A,5B,82) A(04,FF,FF,D9) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,41,66,92) A(FF,3A,60,8C) A(4F,5B,65,74) A(00,7E,8A,9A) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(FF,42,64,8D) A(FF,3D,64,92) A(4E,36,47,5B) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(27,95,A9,BF) A(FF,3A,61,8E) 
					A(FF,34,55,7E) A(14,FF,FF,FC) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(D3,43,65,8E) A(FE,3E,66,96) A(81,43,56,6F) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(38,7E,94,B0) A(FF,3B,61,8E) A(FF,34,54,7B) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(C6,43,66,90) A(FF,3F,67,96) A(7F,37,4C,67) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(22,86,9A,B0) A(FF,3A,60,8D) A(FF,36,59,83) A(17,B5,A9,9A) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(E6,48,6A,94) A(FF,3D,65,94) 
					A(73,4D,5D,71) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,3F,62,8C) A(FF,3D,64,92) A(5C,45,56,6B) 
					A(00,00,00,00) A(00,00,00,00) A(00,88,A6,C9) A(11,76,93,B6) A(FF,3F,65,93) A(FF,35,59,83) A(34,8B,8F,96) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(AA,44,62,86) A(FE,3F,66,95) A(F7,3D,5F,88) A(52,6D,8A,AC) A(10,B0,C3,DA) A(37,7E,A0,CC) A(E4,4D,74,A2) 
					A(FE,3F,66,95) A(D8,45,5D,7A) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,98,A7,BA) A(0A,E7,EA,F2) 
					A(EA,42,62,87) A(FF,3B,62,8F) A(FF,3D,65,94) A(FF,3F,68,99) A(FF,3F,67,97) A(FF,3B,61,8F) A(FF,3A,5F,8C) A(88,5D,75,92) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,6C,86,A6) A(00,00,00,00) A(62,59,72,90) A(A0,45,62,85) A(B7,49,66,88) 
					A(9B,43,5E,82) A(67,57,6D,89) A(FF,3B,5D,87) A(FF,3D,64,93) A(E2,47,6B,95) A(2C,5A,6C,85) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,BA,CD,E2) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(21,7D,94,B1) A(D9,45,64,8A) 
					A(FF,37,5C,89) A(85,4B,5E,74) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,7E,96,B5) A(00,00,00,00) A(37,7C,93,AE) A(1A,62,77,8E) A(00,00,00,00) A(00,00,00,00) 
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