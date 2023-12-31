#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("p_red", 8, hls_out, 0, "ap_hs", "out_data", 1),
	Port_Property("p_red_ap_vld", 1, hls_out, 0, "ap_hs", "out_vld", 1),
	Port_Property("p_red_ap_ack", 1, hls_in, 0, "ap_hs", "out_acc", 1),
	Port_Property("p_green", 8, hls_out, 1, "ap_hs", "out_data", 1),
	Port_Property("p_green_ap_vld", 1, hls_out, 1, "ap_hs", "out_vld", 1),
	Port_Property("p_green_ap_ack", 1, hls_in, 1, "ap_hs", "out_acc", 1),
	Port_Property("p_blue", 8, hls_out, 2, "ap_hs", "out_data", 1),
	Port_Property("p_blue_ap_vld", 1, hls_out, 2, "ap_hs", "out_vld", 1),
	Port_Property("p_blue_ap_ack", 1, hls_in, 2, "ap_hs", "out_acc", 1),
};
const char* HLS_Design_Meta::dut_name = "mire";
