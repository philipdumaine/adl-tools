note
	description: "Icon loader class generated by icon_code_gen"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_TOOL_TEMPLATE_CATALOG_GREY

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "tool/template_catalog_grey"
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
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) 
					A(FF,00,00,00) A(FF,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,60,60,60) A(FF,60,60,60) A(FF,60,60,60) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(FF,00,00,00) 
					A(FF,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,60,60,60) A(FF,60,60,60) A(FF,60,60,60) A(FF,60,60,60) 
					A(FF,60,60,60) A(FF,60,60,60) A(FF,60,60,60) A(FF,60,60,60) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) 
					A(FF,00,00,00) A(FF,00,00,00) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(00,00,00,00) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,00,00,00) A(FF,00,00,00) 
					A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) 
					A(FF,00,00,00) A(00,00,00,00) A(FF,FF,FF,FF) A(FF,F2,F2,F2) A(FF,60,60,60) A(FF,5D,5D,5D) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,B8,B8,B8) 
					A(FF,92,92,92) A(FF,FF,FF,FF) A(FF,60,60,60) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(00,00,00,00) A(FF,60,60,60) A(FF,60,60,60) 
					A(FF,60,60,60) A(FF,CE,CE,CE) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,B8,B8,B8) A(FF,B8,B8,B8) A(FF,B8,B8,B8) A(FF,60,60,60) A(FF,60,60,60) 
					A(00,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(00,00,00,00) A(FF,60,60,60) A(FF,60,60,60) A(FF,5D,5D,5D) A(FF,CE,CE,CE) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,B9,B9,B9) A(FF,B8,B8,B8) A(FF,B8,B8,B8) A(FF,60,60,60) A(FF,60,60,60) A(00,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(00,00,00,00) 
					A(FF,60,60,60) A(FF,60,60,60) A(FF,CE,CE,CE) A(FF,CE,CE,CE) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,B9,B9,B9) A(FF,B8,B8,B8) A(FF,B8,B8,B8) 
					A(FF,B8,B8,B8) A(FF,60,60,60) A(00,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(00,00,00,00) A(FF,60,60,60) A(FF,5D,5D,5D) A(FF,CE,CE,CE) A(FF,CE,CE,CE) 
					A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,B9,B9,B9) A(FF,B9,B9,B9) A(FF,B8,B8,B8) A(FF,B8,B8,B8) A(FF,60,60,60) A(00,00,00,00) A(FF,00,00,00) 
					A(FF,00,00,00) A(00,00,00,00) A(FF,60,60,60) A(FF,5D,5D,5D) A(FF,FC,FC,FC) A(FF,FC,FC,FC) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,B9,B9,B9) 
					A(FF,B9,B9,B9) A(FF,B8,B8,B8) A(FF,B8,B8,B8) A(FF,60,60,60) A(00,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,5D,5D,5D) 
					A(FF,60,60,60) A(FF,FC,FC,FC) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,B8,B8,B8) A(FF,B9,B9,B9) A(FF,B9,B9,B9) A(FF,B8,B8,B8) A(00,00,00,00) 
					A(00,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,60,60,60) A(FF,5D,5D,5D) A(FF,FF,FF,FF) A(FF,FF,FF,FF) 
					A(FF,FF,FF,FF) A(FF,B8,B8,B8) A(FF,B9,B9,B9) A(FF,B9,B9,B9) A(FF,60,60,60) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,FF,FF,FF) A(FF,B8,B8,B8) A(FF,60,60,60) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) A(FF,00,00,00) 
					A(FF,00,00,00) A(FF,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) ;
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