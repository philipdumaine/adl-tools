note
	description: "Icon loader class generated by icon_code_gen"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_RM_ISO_ELEMENT

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "rm/iso/element"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,AA,B7,C9) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,E5,EA,EE) A(00,00,00,00) A(5B,6E,88,AA) A(C7,4D,70,9C) A(FF,68,86,9D) A(EB,51,71,8E) A(A5,5A,73,97) A(22,CA,CC,CE) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(03,FF,FF,FF) A(E2,6D,88,AB) A(FF,6C,92,87) 
					A(FF,B8,D7,86) A(FF,B4,D2,74) A(FF,9C,BA,61) A(FE,72,90,57) A(FF,42,5B,6D) A(56,98,A0,AA) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(91,50,6C,92) A(FF,77,9A,77) A(FF,B4,D1,70) A(FF,8B,A8,4D) A(FF,81,9E,43) A(FF,82,A0,45) A(FF,85,A2,47) 
					A(FF,76,91,3F) A(FF,3A,4E,59) A(0E,FF,FC,F2) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(13,FF,FF,FF) A(FF,48,67,78) 
					A(FF,9B,B9,59) A(FF,82,9F,44) A(FF,80,9D,42) A(FF,81,9E,43) A(FF,81,9E,43) A(FF,80,9D,42) A(FF,7D,99,41) A(FE,5B,73,3C) A(A7,47,52,63) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(5B,6E,7F,95) A(FF,57,75,5B) A(FF,86,A3,47) A(FF,80,9D,42) A(FF,81,9E,43) A(FF,81,9E,43) 
					A(FF,81,9E,43) A(FF,81,9E,43) A(FF,80,9D,42) A(FF,6B,84,36) A(EB,3A,47,50) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(7F,6E,7D,92) A(FF,58,75,4D) A(FF,80,9D,42) A(FF,81,9E,43) A(FF,81,9E,43) A(FF,81,9E,43) A(FF,81,9E,43) A(FF,81,9E,43) A(FF,81,9E,43) A(FF,6C,85,36) 
					A(FF,43,4F,52) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(5E,80,8C,9C) A(FF,47,62,4C) A(FF,7D,99,3F) A(FF,81,9E,43) 
					A(FF,81,9E,43) A(FF,81,9E,43) A(FF,81,9E,43) A(FF,80,9D,43) A(FF,7F,9C,42) A(FF,62,79,33) A(ED,3F,49,52) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(01,FF,FF,FF) A(FF,3E,54,63) A(FF,71,8A,36) A(FF,7F,9C,42) A(FF,81,9E,43) A(FF,81,9E,43) A(FF,80,9D,43) A(FF,81,9E,43) 
					A(FF,77,91,3F) A(FE,41,54,2C) A(95,61,69,77) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(81,8A,99,AC) 
					A(FF,40,56,4A) A(FF,6E,87,37) A(FF,7D,98,41) A(FF,80,9D,43) A(FF,80,9D,44) A(FF,7D,97,45) A(FE,5B,6E,36) A(FF,3C,4A,56) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(93,93,A1,B6) A(FF,4B,60,64) A(FE,50,64,37) A(FF,66,79,38) 
					A(FF,64,77,3E) A(FF,3F,51,3A) A(F0,46,55,65) A(20,E7,E9,ED) A(00,A1,A8,B1) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(23,D7,E2,F2) A(7F,70,86,A6) A(CC,6F,82,9E) A(B7,66,78,93) A(5B,7F,90,A6) A(03,FF,FF,FF) A(00,AE,B7,C1) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,DC,E3,EB) A(00,00,00,00) A(00,00,00,00) A(00,E6,EB,F0) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
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