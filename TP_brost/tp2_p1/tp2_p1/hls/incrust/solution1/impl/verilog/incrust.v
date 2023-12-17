// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="incrust,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.918000,HLS_SYN_LAT=922561,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=312,HLS_SYN_LUT=543,HLS_VERSION=2019_2}" *)

module incrust (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        s_axis_video_TDATA,
        s_axis_video_TVALID,
        s_axis_video_TREADY,
        s_axis_video_TKEEP,
        s_axis_video_TSTRB,
        s_axis_video_TUSER,
        s_axis_video_TLAST,
        s_axis_video_TID,
        s_axis_video_TDEST,
        m_axis_video_TDATA,
        m_axis_video_TVALID,
        m_axis_video_TREADY,
        m_axis_video_TKEEP,
        m_axis_video_TSTRB,
        m_axis_video_TUSER,
        m_axis_video_TLAST,
        m_axis_video_TID,
        m_axis_video_TDEST,
        s_axi_AXILiteS_AWVALID,
        s_axi_AXILiteS_AWREADY,
        s_axi_AXILiteS_AWADDR,
        s_axi_AXILiteS_WVALID,
        s_axi_AXILiteS_WREADY,
        s_axi_AXILiteS_WDATA,
        s_axi_AXILiteS_WSTRB,
        s_axi_AXILiteS_ARVALID,
        s_axi_AXILiteS_ARREADY,
        s_axi_AXILiteS_ARADDR,
        s_axi_AXILiteS_RVALID,
        s_axi_AXILiteS_RREADY,
        s_axi_AXILiteS_RDATA,
        s_axi_AXILiteS_RRESP,
        s_axi_AXILiteS_BVALID,
        s_axi_AXILiteS_BREADY,
        s_axi_AXILiteS_BRESP
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;
parameter    C_S_AXI_AXILITES_DATA_WIDTH = 32;
parameter    C_S_AXI_AXILITES_ADDR_WIDTH = 5;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_AXILITES_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] s_axis_video_TDATA;
input   s_axis_video_TVALID;
output   s_axis_video_TREADY;
input  [0:0] s_axis_video_TKEEP;
input  [0:0] s_axis_video_TSTRB;
input  [0:0] s_axis_video_TUSER;
input  [0:0] s_axis_video_TLAST;
input  [0:0] s_axis_video_TID;
input  [0:0] s_axis_video_TDEST;
output  [7:0] m_axis_video_TDATA;
output   m_axis_video_TVALID;
input   m_axis_video_TREADY;
output  [0:0] m_axis_video_TKEEP;
output  [0:0] m_axis_video_TSTRB;
output  [0:0] m_axis_video_TUSER;
output  [0:0] m_axis_video_TLAST;
output  [0:0] m_axis_video_TID;
output  [0:0] m_axis_video_TDEST;
input   s_axi_AXILiteS_AWVALID;
output   s_axi_AXILiteS_AWREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_AWADDR;
input   s_axi_AXILiteS_WVALID;
output   s_axi_AXILiteS_WREADY;
input  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_WDATA;
input  [C_S_AXI_AXILITES_WSTRB_WIDTH - 1:0] s_axi_AXILiteS_WSTRB;
input   s_axi_AXILiteS_ARVALID;
output   s_axi_AXILiteS_ARREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_ARADDR;
output   s_axi_AXILiteS_RVALID;
input   s_axi_AXILiteS_RREADY;
output  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_RDATA;
output  [1:0] s_axi_AXILiteS_RRESP;
output   s_axi_AXILiteS_BVALID;
input   s_axi_AXILiteS_BREADY;
output  [1:0] s_axi_AXILiteS_BRESP;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg s_axis_video_TREADY;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] start_x;
wire   [31:0] start_y;
wire   [5:0] balle_V_address0;
reg    balle_V_ce0;
wire   [0:0] balle_V_q0;
reg    s_axis_video_TDATA_blk_n;
wire    ap_CS_fsm_state4;
reg    m_axis_video_TDATA_blk_n;
wire    ap_CS_fsm_state5;
reg   [31:0] start_y_read_reg_364;
reg   [31:0] start_x_read_reg_369;
wire   [31:0] add_ln25_fu_182_p2;
reg   [31:0] add_ln25_reg_374;
wire   [31:0] add_ln25_1_fu_188_p2;
reg   [31:0] add_ln25_1_reg_379;
wire   [8:0] i_fu_209_p2;
reg   [8:0] i_reg_387;
wire    ap_CS_fsm_state2;
wire    regslice_both_m_axis_video_V_data_V_U_apdone_blk;
wire   [0:0] and_ln25_1_fu_231_p2;
reg   [0:0] and_ln25_1_reg_392;
wire   [0:0] icmp_ln20_fu_203_p2;
wire   [9:0] j_fu_247_p2;
reg   [9:0] j_reg_400;
wire    ap_CS_fsm_state3;
wire   [0:0] and_ln25_2_fu_278_p2;
reg   [0:0] and_ln25_2_reg_405;
wire   [0:0] icmp_ln22_fu_241_p2;
reg   [8:0] i_0_reg_160;
reg   [9:0] j_0_reg_171;
wire  signed [63:0] sext_ln26_fu_283_p1;
reg   [31:0] pixel_1_fu_88;
wire   [31:0] pixel_2_fu_294_p3;
wire   [31:0] zext_ln20_fu_199_p1;
wire   [0:0] icmp_ln25_fu_215_p2;
wire   [0:0] xor_ln25_fu_220_p2;
wire   [0:0] icmp_ln25_1_fu_226_p2;
wire   [31:0] zext_ln22_fu_237_p1;
wire   [0:0] icmp_ln25_2_fu_256_p2;
wire   [0:0] xor_ln25_1_fu_261_p2;
wire   [0:0] icmp_ln25_3_fu_267_p2;
wire   [0:0] and_ln25_fu_272_p2;
wire  signed [31:0] sext_ln26_fu_283_p0;
wire  signed [31:0] pixel_fu_288_p1;
wire   [31:0] pixel_fu_288_p2;
wire  signed [31:0] pixel_2_fu_294_p2;
wire   [7:0] select_ln321_fu_341_p3;
reg   [4:0] ap_NS_fsm;
wire    regslice_both_s_axis_video_V_data_V_U_apdone_blk;
wire   [7:0] s_axis_video_TDATA_int;
wire    s_axis_video_TVALID_int;
reg    s_axis_video_TREADY_int;
wire    regslice_both_s_axis_video_V_data_V_U_ack_in;
wire    regslice_both_s_axis_video_V_keep_V_U_apdone_blk;
wire   [0:0] s_axis_video_TKEEP_int;
wire    regslice_both_s_axis_video_V_keep_V_U_vld_out;
wire    regslice_both_s_axis_video_V_keep_V_U_ack_in;
wire    regslice_both_s_axis_video_V_strb_V_U_apdone_blk;
wire   [0:0] s_axis_video_TSTRB_int;
wire    regslice_both_s_axis_video_V_strb_V_U_vld_out;
wire    regslice_both_s_axis_video_V_strb_V_U_ack_in;
wire    regslice_both_s_axis_video_V_user_V_U_apdone_blk;
wire   [0:0] s_axis_video_TUSER_int;
wire    regslice_both_s_axis_video_V_user_V_U_vld_out;
wire    regslice_both_s_axis_video_V_user_V_U_ack_in;
wire    regslice_both_s_axis_video_V_last_V_U_apdone_blk;
wire   [0:0] s_axis_video_TLAST_int;
wire    regslice_both_s_axis_video_V_last_V_U_vld_out;
wire    regslice_both_s_axis_video_V_last_V_U_ack_in;
wire    regslice_both_s_axis_video_V_id_V_U_apdone_blk;
wire   [0:0] s_axis_video_TID_int;
wire    regslice_both_s_axis_video_V_id_V_U_vld_out;
wire    regslice_both_s_axis_video_V_id_V_U_ack_in;
wire    regslice_both_s_axis_video_V_dest_V_U_apdone_blk;
wire   [0:0] s_axis_video_TDEST_int;
wire    regslice_both_s_axis_video_V_dest_V_U_vld_out;
wire    regslice_both_s_axis_video_V_dest_V_U_ack_in;
wire   [7:0] m_axis_video_TDATA_int;
reg    m_axis_video_TVALID_int;
wire    m_axis_video_TREADY_int;
wire    regslice_both_m_axis_video_V_data_V_U_vld_out;
wire    regslice_both_m_axis_video_V_keep_V_U_apdone_blk;
wire    regslice_both_m_axis_video_V_keep_V_U_ack_in_dummy;
wire    regslice_both_m_axis_video_V_keep_V_U_vld_out;
wire    regslice_both_m_axis_video_V_strb_V_U_apdone_blk;
wire    regslice_both_m_axis_video_V_strb_V_U_ack_in_dummy;
wire    regslice_both_m_axis_video_V_strb_V_U_vld_out;
wire    regslice_both_m_axis_video_V_user_V_U_apdone_blk;
wire    regslice_both_m_axis_video_V_user_V_U_ack_in_dummy;
wire    regslice_both_m_axis_video_V_user_V_U_vld_out;
wire    regslice_both_m_axis_video_V_last_V_U_apdone_blk;
wire    regslice_both_m_axis_video_V_last_V_U_ack_in_dummy;
wire    regslice_both_m_axis_video_V_last_V_U_vld_out;
wire    regslice_both_m_axis_video_V_id_V_U_apdone_blk;
wire    regslice_both_m_axis_video_V_id_V_U_ack_in_dummy;
wire    regslice_both_m_axis_video_V_id_V_U_vld_out;
wire    regslice_both_m_axis_video_V_dest_V_U_apdone_blk;
wire    regslice_both_m_axis_video_V_dest_V_U_ack_in_dummy;
wire    regslice_both_m_axis_video_V_dest_V_U_vld_out;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
end

incrust_balle_V #(
    .DataWidth( 1 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
balle_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(balle_V_address0),
    .ce0(balle_V_ce0),
    .q0(balle_V_q0)
);

incrust_AXILiteS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXILITES_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXILITES_DATA_WIDTH ))
incrust_AXILiteS_s_axi_U(
    .AWVALID(s_axi_AXILiteS_AWVALID),
    .AWREADY(s_axi_AXILiteS_AWREADY),
    .AWADDR(s_axi_AXILiteS_AWADDR),
    .WVALID(s_axi_AXILiteS_WVALID),
    .WREADY(s_axi_AXILiteS_WREADY),
    .WDATA(s_axi_AXILiteS_WDATA),
    .WSTRB(s_axi_AXILiteS_WSTRB),
    .ARVALID(s_axi_AXILiteS_ARVALID),
    .ARREADY(s_axi_AXILiteS_ARREADY),
    .ARADDR(s_axi_AXILiteS_ARADDR),
    .RVALID(s_axi_AXILiteS_RVALID),
    .RREADY(s_axi_AXILiteS_RREADY),
    .RDATA(s_axi_AXILiteS_RDATA),
    .RRESP(s_axi_AXILiteS_RRESP),
    .BVALID(s_axi_AXILiteS_BVALID),
    .BREADY(s_axi_AXILiteS_BREADY),
    .BRESP(s_axi_AXILiteS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .start_x(start_x),
    .start_y(start_y)
);

regslice_both #(
    .DataWidth( 8 ))
regslice_both_s_axis_video_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(s_axis_video_TDATA),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_s_axis_video_V_data_V_U_ack_in),
    .data_out(s_axis_video_TDATA_int),
    .vld_out(s_axis_video_TVALID_int),
    .ack_out(s_axis_video_TREADY_int),
    .apdone_blk(regslice_both_s_axis_video_V_data_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_s_axis_video_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(s_axis_video_TKEEP),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_s_axis_video_V_keep_V_U_ack_in),
    .data_out(s_axis_video_TKEEP_int),
    .vld_out(regslice_both_s_axis_video_V_keep_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int),
    .apdone_blk(regslice_both_s_axis_video_V_keep_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_s_axis_video_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(s_axis_video_TSTRB),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_s_axis_video_V_strb_V_U_ack_in),
    .data_out(s_axis_video_TSTRB_int),
    .vld_out(regslice_both_s_axis_video_V_strb_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int),
    .apdone_blk(regslice_both_s_axis_video_V_strb_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_s_axis_video_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(s_axis_video_TUSER),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_s_axis_video_V_user_V_U_ack_in),
    .data_out(s_axis_video_TUSER_int),
    .vld_out(regslice_both_s_axis_video_V_user_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int),
    .apdone_blk(regslice_both_s_axis_video_V_user_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_s_axis_video_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(s_axis_video_TLAST),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_s_axis_video_V_last_V_U_ack_in),
    .data_out(s_axis_video_TLAST_int),
    .vld_out(regslice_both_s_axis_video_V_last_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int),
    .apdone_blk(regslice_both_s_axis_video_V_last_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_s_axis_video_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(s_axis_video_TID),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_s_axis_video_V_id_V_U_ack_in),
    .data_out(s_axis_video_TID_int),
    .vld_out(regslice_both_s_axis_video_V_id_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int),
    .apdone_blk(regslice_both_s_axis_video_V_id_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_s_axis_video_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(s_axis_video_TDEST),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_s_axis_video_V_dest_V_U_ack_in),
    .data_out(s_axis_video_TDEST_int),
    .vld_out(regslice_both_s_axis_video_V_dest_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int),
    .apdone_blk(regslice_both_s_axis_video_V_dest_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 8 ))
regslice_both_m_axis_video_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(m_axis_video_TDATA_int),
    .vld_in(m_axis_video_TVALID_int),
    .ack_in(m_axis_video_TREADY_int),
    .data_out(m_axis_video_TDATA),
    .vld_out(regslice_both_m_axis_video_V_data_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_m_axis_video_V_data_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_m_axis_video_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(s_axis_video_TKEEP_int),
    .vld_in(m_axis_video_TVALID_int),
    .ack_in(regslice_both_m_axis_video_V_keep_V_U_ack_in_dummy),
    .data_out(m_axis_video_TKEEP),
    .vld_out(regslice_both_m_axis_video_V_keep_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_m_axis_video_V_keep_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_m_axis_video_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(s_axis_video_TSTRB_int),
    .vld_in(m_axis_video_TVALID_int),
    .ack_in(regslice_both_m_axis_video_V_strb_V_U_ack_in_dummy),
    .data_out(m_axis_video_TSTRB),
    .vld_out(regslice_both_m_axis_video_V_strb_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_m_axis_video_V_strb_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_m_axis_video_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(s_axis_video_TUSER_int),
    .vld_in(m_axis_video_TVALID_int),
    .ack_in(regslice_both_m_axis_video_V_user_V_U_ack_in_dummy),
    .data_out(m_axis_video_TUSER),
    .vld_out(regslice_both_m_axis_video_V_user_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_m_axis_video_V_user_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_m_axis_video_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(s_axis_video_TLAST_int),
    .vld_in(m_axis_video_TVALID_int),
    .ack_in(regslice_both_m_axis_video_V_last_V_U_ack_in_dummy),
    .data_out(m_axis_video_TLAST),
    .vld_out(regslice_both_m_axis_video_V_last_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_m_axis_video_V_last_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_m_axis_video_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(s_axis_video_TID_int),
    .vld_in(m_axis_video_TVALID_int),
    .ack_in(regslice_both_m_axis_video_V_id_V_U_ack_in_dummy),
    .data_out(m_axis_video_TID),
    .vld_out(regslice_both_m_axis_video_V_id_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_m_axis_video_V_id_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_m_axis_video_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(s_axis_video_TDEST_int),
    .vld_in(m_axis_video_TVALID_int),
    .ack_in(regslice_both_m_axis_video_V_dest_V_U_ack_in_dummy),
    .data_out(m_axis_video_TDEST),
    .vld_out(regslice_both_m_axis_video_V_dest_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_m_axis_video_V_dest_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln22_fu_241_p2 == 1'd1))) begin
        i_0_reg_160 <= i_reg_387;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_160 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln20_fu_203_p2 == 1'd0) & (regslice_both_m_axis_video_V_data_V_U_apdone_blk == 1'b0))) begin
        j_0_reg_171 <= 10'd0;
    end else if (((m_axis_video_TREADY_int == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        j_0_reg_171 <= j_reg_400;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln22_fu_241_p2 == 1'd0))) begin
        pixel_1_fu_88 <= pixel_2_fu_294_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        pixel_1_fu_88 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        add_ln25_1_reg_379 <= add_ln25_1_fu_188_p2;
        add_ln25_reg_374 <= add_ln25_fu_182_p2;
        start_x_read_reg_369 <= start_x;
        start_y_read_reg_364 <= start_y;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln20_fu_203_p2 == 1'd0) & (regslice_both_m_axis_video_V_data_V_U_apdone_blk == 1'b0))) begin
        and_ln25_1_reg_392 <= and_ln25_1_fu_231_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln22_fu_241_p2 == 1'd0))) begin
        and_ln25_2_reg_405 <= and_ln25_2_fu_278_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (regslice_both_m_axis_video_V_data_V_U_apdone_blk == 1'b0))) begin
        i_reg_387 <= i_fu_209_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_reg_400 <= j_fu_247_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln20_fu_203_p2 == 1'd1) & (regslice_both_m_axis_video_V_data_V_U_apdone_blk == 1'b0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln20_fu_203_p2 == 1'd1) & (regslice_both_m_axis_video_V_data_V_U_apdone_blk == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        balle_V_ce0 = 1'b1;
    end else begin
        balle_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        m_axis_video_TDATA_blk_n = m_axis_video_TREADY_int;
    end else begin
        m_axis_video_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((m_axis_video_TREADY_int == 1'b0) | (s_axis_video_TVALID_int == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
        m_axis_video_TVALID_int = 1'b1;
    end else begin
        m_axis_video_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        s_axis_video_TDATA_blk_n = s_axis_video_TVALID_int;
    end else begin
        s_axis_video_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((regslice_both_s_axis_video_V_data_V_U_ack_in == 1'b1) & (s_axis_video_TVALID == 1'b1))) begin
        s_axis_video_TREADY = 1'b1;
    end else begin
        s_axis_video_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axis_video_TREADY_int == 1'b0) | (s_axis_video_TVALID_int == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
        s_axis_video_TREADY_int = 1'b1;
    end else begin
        s_axis_video_TREADY_int = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln20_fu_203_p2 == 1'd1) & (regslice_both_m_axis_video_V_data_V_U_apdone_blk == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln20_fu_203_p2 == 1'd0) & (regslice_both_m_axis_video_V_data_V_U_apdone_blk == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln22_fu_241_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if ((~((m_axis_video_TREADY_int == 1'b0) | (s_axis_video_TVALID_int == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((m_axis_video_TREADY_int == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln25_1_fu_188_p2 = (start_y + 32'd8);

assign add_ln25_fu_182_p2 = (start_x + 32'd8);

assign and_ln25_1_fu_231_p2 = (xor_ln25_fu_220_p2 & icmp_ln25_1_fu_226_p2);

assign and_ln25_2_fu_278_p2 = (and_ln25_fu_272_p2 & and_ln25_1_reg_392);

assign and_ln25_fu_272_p2 = (xor_ln25_1_fu_261_p2 & icmp_ln25_3_fu_267_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign balle_V_address0 = sext_ln26_fu_283_p1;

assign i_fu_209_p2 = (i_0_reg_160 + 9'd1);

assign icmp_ln20_fu_203_p2 = ((i_0_reg_160 == 9'd480) ? 1'b1 : 1'b0);

assign icmp_ln22_fu_241_p2 = ((j_0_reg_171 == 10'd640) ? 1'b1 : 1'b0);

assign icmp_ln25_1_fu_226_p2 = (($signed(zext_ln20_fu_199_p1) < $signed(add_ln25_1_reg_379)) ? 1'b1 : 1'b0);

assign icmp_ln25_2_fu_256_p2 = (($signed(zext_ln22_fu_237_p1) < $signed(start_x_read_reg_369)) ? 1'b1 : 1'b0);

assign icmp_ln25_3_fu_267_p2 = (($signed(zext_ln22_fu_237_p1) < $signed(add_ln25_reg_374)) ? 1'b1 : 1'b0);

assign icmp_ln25_fu_215_p2 = (($signed(zext_ln20_fu_199_p1) < $signed(start_y_read_reg_364)) ? 1'b1 : 1'b0);

assign j_fu_247_p2 = (j_0_reg_171 + 10'd1);

assign m_axis_video_TDATA_int = ((and_ln25_2_reg_405[0:0] === 1'b1) ? select_ln321_fu_341_p3 : s_axis_video_TDATA_int);

assign m_axis_video_TVALID = regslice_both_m_axis_video_V_data_V_U_vld_out;

assign pixel_2_fu_294_p2 = pixel_1_fu_88;

assign pixel_2_fu_294_p3 = ((and_ln25_2_fu_278_p2[0:0] === 1'b1) ? pixel_fu_288_p2 : pixel_2_fu_294_p2);

assign pixel_fu_288_p1 = pixel_1_fu_88;

assign pixel_fu_288_p2 = ($signed(32'd1) + $signed(pixel_fu_288_p1));

assign select_ln321_fu_341_p3 = ((balle_V_q0[0:0] === 1'b1) ? 8'd255 : 8'd0);

assign sext_ln26_fu_283_p0 = pixel_1_fu_88;

assign sext_ln26_fu_283_p1 = sext_ln26_fu_283_p0;

assign xor_ln25_1_fu_261_p2 = (icmp_ln25_2_fu_256_p2 ^ 1'd1);

assign xor_ln25_fu_220_p2 = (icmp_ln25_fu_215_p2 ^ 1'd1);

assign zext_ln20_fu_199_p1 = i_0_reg_160;

assign zext_ln22_fu_237_p1 = j_0_reg_171;

endmodule //incrust
