# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_AXILiteS {
mem_ddr_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
}
dict set axilite_register_dict AXILiteS $port_AXILiteS


