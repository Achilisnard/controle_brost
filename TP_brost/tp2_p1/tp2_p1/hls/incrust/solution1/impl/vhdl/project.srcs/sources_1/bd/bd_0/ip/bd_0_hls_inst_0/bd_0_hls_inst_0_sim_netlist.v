// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Dec  1 16:05:34 2023
// Host        : LAPTOP-5G1TOFHU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/achil/OneDrive/Documents/5A/brost/TP_brost/tp2_p1/tp2_p1/hls/incrust/solution1/impl/vhdl/project.srcs/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.v
// Design      : bd_0_hls_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,incrust,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "HLS" *) 
(* x_core_info = "incrust,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module bd_0_hls_inst_0
   (s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_AWREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_WREADY,
    s_axi_AXILiteS_BRESP,
    s_axi_AXILiteS_BVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_ARREADY,
    s_axi_AXILiteS_RDATA,
    s_axi_AXILiteS_RRESP,
    s_axi_AXILiteS_RVALID,
    s_axi_AXILiteS_RREADY,
    ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    s_axis_video_TDATA,
    s_axis_video_TDEST,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TDATA,
    m_axis_video_TDEST,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_AXILiteS, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000.0, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s_axi_AXILiteS_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWVALID" *) input s_axi_AXILiteS_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWREADY" *) output s_axi_AXILiteS_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WDATA" *) input [31:0]s_axi_AXILiteS_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WSTRB" *) input [3:0]s_axi_AXILiteS_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WVALID" *) input s_axi_AXILiteS_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WREADY" *) output s_axi_AXILiteS_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BRESP" *) output [1:0]s_axi_AXILiteS_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BVALID" *) output s_axi_AXILiteS_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BREADY" *) input s_axi_AXILiteS_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARADDR" *) input [4:0]s_axi_AXILiteS_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARVALID" *) input s_axi_AXILiteS_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARREADY" *) output s_axi_AXILiteS_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RDATA" *) output [31:0]s_axi_AXILiteS_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RRESP" *) output [1:0]s_axi_AXILiteS_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RVALID" *) output s_axi_AXILiteS_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RREADY" *) input s_axi_AXILiteS_RREADY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_AXILiteS:s_axis_video:m_axis_video, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis_video, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input s_axis_video_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TREADY" *) output s_axis_video_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TDATA" *) input [7:0]s_axis_video_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TDEST" *) input [0:0]s_axis_video_TDEST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TKEEP" *) input [0:0]s_axis_video_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TSTRB" *) input [0:0]s_axis_video_TSTRB;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TUSER" *) input [0:0]s_axis_video_TUSER;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TLAST" *) input [0:0]s_axis_video_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TID" *) input [0:0]s_axis_video_TID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) output m_axis_video_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TREADY" *) input m_axis_video_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TDATA" *) output [7:0]m_axis_video_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TDEST" *) output [0:0]m_axis_video_TDEST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TKEEP" *) output [0:0]m_axis_video_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TSTRB" *) output [0:0]m_axis_video_TSTRB;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TUSER" *) output [0:0]m_axis_video_TUSER;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TLAST" *) output [0:0]m_axis_video_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TID" *) output [0:0]m_axis_video_TID;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [7:0]m_axis_video_TDATA;
  wire [0:0]m_axis_video_TDEST;
  wire [0:0]m_axis_video_TID;
  wire [0:0]m_axis_video_TKEEP;
  wire [0:0]m_axis_video_TLAST;
  wire m_axis_video_TREADY;
  wire [0:0]m_axis_video_TSTRB;
  wire [0:0]m_axis_video_TUSER;
  wire m_axis_video_TVALID;
  wire [4:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARREADY;
  wire s_axi_AXILiteS_ARVALID;
  wire [4:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWREADY;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire [1:0]s_axi_AXILiteS_BRESP;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire [1:0]s_axi_AXILiteS_RRESP;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire s_axi_AXILiteS_WREADY;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire [7:0]s_axis_video_TDATA;
  wire [0:0]s_axis_video_TDEST;
  wire [0:0]s_axis_video_TID;
  wire [0:0]s_axis_video_TKEEP;
  wire [0:0]s_axis_video_TLAST;
  wire s_axis_video_TREADY;
  wire [0:0]s_axis_video_TSTRB;
  wire [0:0]s_axis_video_TUSER;
  wire s_axis_video_TVALID;

  (* C_S_AXI_AXILITES_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_AXILITES_DATA_WIDTH = "32" *) 
  bd_0_hls_inst_0_incrust U0
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .m_axis_video_TDATA(m_axis_video_TDATA),
        .m_axis_video_TDEST(m_axis_video_TDEST),
        .m_axis_video_TID(m_axis_video_TID),
        .m_axis_video_TKEEP(m_axis_video_TKEEP),
        .m_axis_video_TLAST(m_axis_video_TLAST),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .m_axis_video_TSTRB(m_axis_video_TSTRB),
        .m_axis_video_TUSER(m_axis_video_TUSER),
        .m_axis_video_TVALID(m_axis_video_TVALID),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
        .s_axi_AXILiteS_ARREADY(s_axi_AXILiteS_ARREADY),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
        .s_axi_AXILiteS_AWREADY(s_axi_AXILiteS_AWREADY),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
        .s_axi_AXILiteS_BRESP(s_axi_AXILiteS_BRESP),
        .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
        .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
        .s_axi_AXILiteS_RRESP(s_axi_AXILiteS_RRESP),
        .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
        .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),
        .s_axi_AXILiteS_WREADY(s_axi_AXILiteS_WREADY),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID),
        .s_axis_video_TDATA(s_axis_video_TDATA),
        .s_axis_video_TDEST(s_axis_video_TDEST),
        .s_axis_video_TID(s_axis_video_TID),
        .s_axis_video_TKEEP(s_axis_video_TKEEP),
        .s_axis_video_TLAST(s_axis_video_TLAST),
        .s_axis_video_TREADY(s_axis_video_TREADY),
        .s_axis_video_TSTRB(s_axis_video_TSTRB),
        .s_axis_video_TUSER(s_axis_video_TUSER),
        .s_axis_video_TVALID(s_axis_video_TVALID));
endmodule

(* C_S_AXI_AXILITES_ADDR_WIDTH = "5" *) (* C_S_AXI_AXILITES_DATA_WIDTH = "32" *) (* ORIG_REF_NAME = "incrust" *) 
module bd_0_hls_inst_0_incrust
   (ap_clk,
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
    s_axi_AXILiteS_BRESP);
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [7:0]s_axis_video_TDATA;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  input [0:0]s_axis_video_TKEEP;
  input [0:0]s_axis_video_TSTRB;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input [0:0]s_axis_video_TID;
  input [0:0]s_axis_video_TDEST;
  output [7:0]m_axis_video_TDATA;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;
  output [0:0]m_axis_video_TKEEP;
  output [0:0]m_axis_video_TSTRB;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [0:0]m_axis_video_TID;
  output [0:0]m_axis_video_TDEST;
  input s_axi_AXILiteS_AWVALID;
  output s_axi_AXILiteS_AWREADY;
  input [4:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_WVALID;
  output s_axi_AXILiteS_WREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input s_axi_AXILiteS_ARVALID;
  output s_axi_AXILiteS_ARREADY;
  input [4:0]s_axi_AXILiteS_ARADDR;
  output s_axi_AXILiteS_RVALID;
  input s_axi_AXILiteS_RREADY;
  output [31:0]s_axi_AXILiteS_RDATA;
  output [1:0]s_axi_AXILiteS_RRESP;
  output s_axi_AXILiteS_BVALID;
  input s_axi_AXILiteS_BREADY;
  output [1:0]s_axi_AXILiteS_BRESP;

  wire \<const0> ;
  wire [31:2]add_ln25_1_fu_188_p2;
  wire [31:2]add_ln25_1_reg_379;
  wire [31:2]add_ln25_fu_182_p2;
  wire [31:2]add_ln25_reg_374;
  wire and_ln25_1_reg_392;
  wire \and_ln25_1_reg_392[0]_i_10_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_11_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_12_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_14_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_15_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_16_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_17_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_18_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_19_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_20_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_21_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_23_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_24_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_25_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_26_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_27_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_28_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_29_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_30_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_32_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_33_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_34_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_35_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_36_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_37_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_38_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_39_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_41_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_42_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_43_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_44_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_45_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_46_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_47_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_48_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_50_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_51_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_52_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_53_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_54_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_55_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_56_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_57_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_58_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_59_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_5_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_60_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_61_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_62_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_63_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_64_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_65_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_66_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_67_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_68_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_69_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_6_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_70_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_71_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_72_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_73_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_7_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_8_n_1 ;
  wire \and_ln25_1_reg_392[0]_i_9_n_1 ;
  wire \and_ln25_1_reg_392_reg[0]_i_13_n_1 ;
  wire \and_ln25_1_reg_392_reg[0]_i_13_n_2 ;
  wire \and_ln25_1_reg_392_reg[0]_i_13_n_3 ;
  wire \and_ln25_1_reg_392_reg[0]_i_13_n_4 ;
  wire \and_ln25_1_reg_392_reg[0]_i_22_n_1 ;
  wire \and_ln25_1_reg_392_reg[0]_i_22_n_2 ;
  wire \and_ln25_1_reg_392_reg[0]_i_22_n_3 ;
  wire \and_ln25_1_reg_392_reg[0]_i_22_n_4 ;
  wire \and_ln25_1_reg_392_reg[0]_i_2_n_2 ;
  wire \and_ln25_1_reg_392_reg[0]_i_2_n_3 ;
  wire \and_ln25_1_reg_392_reg[0]_i_2_n_4 ;
  wire \and_ln25_1_reg_392_reg[0]_i_31_n_1 ;
  wire \and_ln25_1_reg_392_reg[0]_i_31_n_2 ;
  wire \and_ln25_1_reg_392_reg[0]_i_31_n_3 ;
  wire \and_ln25_1_reg_392_reg[0]_i_31_n_4 ;
  wire \and_ln25_1_reg_392_reg[0]_i_3_n_2 ;
  wire \and_ln25_1_reg_392_reg[0]_i_3_n_3 ;
  wire \and_ln25_1_reg_392_reg[0]_i_3_n_4 ;
  wire \and_ln25_1_reg_392_reg[0]_i_40_n_1 ;
  wire \and_ln25_1_reg_392_reg[0]_i_40_n_2 ;
  wire \and_ln25_1_reg_392_reg[0]_i_40_n_3 ;
  wire \and_ln25_1_reg_392_reg[0]_i_40_n_4 ;
  wire \and_ln25_1_reg_392_reg[0]_i_49_n_1 ;
  wire \and_ln25_1_reg_392_reg[0]_i_49_n_2 ;
  wire \and_ln25_1_reg_392_reg[0]_i_49_n_3 ;
  wire \and_ln25_1_reg_392_reg[0]_i_49_n_4 ;
  wire \and_ln25_1_reg_392_reg[0]_i_4_n_1 ;
  wire \and_ln25_1_reg_392_reg[0]_i_4_n_2 ;
  wire \and_ln25_1_reg_392_reg[0]_i_4_n_3 ;
  wire \and_ln25_1_reg_392_reg[0]_i_4_n_4 ;
  wire and_ln25_2_reg_405;
  wire \and_ln25_2_reg_405[0]_i_10_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_11_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_12_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_14_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_15_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_16_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_17_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_18_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_19_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_1_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_20_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_21_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_23_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_24_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_25_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_26_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_27_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_28_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_29_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_30_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_32_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_33_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_34_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_35_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_36_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_37_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_38_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_39_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_41_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_42_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_43_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_44_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_45_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_46_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_47_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_48_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_50_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_51_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_52_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_53_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_54_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_55_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_56_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_57_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_58_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_59_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_5_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_60_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_61_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_62_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_63_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_64_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_65_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_66_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_67_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_68_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_69_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_6_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_70_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_71_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_72_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_73_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_7_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_8_n_1 ;
  wire \and_ln25_2_reg_405[0]_i_9_n_1 ;
  wire \and_ln25_2_reg_405_reg[0]_i_13_n_1 ;
  wire \and_ln25_2_reg_405_reg[0]_i_13_n_2 ;
  wire \and_ln25_2_reg_405_reg[0]_i_13_n_3 ;
  wire \and_ln25_2_reg_405_reg[0]_i_13_n_4 ;
  wire \and_ln25_2_reg_405_reg[0]_i_22_n_1 ;
  wire \and_ln25_2_reg_405_reg[0]_i_22_n_2 ;
  wire \and_ln25_2_reg_405_reg[0]_i_22_n_3 ;
  wire \and_ln25_2_reg_405_reg[0]_i_22_n_4 ;
  wire \and_ln25_2_reg_405_reg[0]_i_2_n_2 ;
  wire \and_ln25_2_reg_405_reg[0]_i_2_n_3 ;
  wire \and_ln25_2_reg_405_reg[0]_i_2_n_4 ;
  wire \and_ln25_2_reg_405_reg[0]_i_31_n_1 ;
  wire \and_ln25_2_reg_405_reg[0]_i_31_n_2 ;
  wire \and_ln25_2_reg_405_reg[0]_i_31_n_3 ;
  wire \and_ln25_2_reg_405_reg[0]_i_31_n_4 ;
  wire \and_ln25_2_reg_405_reg[0]_i_3_n_2 ;
  wire \and_ln25_2_reg_405_reg[0]_i_3_n_3 ;
  wire \and_ln25_2_reg_405_reg[0]_i_3_n_4 ;
  wire \and_ln25_2_reg_405_reg[0]_i_40_n_1 ;
  wire \and_ln25_2_reg_405_reg[0]_i_40_n_2 ;
  wire \and_ln25_2_reg_405_reg[0]_i_40_n_3 ;
  wire \and_ln25_2_reg_405_reg[0]_i_40_n_4 ;
  wire \and_ln25_2_reg_405_reg[0]_i_49_n_1 ;
  wire \and_ln25_2_reg_405_reg[0]_i_49_n_2 ;
  wire \and_ln25_2_reg_405_reg[0]_i_49_n_3 ;
  wire \and_ln25_2_reg_405_reg[0]_i_49_n_4 ;
  wire \and_ln25_2_reg_405_reg[0]_i_4_n_1 ;
  wire \and_ln25_2_reg_405_reg[0]_i_4_n_2 ;
  wire \and_ln25_2_reg_405_reg[0]_i_4_n_3 ;
  wire \and_ln25_2_reg_405_reg[0]_i_4_n_4 ;
  wire \ap_CS_fsm_reg_n_1_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire [4:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_NS_fsm10_out;
  wire ap_NS_fsm11_out;
  wire ap_NS_fsm12_out;
  wire ap_clk;
  wire ap_idle;
  wire ap_ready;
  wire ap_ready_INST_0_i_1_n_1;
  wire ap_ready_INST_0_i_2_n_1;
  wire ap_rst_n;
  wire ap_start;
  wire ce0;
  wire [7:0]data_in;
  wire i_0_reg_160;
  wire \i_0_reg_160[8]_i_3_n_1 ;
  wire \i_0_reg_160_reg_n_1_[0] ;
  wire \i_0_reg_160_reg_n_1_[1] ;
  wire \i_0_reg_160_reg_n_1_[2] ;
  wire \i_0_reg_160_reg_n_1_[3] ;
  wire \i_0_reg_160_reg_n_1_[4] ;
  wire \i_0_reg_160_reg_n_1_[5] ;
  wire \i_0_reg_160_reg_n_1_[6] ;
  wire \i_0_reg_160_reg_n_1_[7] ;
  wire \i_0_reg_160_reg_n_1_[8] ;
  wire [8:0]i_fu_209_p2;
  wire [8:0]i_reg_387;
  wire i_reg_3870;
  wire \i_reg_387[8]_i_3_n_1 ;
  wire \ibuf_inst/p_0_in ;
  wire icmp_ln25_1_fu_226_p2;
  wire icmp_ln25_2_fu_256_p2;
  wire icmp_ln25_3_fu_267_p2;
  wire icmp_ln25_fu_215_p2;
  wire [9:0]j_0_reg_171;
  wire [9:0]j_fu_247_p2;
  wire [9:0]j_reg_400;
  wire \j_reg_400[9]_i_2_n_1 ;
  wire [7:0]m_axis_video_TDATA;
  wire [0:0]m_axis_video_TDEST;
  wire [0:0]m_axis_video_TID;
  wire [0:0]m_axis_video_TKEEP;
  wire [0:0]m_axis_video_TLAST;
  wire m_axis_video_TREADY;
  wire [0:0]m_axis_video_TSTRB;
  wire [0:0]m_axis_video_TUSER;
  wire m_axis_video_TVALID;
  wire pixel_1_fu_881;
  wire regslice_both_m_axis_video_V_data_V_U_n_12;
  wire regslice_both_m_axis_video_V_data_V_U_n_22;
  wire regslice_both_s_axis_video_V_data_V_U_n_10;
  wire regslice_both_s_axis_video_V_data_V_U_n_11;
  wire regslice_both_s_axis_video_V_data_V_U_n_12;
  wire regslice_both_s_axis_video_V_data_V_U_n_13;
  wire regslice_both_s_axis_video_V_data_V_U_n_14;
  wire regslice_both_s_axis_video_V_data_V_U_n_15;
  wire regslice_both_s_axis_video_V_data_V_U_n_2;
  wire regslice_both_s_axis_video_V_data_V_U_n_25;
  wire regslice_both_s_axis_video_V_data_V_U_n_3;
  wire regslice_both_s_axis_video_V_data_V_U_n_4;
  wire regslice_both_s_axis_video_V_data_V_U_n_5;
  wire regslice_both_s_axis_video_V_data_V_U_n_6;
  wire regslice_both_s_axis_video_V_data_V_U_n_7;
  wire regslice_both_s_axis_video_V_data_V_U_n_8;
  wire regslice_both_s_axis_video_V_data_V_U_n_9;
  wire regslice_both_s_axis_video_V_dest_V_U_n_1;
  wire regslice_both_s_axis_video_V_id_V_U_n_1;
  wire regslice_both_s_axis_video_V_keep_V_U_n_1;
  wire regslice_both_s_axis_video_V_last_V_U_n_1;
  wire regslice_both_s_axis_video_V_strb_V_U_n_1;
  wire regslice_both_s_axis_video_V_user_V_U_n_1;
  wire reset;
  wire [4:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARREADY;
  wire s_axi_AXILiteS_ARVALID;
  wire [4:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWREADY;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire s_axi_AXILiteS_WREADY;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire [7:0]s_axis_video_TDATA;
  wire [0:0]s_axis_video_TDEST;
  wire s_axis_video_TDEST_int;
  wire [0:0]s_axis_video_TID;
  wire s_axis_video_TID_int;
  wire [0:0]s_axis_video_TKEEP;
  wire s_axis_video_TKEEP_int;
  wire [0:0]s_axis_video_TLAST;
  wire s_axis_video_TLAST_int;
  wire s_axis_video_TREADY;
  wire [0:0]s_axis_video_TSTRB;
  wire s_axis_video_TSTRB_int;
  wire [0:0]s_axis_video_TUSER;
  wire s_axis_video_TUSER_int;
  wire s_axis_video_TVALID;
  wire [31:0]start_x;
  wire [31:0]start_x_read_reg_369;
  wire [31:0]start_y;
  wire [31:0]start_y_read_reg_364;
  wire vld_in;
  wire vld_out;
  wire [3:0]\NLW_and_ln25_1_reg_392_reg[0]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_and_ln25_1_reg_392_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_and_ln25_1_reg_392_reg[0]_i_22_O_UNCONNECTED ;
  wire [3:0]\NLW_and_ln25_1_reg_392_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_and_ln25_1_reg_392_reg[0]_i_31_O_UNCONNECTED ;
  wire [3:0]\NLW_and_ln25_1_reg_392_reg[0]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_and_ln25_1_reg_392_reg[0]_i_40_O_UNCONNECTED ;
  wire [3:0]\NLW_and_ln25_1_reg_392_reg[0]_i_49_O_UNCONNECTED ;
  wire [3:0]\NLW_and_ln25_2_reg_405_reg[0]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_and_ln25_2_reg_405_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_and_ln25_2_reg_405_reg[0]_i_22_O_UNCONNECTED ;
  wire [3:0]\NLW_and_ln25_2_reg_405_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_and_ln25_2_reg_405_reg[0]_i_31_O_UNCONNECTED ;
  wire [3:0]\NLW_and_ln25_2_reg_405_reg[0]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_and_ln25_2_reg_405_reg[0]_i_40_O_UNCONNECTED ;
  wire [3:0]\NLW_and_ln25_2_reg_405_reg[0]_i_49_O_UNCONNECTED ;

  assign ap_done = ap_ready;
  assign s_axi_AXILiteS_BRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_BRESP[0] = \<const0> ;
  assign s_axi_AXILiteS_RRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE \add_ln25_1_reg_379_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[10]),
        .Q(add_ln25_1_reg_379[10]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[11]),
        .Q(add_ln25_1_reg_379[11]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[12]),
        .Q(add_ln25_1_reg_379[12]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[13]),
        .Q(add_ln25_1_reg_379[13]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[14]),
        .Q(add_ln25_1_reg_379[14]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[15] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[15]),
        .Q(add_ln25_1_reg_379[15]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[16] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[16]),
        .Q(add_ln25_1_reg_379[16]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[17] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[17]),
        .Q(add_ln25_1_reg_379[17]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[18] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[18]),
        .Q(add_ln25_1_reg_379[18]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[19] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[19]),
        .Q(add_ln25_1_reg_379[19]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[20] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[20]),
        .Q(add_ln25_1_reg_379[20]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[21] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[21]),
        .Q(add_ln25_1_reg_379[21]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[22] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[22]),
        .Q(add_ln25_1_reg_379[22]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[23] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[23]),
        .Q(add_ln25_1_reg_379[23]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[24] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[24]),
        .Q(add_ln25_1_reg_379[24]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[25] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[25]),
        .Q(add_ln25_1_reg_379[25]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[26] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[26]),
        .Q(add_ln25_1_reg_379[26]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[27] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[27]),
        .Q(add_ln25_1_reg_379[27]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[28] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[28]),
        .Q(add_ln25_1_reg_379[28]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[29] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[29]),
        .Q(add_ln25_1_reg_379[29]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[2]),
        .Q(add_ln25_1_reg_379[2]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[30] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[30]),
        .Q(add_ln25_1_reg_379[30]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[31] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[31]),
        .Q(add_ln25_1_reg_379[31]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[3]),
        .Q(add_ln25_1_reg_379[3]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[4]),
        .Q(add_ln25_1_reg_379[4]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[5]),
        .Q(add_ln25_1_reg_379[5]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[6]),
        .Q(add_ln25_1_reg_379[6]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[7]),
        .Q(add_ln25_1_reg_379[7]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[8]),
        .Q(add_ln25_1_reg_379[8]),
        .R(1'b0));
  FDRE \add_ln25_1_reg_379_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_1_fu_188_p2[9]),
        .Q(add_ln25_1_reg_379[9]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[10]),
        .Q(add_ln25_reg_374[10]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[11]),
        .Q(add_ln25_reg_374[11]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[12]),
        .Q(add_ln25_reg_374[12]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[13]),
        .Q(add_ln25_reg_374[13]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[14]),
        .Q(add_ln25_reg_374[14]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[15] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[15]),
        .Q(add_ln25_reg_374[15]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[16] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[16]),
        .Q(add_ln25_reg_374[16]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[17] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[17]),
        .Q(add_ln25_reg_374[17]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[18] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[18]),
        .Q(add_ln25_reg_374[18]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[19] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[19]),
        .Q(add_ln25_reg_374[19]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[20] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[20]),
        .Q(add_ln25_reg_374[20]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[21] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[21]),
        .Q(add_ln25_reg_374[21]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[22] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[22]),
        .Q(add_ln25_reg_374[22]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[23] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[23]),
        .Q(add_ln25_reg_374[23]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[24] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[24]),
        .Q(add_ln25_reg_374[24]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[25] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[25]),
        .Q(add_ln25_reg_374[25]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[26] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[26]),
        .Q(add_ln25_reg_374[26]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[27] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[27]),
        .Q(add_ln25_reg_374[27]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[28] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[28]),
        .Q(add_ln25_reg_374[28]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[29] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[29]),
        .Q(add_ln25_reg_374[29]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[2]),
        .Q(add_ln25_reg_374[2]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[30] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[30]),
        .Q(add_ln25_reg_374[30]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[31] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[31]),
        .Q(add_ln25_reg_374[31]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[3]),
        .Q(add_ln25_reg_374[3]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[4]),
        .Q(add_ln25_reg_374[4]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[5]),
        .Q(add_ln25_reg_374[5]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[6]),
        .Q(add_ln25_reg_374[6]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[7]),
        .Q(add_ln25_reg_374[7]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[8]),
        .Q(add_ln25_reg_374[8]),
        .R(1'b0));
  FDRE \add_ln25_reg_374_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(add_ln25_fu_182_p2[9]),
        .Q(add_ln25_reg_374[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_10 
       (.I0(add_ln25_1_reg_379[28]),
        .I1(add_ln25_1_reg_379[29]),
        .O(\and_ln25_1_reg_392[0]_i_10_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_11 
       (.I0(add_ln25_1_reg_379[26]),
        .I1(add_ln25_1_reg_379[27]),
        .O(\and_ln25_1_reg_392[0]_i_11_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_12 
       (.I0(add_ln25_1_reg_379[24]),
        .I1(add_ln25_1_reg_379[25]),
        .O(\and_ln25_1_reg_392[0]_i_12_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \and_ln25_1_reg_392[0]_i_14 
       (.I0(start_y_read_reg_364[30]),
        .I1(start_y_read_reg_364[31]),
        .O(\and_ln25_1_reg_392[0]_i_14_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_15 
       (.I0(start_y_read_reg_364[29]),
        .I1(start_y_read_reg_364[28]),
        .O(\and_ln25_1_reg_392[0]_i_15_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_16 
       (.I0(start_y_read_reg_364[27]),
        .I1(start_y_read_reg_364[26]),
        .O(\and_ln25_1_reg_392[0]_i_16_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_17 
       (.I0(start_y_read_reg_364[25]),
        .I1(start_y_read_reg_364[24]),
        .O(\and_ln25_1_reg_392[0]_i_17_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_18 
       (.I0(start_y_read_reg_364[31]),
        .I1(start_y_read_reg_364[30]),
        .O(\and_ln25_1_reg_392[0]_i_18_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_19 
       (.I0(start_y_read_reg_364[28]),
        .I1(start_y_read_reg_364[29]),
        .O(\and_ln25_1_reg_392[0]_i_19_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_20 
       (.I0(start_y_read_reg_364[26]),
        .I1(start_y_read_reg_364[27]),
        .O(\and_ln25_1_reg_392[0]_i_20_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_21 
       (.I0(start_y_read_reg_364[24]),
        .I1(start_y_read_reg_364[25]),
        .O(\and_ln25_1_reg_392[0]_i_21_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_23 
       (.I0(add_ln25_1_reg_379[23]),
        .I1(add_ln25_1_reg_379[22]),
        .O(\and_ln25_1_reg_392[0]_i_23_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_24 
       (.I0(add_ln25_1_reg_379[21]),
        .I1(add_ln25_1_reg_379[20]),
        .O(\and_ln25_1_reg_392[0]_i_24_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_25 
       (.I0(add_ln25_1_reg_379[19]),
        .I1(add_ln25_1_reg_379[18]),
        .O(\and_ln25_1_reg_392[0]_i_25_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_26 
       (.I0(add_ln25_1_reg_379[17]),
        .I1(add_ln25_1_reg_379[16]),
        .O(\and_ln25_1_reg_392[0]_i_26_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_27 
       (.I0(add_ln25_1_reg_379[22]),
        .I1(add_ln25_1_reg_379[23]),
        .O(\and_ln25_1_reg_392[0]_i_27_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_28 
       (.I0(add_ln25_1_reg_379[20]),
        .I1(add_ln25_1_reg_379[21]),
        .O(\and_ln25_1_reg_392[0]_i_28_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_29 
       (.I0(add_ln25_1_reg_379[18]),
        .I1(add_ln25_1_reg_379[19]),
        .O(\and_ln25_1_reg_392[0]_i_29_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_30 
       (.I0(add_ln25_1_reg_379[16]),
        .I1(add_ln25_1_reg_379[17]),
        .O(\and_ln25_1_reg_392[0]_i_30_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_32 
       (.I0(start_y_read_reg_364[23]),
        .I1(start_y_read_reg_364[22]),
        .O(\and_ln25_1_reg_392[0]_i_32_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_33 
       (.I0(start_y_read_reg_364[21]),
        .I1(start_y_read_reg_364[20]),
        .O(\and_ln25_1_reg_392[0]_i_33_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_34 
       (.I0(start_y_read_reg_364[19]),
        .I1(start_y_read_reg_364[18]),
        .O(\and_ln25_1_reg_392[0]_i_34_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_35 
       (.I0(start_y_read_reg_364[17]),
        .I1(start_y_read_reg_364[16]),
        .O(\and_ln25_1_reg_392[0]_i_35_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_36 
       (.I0(start_y_read_reg_364[22]),
        .I1(start_y_read_reg_364[23]),
        .O(\and_ln25_1_reg_392[0]_i_36_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_37 
       (.I0(start_y_read_reg_364[20]),
        .I1(start_y_read_reg_364[21]),
        .O(\and_ln25_1_reg_392[0]_i_37_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_38 
       (.I0(start_y_read_reg_364[18]),
        .I1(start_y_read_reg_364[19]),
        .O(\and_ln25_1_reg_392[0]_i_38_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_39 
       (.I0(start_y_read_reg_364[16]),
        .I1(start_y_read_reg_364[17]),
        .O(\and_ln25_1_reg_392[0]_i_39_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_41 
       (.I0(add_ln25_1_reg_379[15]),
        .I1(add_ln25_1_reg_379[14]),
        .O(\and_ln25_1_reg_392[0]_i_41_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_42 
       (.I0(add_ln25_1_reg_379[13]),
        .I1(add_ln25_1_reg_379[12]),
        .O(\and_ln25_1_reg_392[0]_i_42_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_43 
       (.I0(add_ln25_1_reg_379[11]),
        .I1(add_ln25_1_reg_379[10]),
        .O(\and_ln25_1_reg_392[0]_i_43_n_1 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \and_ln25_1_reg_392[0]_i_44 
       (.I0(add_ln25_1_reg_379[9]),
        .I1(\i_0_reg_160_reg_n_1_[8] ),
        .I2(add_ln25_1_reg_379[8]),
        .O(\and_ln25_1_reg_392[0]_i_44_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_45 
       (.I0(add_ln25_1_reg_379[14]),
        .I1(add_ln25_1_reg_379[15]),
        .O(\and_ln25_1_reg_392[0]_i_45_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_46 
       (.I0(add_ln25_1_reg_379[12]),
        .I1(add_ln25_1_reg_379[13]),
        .O(\and_ln25_1_reg_392[0]_i_46_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_47 
       (.I0(add_ln25_1_reg_379[10]),
        .I1(add_ln25_1_reg_379[11]),
        .O(\and_ln25_1_reg_392[0]_i_47_n_1 ));
  LUT3 #(
    .INIT(8'h09)) 
    \and_ln25_1_reg_392[0]_i_48 
       (.I0(add_ln25_1_reg_379[8]),
        .I1(\i_0_reg_160_reg_n_1_[8] ),
        .I2(add_ln25_1_reg_379[9]),
        .O(\and_ln25_1_reg_392[0]_i_48_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \and_ln25_1_reg_392[0]_i_5 
       (.I0(add_ln25_1_reg_379[30]),
        .I1(add_ln25_1_reg_379[31]),
        .O(\and_ln25_1_reg_392[0]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_50 
       (.I0(start_y_read_reg_364[15]),
        .I1(start_y_read_reg_364[14]),
        .O(\and_ln25_1_reg_392[0]_i_50_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_51 
       (.I0(start_y_read_reg_364[13]),
        .I1(start_y_read_reg_364[12]),
        .O(\and_ln25_1_reg_392[0]_i_51_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_52 
       (.I0(start_y_read_reg_364[11]),
        .I1(start_y_read_reg_364[10]),
        .O(\and_ln25_1_reg_392[0]_i_52_n_1 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \and_ln25_1_reg_392[0]_i_53 
       (.I0(start_y_read_reg_364[9]),
        .I1(\i_0_reg_160_reg_n_1_[8] ),
        .I2(start_y_read_reg_364[8]),
        .O(\and_ln25_1_reg_392[0]_i_53_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_54 
       (.I0(start_y_read_reg_364[14]),
        .I1(start_y_read_reg_364[15]),
        .O(\and_ln25_1_reg_392[0]_i_54_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_55 
       (.I0(start_y_read_reg_364[12]),
        .I1(start_y_read_reg_364[13]),
        .O(\and_ln25_1_reg_392[0]_i_55_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_56 
       (.I0(start_y_read_reg_364[10]),
        .I1(start_y_read_reg_364[11]),
        .O(\and_ln25_1_reg_392[0]_i_56_n_1 ));
  LUT3 #(
    .INIT(8'h09)) 
    \and_ln25_1_reg_392[0]_i_57 
       (.I0(start_y_read_reg_364[8]),
        .I1(\i_0_reg_160_reg_n_1_[8] ),
        .I2(start_y_read_reg_364[9]),
        .O(\and_ln25_1_reg_392[0]_i_57_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_1_reg_392[0]_i_58 
       (.I0(add_ln25_1_reg_379[6]),
        .I1(\i_0_reg_160_reg_n_1_[6] ),
        .I2(\i_0_reg_160_reg_n_1_[7] ),
        .I3(add_ln25_1_reg_379[7]),
        .O(\and_ln25_1_reg_392[0]_i_58_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_1_reg_392[0]_i_59 
       (.I0(add_ln25_1_reg_379[4]),
        .I1(\i_0_reg_160_reg_n_1_[4] ),
        .I2(\i_0_reg_160_reg_n_1_[5] ),
        .I3(add_ln25_1_reg_379[5]),
        .O(\and_ln25_1_reg_392[0]_i_59_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_6 
       (.I0(add_ln25_1_reg_379[29]),
        .I1(add_ln25_1_reg_379[28]),
        .O(\and_ln25_1_reg_392[0]_i_6_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_1_reg_392[0]_i_60 
       (.I0(add_ln25_1_reg_379[2]),
        .I1(\i_0_reg_160_reg_n_1_[2] ),
        .I2(\i_0_reg_160_reg_n_1_[3] ),
        .I3(add_ln25_1_reg_379[3]),
        .O(\and_ln25_1_reg_392[0]_i_60_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_1_reg_392[0]_i_61 
       (.I0(start_y_read_reg_364[0]),
        .I1(\i_0_reg_160_reg_n_1_[0] ),
        .I2(\i_0_reg_160_reg_n_1_[1] ),
        .I3(start_y_read_reg_364[1]),
        .O(\and_ln25_1_reg_392[0]_i_61_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_1_reg_392[0]_i_62 
       (.I0(\i_0_reg_160_reg_n_1_[6] ),
        .I1(add_ln25_1_reg_379[6]),
        .I2(\i_0_reg_160_reg_n_1_[7] ),
        .I3(add_ln25_1_reg_379[7]),
        .O(\and_ln25_1_reg_392[0]_i_62_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_1_reg_392[0]_i_63 
       (.I0(\i_0_reg_160_reg_n_1_[4] ),
        .I1(add_ln25_1_reg_379[4]),
        .I2(\i_0_reg_160_reg_n_1_[5] ),
        .I3(add_ln25_1_reg_379[5]),
        .O(\and_ln25_1_reg_392[0]_i_63_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_1_reg_392[0]_i_64 
       (.I0(\i_0_reg_160_reg_n_1_[2] ),
        .I1(add_ln25_1_reg_379[2]),
        .I2(\i_0_reg_160_reg_n_1_[3] ),
        .I3(add_ln25_1_reg_379[3]),
        .O(\and_ln25_1_reg_392[0]_i_64_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_1_reg_392[0]_i_65 
       (.I0(\i_0_reg_160_reg_n_1_[0] ),
        .I1(start_y_read_reg_364[0]),
        .I2(\i_0_reg_160_reg_n_1_[1] ),
        .I3(start_y_read_reg_364[1]),
        .O(\and_ln25_1_reg_392[0]_i_65_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_1_reg_392[0]_i_66 
       (.I0(start_y_read_reg_364[6]),
        .I1(\i_0_reg_160_reg_n_1_[6] ),
        .I2(\i_0_reg_160_reg_n_1_[7] ),
        .I3(start_y_read_reg_364[7]),
        .O(\and_ln25_1_reg_392[0]_i_66_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_1_reg_392[0]_i_67 
       (.I0(start_y_read_reg_364[4]),
        .I1(\i_0_reg_160_reg_n_1_[4] ),
        .I2(\i_0_reg_160_reg_n_1_[5] ),
        .I3(start_y_read_reg_364[5]),
        .O(\and_ln25_1_reg_392[0]_i_67_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_1_reg_392[0]_i_68 
       (.I0(start_y_read_reg_364[2]),
        .I1(\i_0_reg_160_reg_n_1_[2] ),
        .I2(\i_0_reg_160_reg_n_1_[3] ),
        .I3(start_y_read_reg_364[3]),
        .O(\and_ln25_1_reg_392[0]_i_68_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_1_reg_392[0]_i_69 
       (.I0(start_y_read_reg_364[0]),
        .I1(\i_0_reg_160_reg_n_1_[0] ),
        .I2(\i_0_reg_160_reg_n_1_[1] ),
        .I3(start_y_read_reg_364[1]),
        .O(\and_ln25_1_reg_392[0]_i_69_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_7 
       (.I0(add_ln25_1_reg_379[27]),
        .I1(add_ln25_1_reg_379[26]),
        .O(\and_ln25_1_reg_392[0]_i_7_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_1_reg_392[0]_i_70 
       (.I0(\i_0_reg_160_reg_n_1_[6] ),
        .I1(start_y_read_reg_364[6]),
        .I2(\i_0_reg_160_reg_n_1_[7] ),
        .I3(start_y_read_reg_364[7]),
        .O(\and_ln25_1_reg_392[0]_i_70_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_1_reg_392[0]_i_71 
       (.I0(\i_0_reg_160_reg_n_1_[4] ),
        .I1(start_y_read_reg_364[4]),
        .I2(\i_0_reg_160_reg_n_1_[5] ),
        .I3(start_y_read_reg_364[5]),
        .O(\and_ln25_1_reg_392[0]_i_71_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_1_reg_392[0]_i_72 
       (.I0(\i_0_reg_160_reg_n_1_[2] ),
        .I1(start_y_read_reg_364[2]),
        .I2(\i_0_reg_160_reg_n_1_[3] ),
        .I3(start_y_read_reg_364[3]),
        .O(\and_ln25_1_reg_392[0]_i_72_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_1_reg_392[0]_i_73 
       (.I0(\i_0_reg_160_reg_n_1_[0] ),
        .I1(start_y_read_reg_364[0]),
        .I2(\i_0_reg_160_reg_n_1_[1] ),
        .I3(start_y_read_reg_364[1]),
        .O(\and_ln25_1_reg_392[0]_i_73_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_1_reg_392[0]_i_8 
       (.I0(add_ln25_1_reg_379[25]),
        .I1(add_ln25_1_reg_379[24]),
        .O(\and_ln25_1_reg_392[0]_i_8_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_1_reg_392[0]_i_9 
       (.I0(add_ln25_1_reg_379[31]),
        .I1(add_ln25_1_reg_379[30]),
        .O(\and_ln25_1_reg_392[0]_i_9_n_1 ));
  FDRE \and_ln25_1_reg_392_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_m_axis_video_V_data_V_U_n_22),
        .Q(and_ln25_1_reg_392),
        .R(1'b0));
  CARRY4 \and_ln25_1_reg_392_reg[0]_i_13 
       (.CI(\and_ln25_1_reg_392_reg[0]_i_31_n_1 ),
        .CO({\and_ln25_1_reg_392_reg[0]_i_13_n_1 ,\and_ln25_1_reg_392_reg[0]_i_13_n_2 ,\and_ln25_1_reg_392_reg[0]_i_13_n_3 ,\and_ln25_1_reg_392_reg[0]_i_13_n_4 }),
        .CYINIT(1'b0),
        .DI({\and_ln25_1_reg_392[0]_i_32_n_1 ,\and_ln25_1_reg_392[0]_i_33_n_1 ,\and_ln25_1_reg_392[0]_i_34_n_1 ,\and_ln25_1_reg_392[0]_i_35_n_1 }),
        .O(\NLW_and_ln25_1_reg_392_reg[0]_i_13_O_UNCONNECTED [3:0]),
        .S({\and_ln25_1_reg_392[0]_i_36_n_1 ,\and_ln25_1_reg_392[0]_i_37_n_1 ,\and_ln25_1_reg_392[0]_i_38_n_1 ,\and_ln25_1_reg_392[0]_i_39_n_1 }));
  CARRY4 \and_ln25_1_reg_392_reg[0]_i_2 
       (.CI(\and_ln25_1_reg_392_reg[0]_i_4_n_1 ),
        .CO({icmp_ln25_1_fu_226_p2,\and_ln25_1_reg_392_reg[0]_i_2_n_2 ,\and_ln25_1_reg_392_reg[0]_i_2_n_3 ,\and_ln25_1_reg_392_reg[0]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({\and_ln25_1_reg_392[0]_i_5_n_1 ,\and_ln25_1_reg_392[0]_i_6_n_1 ,\and_ln25_1_reg_392[0]_i_7_n_1 ,\and_ln25_1_reg_392[0]_i_8_n_1 }),
        .O(\NLW_and_ln25_1_reg_392_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\and_ln25_1_reg_392[0]_i_9_n_1 ,\and_ln25_1_reg_392[0]_i_10_n_1 ,\and_ln25_1_reg_392[0]_i_11_n_1 ,\and_ln25_1_reg_392[0]_i_12_n_1 }));
  CARRY4 \and_ln25_1_reg_392_reg[0]_i_22 
       (.CI(\and_ln25_1_reg_392_reg[0]_i_40_n_1 ),
        .CO({\and_ln25_1_reg_392_reg[0]_i_22_n_1 ,\and_ln25_1_reg_392_reg[0]_i_22_n_2 ,\and_ln25_1_reg_392_reg[0]_i_22_n_3 ,\and_ln25_1_reg_392_reg[0]_i_22_n_4 }),
        .CYINIT(1'b0),
        .DI({\and_ln25_1_reg_392[0]_i_41_n_1 ,\and_ln25_1_reg_392[0]_i_42_n_1 ,\and_ln25_1_reg_392[0]_i_43_n_1 ,\and_ln25_1_reg_392[0]_i_44_n_1 }),
        .O(\NLW_and_ln25_1_reg_392_reg[0]_i_22_O_UNCONNECTED [3:0]),
        .S({\and_ln25_1_reg_392[0]_i_45_n_1 ,\and_ln25_1_reg_392[0]_i_46_n_1 ,\and_ln25_1_reg_392[0]_i_47_n_1 ,\and_ln25_1_reg_392[0]_i_48_n_1 }));
  CARRY4 \and_ln25_1_reg_392_reg[0]_i_3 
       (.CI(\and_ln25_1_reg_392_reg[0]_i_13_n_1 ),
        .CO({icmp_ln25_fu_215_p2,\and_ln25_1_reg_392_reg[0]_i_3_n_2 ,\and_ln25_1_reg_392_reg[0]_i_3_n_3 ,\and_ln25_1_reg_392_reg[0]_i_3_n_4 }),
        .CYINIT(1'b0),
        .DI({\and_ln25_1_reg_392[0]_i_14_n_1 ,\and_ln25_1_reg_392[0]_i_15_n_1 ,\and_ln25_1_reg_392[0]_i_16_n_1 ,\and_ln25_1_reg_392[0]_i_17_n_1 }),
        .O(\NLW_and_ln25_1_reg_392_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\and_ln25_1_reg_392[0]_i_18_n_1 ,\and_ln25_1_reg_392[0]_i_19_n_1 ,\and_ln25_1_reg_392[0]_i_20_n_1 ,\and_ln25_1_reg_392[0]_i_21_n_1 }));
  CARRY4 \and_ln25_1_reg_392_reg[0]_i_31 
       (.CI(\and_ln25_1_reg_392_reg[0]_i_49_n_1 ),
        .CO({\and_ln25_1_reg_392_reg[0]_i_31_n_1 ,\and_ln25_1_reg_392_reg[0]_i_31_n_2 ,\and_ln25_1_reg_392_reg[0]_i_31_n_3 ,\and_ln25_1_reg_392_reg[0]_i_31_n_4 }),
        .CYINIT(1'b0),
        .DI({\and_ln25_1_reg_392[0]_i_50_n_1 ,\and_ln25_1_reg_392[0]_i_51_n_1 ,\and_ln25_1_reg_392[0]_i_52_n_1 ,\and_ln25_1_reg_392[0]_i_53_n_1 }),
        .O(\NLW_and_ln25_1_reg_392_reg[0]_i_31_O_UNCONNECTED [3:0]),
        .S({\and_ln25_1_reg_392[0]_i_54_n_1 ,\and_ln25_1_reg_392[0]_i_55_n_1 ,\and_ln25_1_reg_392[0]_i_56_n_1 ,\and_ln25_1_reg_392[0]_i_57_n_1 }));
  CARRY4 \and_ln25_1_reg_392_reg[0]_i_4 
       (.CI(\and_ln25_1_reg_392_reg[0]_i_22_n_1 ),
        .CO({\and_ln25_1_reg_392_reg[0]_i_4_n_1 ,\and_ln25_1_reg_392_reg[0]_i_4_n_2 ,\and_ln25_1_reg_392_reg[0]_i_4_n_3 ,\and_ln25_1_reg_392_reg[0]_i_4_n_4 }),
        .CYINIT(1'b0),
        .DI({\and_ln25_1_reg_392[0]_i_23_n_1 ,\and_ln25_1_reg_392[0]_i_24_n_1 ,\and_ln25_1_reg_392[0]_i_25_n_1 ,\and_ln25_1_reg_392[0]_i_26_n_1 }),
        .O(\NLW_and_ln25_1_reg_392_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({\and_ln25_1_reg_392[0]_i_27_n_1 ,\and_ln25_1_reg_392[0]_i_28_n_1 ,\and_ln25_1_reg_392[0]_i_29_n_1 ,\and_ln25_1_reg_392[0]_i_30_n_1 }));
  CARRY4 \and_ln25_1_reg_392_reg[0]_i_40 
       (.CI(1'b0),
        .CO({\and_ln25_1_reg_392_reg[0]_i_40_n_1 ,\and_ln25_1_reg_392_reg[0]_i_40_n_2 ,\and_ln25_1_reg_392_reg[0]_i_40_n_3 ,\and_ln25_1_reg_392_reg[0]_i_40_n_4 }),
        .CYINIT(1'b0),
        .DI({\and_ln25_1_reg_392[0]_i_58_n_1 ,\and_ln25_1_reg_392[0]_i_59_n_1 ,\and_ln25_1_reg_392[0]_i_60_n_1 ,\and_ln25_1_reg_392[0]_i_61_n_1 }),
        .O(\NLW_and_ln25_1_reg_392_reg[0]_i_40_O_UNCONNECTED [3:0]),
        .S({\and_ln25_1_reg_392[0]_i_62_n_1 ,\and_ln25_1_reg_392[0]_i_63_n_1 ,\and_ln25_1_reg_392[0]_i_64_n_1 ,\and_ln25_1_reg_392[0]_i_65_n_1 }));
  CARRY4 \and_ln25_1_reg_392_reg[0]_i_49 
       (.CI(1'b0),
        .CO({\and_ln25_1_reg_392_reg[0]_i_49_n_1 ,\and_ln25_1_reg_392_reg[0]_i_49_n_2 ,\and_ln25_1_reg_392_reg[0]_i_49_n_3 ,\and_ln25_1_reg_392_reg[0]_i_49_n_4 }),
        .CYINIT(1'b0),
        .DI({\and_ln25_1_reg_392[0]_i_66_n_1 ,\and_ln25_1_reg_392[0]_i_67_n_1 ,\and_ln25_1_reg_392[0]_i_68_n_1 ,\and_ln25_1_reg_392[0]_i_69_n_1 }),
        .O(\NLW_and_ln25_1_reg_392_reg[0]_i_49_O_UNCONNECTED [3:0]),
        .S({\and_ln25_1_reg_392[0]_i_70_n_1 ,\and_ln25_1_reg_392[0]_i_71_n_1 ,\and_ln25_1_reg_392[0]_i_72_n_1 ,\and_ln25_1_reg_392[0]_i_73_n_1 }));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \and_ln25_2_reg_405[0]_i_1 
       (.I0(icmp_ln25_3_fu_267_p2),
        .I1(and_ln25_1_reg_392),
        .I2(icmp_ln25_2_fu_256_p2),
        .I3(pixel_1_fu_881),
        .I4(and_ln25_2_reg_405),
        .O(\and_ln25_2_reg_405[0]_i_1_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_10 
       (.I0(add_ln25_reg_374[28]),
        .I1(add_ln25_reg_374[29]),
        .O(\and_ln25_2_reg_405[0]_i_10_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_11 
       (.I0(add_ln25_reg_374[26]),
        .I1(add_ln25_reg_374[27]),
        .O(\and_ln25_2_reg_405[0]_i_11_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_12 
       (.I0(add_ln25_reg_374[24]),
        .I1(add_ln25_reg_374[25]),
        .O(\and_ln25_2_reg_405[0]_i_12_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \and_ln25_2_reg_405[0]_i_14 
       (.I0(start_x_read_reg_369[30]),
        .I1(start_x_read_reg_369[31]),
        .O(\and_ln25_2_reg_405[0]_i_14_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_15 
       (.I0(start_x_read_reg_369[29]),
        .I1(start_x_read_reg_369[28]),
        .O(\and_ln25_2_reg_405[0]_i_15_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_16 
       (.I0(start_x_read_reg_369[27]),
        .I1(start_x_read_reg_369[26]),
        .O(\and_ln25_2_reg_405[0]_i_16_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_17 
       (.I0(start_x_read_reg_369[25]),
        .I1(start_x_read_reg_369[24]),
        .O(\and_ln25_2_reg_405[0]_i_17_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_18 
       (.I0(start_x_read_reg_369[31]),
        .I1(start_x_read_reg_369[30]),
        .O(\and_ln25_2_reg_405[0]_i_18_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_19 
       (.I0(start_x_read_reg_369[28]),
        .I1(start_x_read_reg_369[29]),
        .O(\and_ln25_2_reg_405[0]_i_19_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_20 
       (.I0(start_x_read_reg_369[26]),
        .I1(start_x_read_reg_369[27]),
        .O(\and_ln25_2_reg_405[0]_i_20_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_21 
       (.I0(start_x_read_reg_369[24]),
        .I1(start_x_read_reg_369[25]),
        .O(\and_ln25_2_reg_405[0]_i_21_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_23 
       (.I0(add_ln25_reg_374[23]),
        .I1(add_ln25_reg_374[22]),
        .O(\and_ln25_2_reg_405[0]_i_23_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_24 
       (.I0(add_ln25_reg_374[21]),
        .I1(add_ln25_reg_374[20]),
        .O(\and_ln25_2_reg_405[0]_i_24_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_25 
       (.I0(add_ln25_reg_374[19]),
        .I1(add_ln25_reg_374[18]),
        .O(\and_ln25_2_reg_405[0]_i_25_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_26 
       (.I0(add_ln25_reg_374[17]),
        .I1(add_ln25_reg_374[16]),
        .O(\and_ln25_2_reg_405[0]_i_26_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_27 
       (.I0(add_ln25_reg_374[22]),
        .I1(add_ln25_reg_374[23]),
        .O(\and_ln25_2_reg_405[0]_i_27_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_28 
       (.I0(add_ln25_reg_374[20]),
        .I1(add_ln25_reg_374[21]),
        .O(\and_ln25_2_reg_405[0]_i_28_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_29 
       (.I0(add_ln25_reg_374[18]),
        .I1(add_ln25_reg_374[19]),
        .O(\and_ln25_2_reg_405[0]_i_29_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_30 
       (.I0(add_ln25_reg_374[16]),
        .I1(add_ln25_reg_374[17]),
        .O(\and_ln25_2_reg_405[0]_i_30_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_32 
       (.I0(start_x_read_reg_369[23]),
        .I1(start_x_read_reg_369[22]),
        .O(\and_ln25_2_reg_405[0]_i_32_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_33 
       (.I0(start_x_read_reg_369[21]),
        .I1(start_x_read_reg_369[20]),
        .O(\and_ln25_2_reg_405[0]_i_33_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_34 
       (.I0(start_x_read_reg_369[19]),
        .I1(start_x_read_reg_369[18]),
        .O(\and_ln25_2_reg_405[0]_i_34_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_35 
       (.I0(start_x_read_reg_369[17]),
        .I1(start_x_read_reg_369[16]),
        .O(\and_ln25_2_reg_405[0]_i_35_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_36 
       (.I0(start_x_read_reg_369[22]),
        .I1(start_x_read_reg_369[23]),
        .O(\and_ln25_2_reg_405[0]_i_36_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_37 
       (.I0(start_x_read_reg_369[20]),
        .I1(start_x_read_reg_369[21]),
        .O(\and_ln25_2_reg_405[0]_i_37_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_38 
       (.I0(start_x_read_reg_369[18]),
        .I1(start_x_read_reg_369[19]),
        .O(\and_ln25_2_reg_405[0]_i_38_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_39 
       (.I0(start_x_read_reg_369[16]),
        .I1(start_x_read_reg_369[17]),
        .O(\and_ln25_2_reg_405[0]_i_39_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_41 
       (.I0(add_ln25_reg_374[15]),
        .I1(add_ln25_reg_374[14]),
        .O(\and_ln25_2_reg_405[0]_i_41_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_42 
       (.I0(add_ln25_reg_374[13]),
        .I1(add_ln25_reg_374[12]),
        .O(\and_ln25_2_reg_405[0]_i_42_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_43 
       (.I0(add_ln25_reg_374[11]),
        .I1(add_ln25_reg_374[10]),
        .O(\and_ln25_2_reg_405[0]_i_43_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_2_reg_405[0]_i_44 
       (.I0(add_ln25_reg_374[8]),
        .I1(j_0_reg_171[8]),
        .I2(j_0_reg_171[9]),
        .I3(add_ln25_reg_374[9]),
        .O(\and_ln25_2_reg_405[0]_i_44_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_45 
       (.I0(add_ln25_reg_374[14]),
        .I1(add_ln25_reg_374[15]),
        .O(\and_ln25_2_reg_405[0]_i_45_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_46 
       (.I0(add_ln25_reg_374[12]),
        .I1(add_ln25_reg_374[13]),
        .O(\and_ln25_2_reg_405[0]_i_46_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_47 
       (.I0(add_ln25_reg_374[10]),
        .I1(add_ln25_reg_374[11]),
        .O(\and_ln25_2_reg_405[0]_i_47_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_2_reg_405[0]_i_48 
       (.I0(j_0_reg_171[8]),
        .I1(add_ln25_reg_374[8]),
        .I2(j_0_reg_171[9]),
        .I3(add_ln25_reg_374[9]),
        .O(\and_ln25_2_reg_405[0]_i_48_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \and_ln25_2_reg_405[0]_i_5 
       (.I0(add_ln25_reg_374[30]),
        .I1(add_ln25_reg_374[31]),
        .O(\and_ln25_2_reg_405[0]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_50 
       (.I0(start_x_read_reg_369[15]),
        .I1(start_x_read_reg_369[14]),
        .O(\and_ln25_2_reg_405[0]_i_50_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_51 
       (.I0(start_x_read_reg_369[13]),
        .I1(start_x_read_reg_369[12]),
        .O(\and_ln25_2_reg_405[0]_i_51_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_52 
       (.I0(start_x_read_reg_369[11]),
        .I1(start_x_read_reg_369[10]),
        .O(\and_ln25_2_reg_405[0]_i_52_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_2_reg_405[0]_i_53 
       (.I0(start_x_read_reg_369[8]),
        .I1(j_0_reg_171[8]),
        .I2(j_0_reg_171[9]),
        .I3(start_x_read_reg_369[9]),
        .O(\and_ln25_2_reg_405[0]_i_53_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_54 
       (.I0(start_x_read_reg_369[14]),
        .I1(start_x_read_reg_369[15]),
        .O(\and_ln25_2_reg_405[0]_i_54_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_55 
       (.I0(start_x_read_reg_369[12]),
        .I1(start_x_read_reg_369[13]),
        .O(\and_ln25_2_reg_405[0]_i_55_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_56 
       (.I0(start_x_read_reg_369[10]),
        .I1(start_x_read_reg_369[11]),
        .O(\and_ln25_2_reg_405[0]_i_56_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_2_reg_405[0]_i_57 
       (.I0(j_0_reg_171[8]),
        .I1(start_x_read_reg_369[8]),
        .I2(j_0_reg_171[9]),
        .I3(start_x_read_reg_369[9]),
        .O(\and_ln25_2_reg_405[0]_i_57_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_2_reg_405[0]_i_58 
       (.I0(add_ln25_reg_374[6]),
        .I1(j_0_reg_171[6]),
        .I2(j_0_reg_171[7]),
        .I3(add_ln25_reg_374[7]),
        .O(\and_ln25_2_reg_405[0]_i_58_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_2_reg_405[0]_i_59 
       (.I0(add_ln25_reg_374[4]),
        .I1(j_0_reg_171[4]),
        .I2(j_0_reg_171[5]),
        .I3(add_ln25_reg_374[5]),
        .O(\and_ln25_2_reg_405[0]_i_59_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_6 
       (.I0(add_ln25_reg_374[29]),
        .I1(add_ln25_reg_374[28]),
        .O(\and_ln25_2_reg_405[0]_i_6_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_2_reg_405[0]_i_60 
       (.I0(add_ln25_reg_374[2]),
        .I1(j_0_reg_171[2]),
        .I2(j_0_reg_171[3]),
        .I3(add_ln25_reg_374[3]),
        .O(\and_ln25_2_reg_405[0]_i_60_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_2_reg_405[0]_i_61 
       (.I0(start_x_read_reg_369[0]),
        .I1(j_0_reg_171[0]),
        .I2(j_0_reg_171[1]),
        .I3(start_x_read_reg_369[1]),
        .O(\and_ln25_2_reg_405[0]_i_61_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_2_reg_405[0]_i_62 
       (.I0(j_0_reg_171[6]),
        .I1(add_ln25_reg_374[6]),
        .I2(j_0_reg_171[7]),
        .I3(add_ln25_reg_374[7]),
        .O(\and_ln25_2_reg_405[0]_i_62_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_2_reg_405[0]_i_63 
       (.I0(j_0_reg_171[4]),
        .I1(add_ln25_reg_374[4]),
        .I2(j_0_reg_171[5]),
        .I3(add_ln25_reg_374[5]),
        .O(\and_ln25_2_reg_405[0]_i_63_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_2_reg_405[0]_i_64 
       (.I0(j_0_reg_171[2]),
        .I1(add_ln25_reg_374[2]),
        .I2(j_0_reg_171[3]),
        .I3(add_ln25_reg_374[3]),
        .O(\and_ln25_2_reg_405[0]_i_64_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_2_reg_405[0]_i_65 
       (.I0(j_0_reg_171[0]),
        .I1(start_x_read_reg_369[0]),
        .I2(j_0_reg_171[1]),
        .I3(start_x_read_reg_369[1]),
        .O(\and_ln25_2_reg_405[0]_i_65_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_2_reg_405[0]_i_66 
       (.I0(start_x_read_reg_369[6]),
        .I1(j_0_reg_171[6]),
        .I2(j_0_reg_171[7]),
        .I3(start_x_read_reg_369[7]),
        .O(\and_ln25_2_reg_405[0]_i_66_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_2_reg_405[0]_i_67 
       (.I0(start_x_read_reg_369[4]),
        .I1(j_0_reg_171[4]),
        .I2(j_0_reg_171[5]),
        .I3(start_x_read_reg_369[5]),
        .O(\and_ln25_2_reg_405[0]_i_67_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_2_reg_405[0]_i_68 
       (.I0(start_x_read_reg_369[2]),
        .I1(j_0_reg_171[2]),
        .I2(j_0_reg_171[3]),
        .I3(start_x_read_reg_369[3]),
        .O(\and_ln25_2_reg_405[0]_i_68_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \and_ln25_2_reg_405[0]_i_69 
       (.I0(start_x_read_reg_369[0]),
        .I1(j_0_reg_171[0]),
        .I2(j_0_reg_171[1]),
        .I3(start_x_read_reg_369[1]),
        .O(\and_ln25_2_reg_405[0]_i_69_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_7 
       (.I0(add_ln25_reg_374[27]),
        .I1(add_ln25_reg_374[26]),
        .O(\and_ln25_2_reg_405[0]_i_7_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_2_reg_405[0]_i_70 
       (.I0(j_0_reg_171[6]),
        .I1(start_x_read_reg_369[6]),
        .I2(j_0_reg_171[7]),
        .I3(start_x_read_reg_369[7]),
        .O(\and_ln25_2_reg_405[0]_i_70_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_2_reg_405[0]_i_71 
       (.I0(j_0_reg_171[4]),
        .I1(start_x_read_reg_369[4]),
        .I2(j_0_reg_171[5]),
        .I3(start_x_read_reg_369[5]),
        .O(\and_ln25_2_reg_405[0]_i_71_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_2_reg_405[0]_i_72 
       (.I0(j_0_reg_171[2]),
        .I1(start_x_read_reg_369[2]),
        .I2(j_0_reg_171[3]),
        .I3(start_x_read_reg_369[3]),
        .O(\and_ln25_2_reg_405[0]_i_72_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \and_ln25_2_reg_405[0]_i_73 
       (.I0(j_0_reg_171[0]),
        .I1(start_x_read_reg_369[0]),
        .I2(j_0_reg_171[1]),
        .I3(start_x_read_reg_369[1]),
        .O(\and_ln25_2_reg_405[0]_i_73_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln25_2_reg_405[0]_i_8 
       (.I0(add_ln25_reg_374[25]),
        .I1(add_ln25_reg_374[24]),
        .O(\and_ln25_2_reg_405[0]_i_8_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \and_ln25_2_reg_405[0]_i_9 
       (.I0(add_ln25_reg_374[31]),
        .I1(add_ln25_reg_374[30]),
        .O(\and_ln25_2_reg_405[0]_i_9_n_1 ));
  FDRE \and_ln25_2_reg_405_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\and_ln25_2_reg_405[0]_i_1_n_1 ),
        .Q(and_ln25_2_reg_405),
        .R(1'b0));
  CARRY4 \and_ln25_2_reg_405_reg[0]_i_13 
       (.CI(\and_ln25_2_reg_405_reg[0]_i_31_n_1 ),
        .CO({\and_ln25_2_reg_405_reg[0]_i_13_n_1 ,\and_ln25_2_reg_405_reg[0]_i_13_n_2 ,\and_ln25_2_reg_405_reg[0]_i_13_n_3 ,\and_ln25_2_reg_405_reg[0]_i_13_n_4 }),
        .CYINIT(1'b0),
        .DI({\and_ln25_2_reg_405[0]_i_32_n_1 ,\and_ln25_2_reg_405[0]_i_33_n_1 ,\and_ln25_2_reg_405[0]_i_34_n_1 ,\and_ln25_2_reg_405[0]_i_35_n_1 }),
        .O(\NLW_and_ln25_2_reg_405_reg[0]_i_13_O_UNCONNECTED [3:0]),
        .S({\and_ln25_2_reg_405[0]_i_36_n_1 ,\and_ln25_2_reg_405[0]_i_37_n_1 ,\and_ln25_2_reg_405[0]_i_38_n_1 ,\and_ln25_2_reg_405[0]_i_39_n_1 }));
  CARRY4 \and_ln25_2_reg_405_reg[0]_i_2 
       (.CI(\and_ln25_2_reg_405_reg[0]_i_4_n_1 ),
        .CO({icmp_ln25_3_fu_267_p2,\and_ln25_2_reg_405_reg[0]_i_2_n_2 ,\and_ln25_2_reg_405_reg[0]_i_2_n_3 ,\and_ln25_2_reg_405_reg[0]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({\and_ln25_2_reg_405[0]_i_5_n_1 ,\and_ln25_2_reg_405[0]_i_6_n_1 ,\and_ln25_2_reg_405[0]_i_7_n_1 ,\and_ln25_2_reg_405[0]_i_8_n_1 }),
        .O(\NLW_and_ln25_2_reg_405_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\and_ln25_2_reg_405[0]_i_9_n_1 ,\and_ln25_2_reg_405[0]_i_10_n_1 ,\and_ln25_2_reg_405[0]_i_11_n_1 ,\and_ln25_2_reg_405[0]_i_12_n_1 }));
  CARRY4 \and_ln25_2_reg_405_reg[0]_i_22 
       (.CI(\and_ln25_2_reg_405_reg[0]_i_40_n_1 ),
        .CO({\and_ln25_2_reg_405_reg[0]_i_22_n_1 ,\and_ln25_2_reg_405_reg[0]_i_22_n_2 ,\and_ln25_2_reg_405_reg[0]_i_22_n_3 ,\and_ln25_2_reg_405_reg[0]_i_22_n_4 }),
        .CYINIT(1'b0),
        .DI({\and_ln25_2_reg_405[0]_i_41_n_1 ,\and_ln25_2_reg_405[0]_i_42_n_1 ,\and_ln25_2_reg_405[0]_i_43_n_1 ,\and_ln25_2_reg_405[0]_i_44_n_1 }),
        .O(\NLW_and_ln25_2_reg_405_reg[0]_i_22_O_UNCONNECTED [3:0]),
        .S({\and_ln25_2_reg_405[0]_i_45_n_1 ,\and_ln25_2_reg_405[0]_i_46_n_1 ,\and_ln25_2_reg_405[0]_i_47_n_1 ,\and_ln25_2_reg_405[0]_i_48_n_1 }));
  CARRY4 \and_ln25_2_reg_405_reg[0]_i_3 
       (.CI(\and_ln25_2_reg_405_reg[0]_i_13_n_1 ),
        .CO({icmp_ln25_2_fu_256_p2,\and_ln25_2_reg_405_reg[0]_i_3_n_2 ,\and_ln25_2_reg_405_reg[0]_i_3_n_3 ,\and_ln25_2_reg_405_reg[0]_i_3_n_4 }),
        .CYINIT(1'b0),
        .DI({\and_ln25_2_reg_405[0]_i_14_n_1 ,\and_ln25_2_reg_405[0]_i_15_n_1 ,\and_ln25_2_reg_405[0]_i_16_n_1 ,\and_ln25_2_reg_405[0]_i_17_n_1 }),
        .O(\NLW_and_ln25_2_reg_405_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\and_ln25_2_reg_405[0]_i_18_n_1 ,\and_ln25_2_reg_405[0]_i_19_n_1 ,\and_ln25_2_reg_405[0]_i_20_n_1 ,\and_ln25_2_reg_405[0]_i_21_n_1 }));
  CARRY4 \and_ln25_2_reg_405_reg[0]_i_31 
       (.CI(\and_ln25_2_reg_405_reg[0]_i_49_n_1 ),
        .CO({\and_ln25_2_reg_405_reg[0]_i_31_n_1 ,\and_ln25_2_reg_405_reg[0]_i_31_n_2 ,\and_ln25_2_reg_405_reg[0]_i_31_n_3 ,\and_ln25_2_reg_405_reg[0]_i_31_n_4 }),
        .CYINIT(1'b0),
        .DI({\and_ln25_2_reg_405[0]_i_50_n_1 ,\and_ln25_2_reg_405[0]_i_51_n_1 ,\and_ln25_2_reg_405[0]_i_52_n_1 ,\and_ln25_2_reg_405[0]_i_53_n_1 }),
        .O(\NLW_and_ln25_2_reg_405_reg[0]_i_31_O_UNCONNECTED [3:0]),
        .S({\and_ln25_2_reg_405[0]_i_54_n_1 ,\and_ln25_2_reg_405[0]_i_55_n_1 ,\and_ln25_2_reg_405[0]_i_56_n_1 ,\and_ln25_2_reg_405[0]_i_57_n_1 }));
  CARRY4 \and_ln25_2_reg_405_reg[0]_i_4 
       (.CI(\and_ln25_2_reg_405_reg[0]_i_22_n_1 ),
        .CO({\and_ln25_2_reg_405_reg[0]_i_4_n_1 ,\and_ln25_2_reg_405_reg[0]_i_4_n_2 ,\and_ln25_2_reg_405_reg[0]_i_4_n_3 ,\and_ln25_2_reg_405_reg[0]_i_4_n_4 }),
        .CYINIT(1'b0),
        .DI({\and_ln25_2_reg_405[0]_i_23_n_1 ,\and_ln25_2_reg_405[0]_i_24_n_1 ,\and_ln25_2_reg_405[0]_i_25_n_1 ,\and_ln25_2_reg_405[0]_i_26_n_1 }),
        .O(\NLW_and_ln25_2_reg_405_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({\and_ln25_2_reg_405[0]_i_27_n_1 ,\and_ln25_2_reg_405[0]_i_28_n_1 ,\and_ln25_2_reg_405[0]_i_29_n_1 ,\and_ln25_2_reg_405[0]_i_30_n_1 }));
  CARRY4 \and_ln25_2_reg_405_reg[0]_i_40 
       (.CI(1'b0),
        .CO({\and_ln25_2_reg_405_reg[0]_i_40_n_1 ,\and_ln25_2_reg_405_reg[0]_i_40_n_2 ,\and_ln25_2_reg_405_reg[0]_i_40_n_3 ,\and_ln25_2_reg_405_reg[0]_i_40_n_4 }),
        .CYINIT(1'b0),
        .DI({\and_ln25_2_reg_405[0]_i_58_n_1 ,\and_ln25_2_reg_405[0]_i_59_n_1 ,\and_ln25_2_reg_405[0]_i_60_n_1 ,\and_ln25_2_reg_405[0]_i_61_n_1 }),
        .O(\NLW_and_ln25_2_reg_405_reg[0]_i_40_O_UNCONNECTED [3:0]),
        .S({\and_ln25_2_reg_405[0]_i_62_n_1 ,\and_ln25_2_reg_405[0]_i_63_n_1 ,\and_ln25_2_reg_405[0]_i_64_n_1 ,\and_ln25_2_reg_405[0]_i_65_n_1 }));
  CARRY4 \and_ln25_2_reg_405_reg[0]_i_49 
       (.CI(1'b0),
        .CO({\and_ln25_2_reg_405_reg[0]_i_49_n_1 ,\and_ln25_2_reg_405_reg[0]_i_49_n_2 ,\and_ln25_2_reg_405_reg[0]_i_49_n_3 ,\and_ln25_2_reg_405_reg[0]_i_49_n_4 }),
        .CYINIT(1'b0),
        .DI({\and_ln25_2_reg_405[0]_i_66_n_1 ,\and_ln25_2_reg_405[0]_i_67_n_1 ,\and_ln25_2_reg_405[0]_i_68_n_1 ,\and_ln25_2_reg_405[0]_i_69_n_1 }),
        .O(\NLW_and_ln25_2_reg_405_reg[0]_i_49_O_UNCONNECTED [3:0]),
        .S({\and_ln25_2_reg_405[0]_i_70_n_1 ,\and_ln25_2_reg_405[0]_i_71_n_1 ,\and_ln25_2_reg_405[0]_i_72_n_1 ,\and_ln25_2_reg_405[0]_i_73_n_1 }));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA8AAAAA)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(ce0),
        .I1(\i_0_reg_160[8]_i_3_n_1 ),
        .I2(j_0_reg_171[9]),
        .I3(j_0_reg_171[6]),
        .I4(j_0_reg_171[7]),
        .I5(j_0_reg_171[2]),
        .O(pixel_1_fu_881));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_1_[0] ),
        .S(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ce0),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(reset));
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_1_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  LUT4 #(
    .INIT(16'h0040)) 
    ap_ready_INST_0_i_1
       (.I0(\i_0_reg_160_reg_n_1_[3] ),
        .I1(\i_0_reg_160_reg_n_1_[7] ),
        .I2(\i_0_reg_160_reg_n_1_[8] ),
        .I3(ap_ready_INST_0_i_2_n_1),
        .O(ap_ready_INST_0_i_1_n_1));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    ap_ready_INST_0_i_2
       (.I0(\i_0_reg_160_reg_n_1_[0] ),
        .I1(\i_0_reg_160_reg_n_1_[1] ),
        .I2(\i_0_reg_160_reg_n_1_[2] ),
        .I3(\i_0_reg_160_reg_n_1_[4] ),
        .I4(\i_0_reg_160_reg_n_1_[6] ),
        .I5(\i_0_reg_160_reg_n_1_[5] ),
        .O(ap_ready_INST_0_i_2_n_1));
  LUT3 #(
    .INIT(8'h08)) 
    \i_0_reg_160[8]_i_1 
       (.I0(\ap_CS_fsm_reg_n_1_[0] ),
        .I1(ap_start),
        .I2(ap_NS_fsm10_out),
        .O(i_0_reg_160));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \i_0_reg_160[8]_i_2 
       (.I0(ce0),
        .I1(\i_0_reg_160[8]_i_3_n_1 ),
        .I2(j_0_reg_171[9]),
        .I3(j_0_reg_171[6]),
        .I4(j_0_reg_171[7]),
        .I5(j_0_reg_171[2]),
        .O(ap_NS_fsm10_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \i_0_reg_160[8]_i_3 
       (.I0(j_0_reg_171[0]),
        .I1(j_0_reg_171[1]),
        .I2(j_0_reg_171[8]),
        .I3(j_0_reg_171[5]),
        .I4(j_0_reg_171[3]),
        .I5(j_0_reg_171[4]),
        .O(\i_0_reg_160[8]_i_3_n_1 ));
  FDRE \i_0_reg_160_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm10_out),
        .D(i_reg_387[0]),
        .Q(\i_0_reg_160_reg_n_1_[0] ),
        .R(i_0_reg_160));
  FDRE \i_0_reg_160_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm10_out),
        .D(i_reg_387[1]),
        .Q(\i_0_reg_160_reg_n_1_[1] ),
        .R(i_0_reg_160));
  FDRE \i_0_reg_160_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm10_out),
        .D(i_reg_387[2]),
        .Q(\i_0_reg_160_reg_n_1_[2] ),
        .R(i_0_reg_160));
  FDRE \i_0_reg_160_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm10_out),
        .D(i_reg_387[3]),
        .Q(\i_0_reg_160_reg_n_1_[3] ),
        .R(i_0_reg_160));
  FDRE \i_0_reg_160_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm10_out),
        .D(i_reg_387[4]),
        .Q(\i_0_reg_160_reg_n_1_[4] ),
        .R(i_0_reg_160));
  FDRE \i_0_reg_160_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm10_out),
        .D(i_reg_387[5]),
        .Q(\i_0_reg_160_reg_n_1_[5] ),
        .R(i_0_reg_160));
  FDRE \i_0_reg_160_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm10_out),
        .D(i_reg_387[6]),
        .Q(\i_0_reg_160_reg_n_1_[6] ),
        .R(i_0_reg_160));
  FDRE \i_0_reg_160_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm10_out),
        .D(i_reg_387[7]),
        .Q(\i_0_reg_160_reg_n_1_[7] ),
        .R(i_0_reg_160));
  FDRE \i_0_reg_160_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm10_out),
        .D(i_reg_387[8]),
        .Q(\i_0_reg_160_reg_n_1_[8] ),
        .R(i_0_reg_160));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_reg_387[0]_i_1 
       (.I0(\i_0_reg_160_reg_n_1_[0] ),
        .O(i_fu_209_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_reg_387[1]_i_1 
       (.I0(\i_0_reg_160_reg_n_1_[1] ),
        .I1(\i_0_reg_160_reg_n_1_[0] ),
        .O(i_fu_209_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_reg_387[2]_i_1 
       (.I0(\i_0_reg_160_reg_n_1_[2] ),
        .I1(\i_0_reg_160_reg_n_1_[1] ),
        .I2(\i_0_reg_160_reg_n_1_[0] ),
        .O(i_fu_209_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_reg_387[3]_i_1 
       (.I0(\i_0_reg_160_reg_n_1_[3] ),
        .I1(\i_0_reg_160_reg_n_1_[0] ),
        .I2(\i_0_reg_160_reg_n_1_[1] ),
        .I3(\i_0_reg_160_reg_n_1_[2] ),
        .O(i_fu_209_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \i_reg_387[4]_i_1 
       (.I0(\i_0_reg_160_reg_n_1_[2] ),
        .I1(\i_0_reg_160_reg_n_1_[1] ),
        .I2(\i_0_reg_160_reg_n_1_[0] ),
        .I3(\i_0_reg_160_reg_n_1_[3] ),
        .I4(\i_0_reg_160_reg_n_1_[4] ),
        .O(i_fu_209_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i_reg_387[5]_i_1 
       (.I0(\i_0_reg_160_reg_n_1_[5] ),
        .I1(\i_0_reg_160_reg_n_1_[2] ),
        .I2(\i_0_reg_160_reg_n_1_[1] ),
        .I3(\i_0_reg_160_reg_n_1_[0] ),
        .I4(\i_0_reg_160_reg_n_1_[3] ),
        .I5(\i_0_reg_160_reg_n_1_[4] ),
        .O(i_fu_209_p2[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \i_reg_387[6]_i_1 
       (.I0(\i_0_reg_160_reg_n_1_[6] ),
        .I1(\i_reg_387[8]_i_3_n_1 ),
        .I2(\i_0_reg_160_reg_n_1_[5] ),
        .O(i_fu_209_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_reg_387[7]_i_1 
       (.I0(\i_0_reg_160_reg_n_1_[7] ),
        .I1(\i_0_reg_160_reg_n_1_[6] ),
        .I2(\i_0_reg_160_reg_n_1_[5] ),
        .I3(\i_reg_387[8]_i_3_n_1 ),
        .O(i_fu_209_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_reg_387[8]_i_2 
       (.I0(\i_0_reg_160_reg_n_1_[8] ),
        .I1(\i_reg_387[8]_i_3_n_1 ),
        .I2(\i_0_reg_160_reg_n_1_[5] ),
        .I3(\i_0_reg_160_reg_n_1_[6] ),
        .I4(\i_0_reg_160_reg_n_1_[7] ),
        .O(i_fu_209_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \i_reg_387[8]_i_3 
       (.I0(\i_0_reg_160_reg_n_1_[4] ),
        .I1(\i_0_reg_160_reg_n_1_[3] ),
        .I2(\i_0_reg_160_reg_n_1_[0] ),
        .I3(\i_0_reg_160_reg_n_1_[1] ),
        .I4(\i_0_reg_160_reg_n_1_[2] ),
        .O(\i_reg_387[8]_i_3_n_1 ));
  FDRE \i_reg_387_reg[0] 
       (.C(ap_clk),
        .CE(i_reg_3870),
        .D(i_fu_209_p2[0]),
        .Q(i_reg_387[0]),
        .R(1'b0));
  FDRE \i_reg_387_reg[1] 
       (.C(ap_clk),
        .CE(i_reg_3870),
        .D(i_fu_209_p2[1]),
        .Q(i_reg_387[1]),
        .R(1'b0));
  FDRE \i_reg_387_reg[2] 
       (.C(ap_clk),
        .CE(i_reg_3870),
        .D(i_fu_209_p2[2]),
        .Q(i_reg_387[2]),
        .R(1'b0));
  FDRE \i_reg_387_reg[3] 
       (.C(ap_clk),
        .CE(i_reg_3870),
        .D(i_fu_209_p2[3]),
        .Q(i_reg_387[3]),
        .R(1'b0));
  FDRE \i_reg_387_reg[4] 
       (.C(ap_clk),
        .CE(i_reg_3870),
        .D(i_fu_209_p2[4]),
        .Q(i_reg_387[4]),
        .R(1'b0));
  FDRE \i_reg_387_reg[5] 
       (.C(ap_clk),
        .CE(i_reg_3870),
        .D(i_fu_209_p2[5]),
        .Q(i_reg_387[5]),
        .R(1'b0));
  FDRE \i_reg_387_reg[6] 
       (.C(ap_clk),
        .CE(i_reg_3870),
        .D(i_fu_209_p2[6]),
        .Q(i_reg_387[6]),
        .R(1'b0));
  FDRE \i_reg_387_reg[7] 
       (.C(ap_clk),
        .CE(i_reg_3870),
        .D(i_fu_209_p2[7]),
        .Q(i_reg_387[7]),
        .R(1'b0));
  FDRE \i_reg_387_reg[8] 
       (.C(ap_clk),
        .CE(i_reg_3870),
        .D(i_fu_209_p2[8]),
        .Q(i_reg_387[8]),
        .R(1'b0));
  bd_0_hls_inst_0_incrust_AXILiteS_s_axi incrust_AXILiteS_s_axi_U
       (.\FSM_onehot_rstate_reg[1]_0 (s_axi_AXILiteS_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_AXILiteS_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_AXILiteS_WREADY),
        .O45(add_ln25_fu_182_p2),
        .O46(add_ln25_1_fu_188_p2),
        .Q(start_y),
        .ap_clk(ap_clk),
        .\int_start_x_reg[31]_0 (start_x),
        .reset(reset),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
        .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
        .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
        .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
        .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID));
  FDRE \j_0_reg_171_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(j_reg_400[0]),
        .Q(j_0_reg_171[0]),
        .R(ap_NS_fsm11_out));
  FDRE \j_0_reg_171_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(j_reg_400[1]),
        .Q(j_0_reg_171[1]),
        .R(ap_NS_fsm11_out));
  FDRE \j_0_reg_171_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(j_reg_400[2]),
        .Q(j_0_reg_171[2]),
        .R(ap_NS_fsm11_out));
  FDRE \j_0_reg_171_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(j_reg_400[3]),
        .Q(j_0_reg_171[3]),
        .R(ap_NS_fsm11_out));
  FDRE \j_0_reg_171_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(j_reg_400[4]),
        .Q(j_0_reg_171[4]),
        .R(ap_NS_fsm11_out));
  FDRE \j_0_reg_171_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(j_reg_400[5]),
        .Q(j_0_reg_171[5]),
        .R(ap_NS_fsm11_out));
  FDRE \j_0_reg_171_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(j_reg_400[6]),
        .Q(j_0_reg_171[6]),
        .R(ap_NS_fsm11_out));
  FDRE \j_0_reg_171_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(j_reg_400[7]),
        .Q(j_0_reg_171[7]),
        .R(ap_NS_fsm11_out));
  FDRE \j_0_reg_171_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(j_reg_400[8]),
        .Q(j_0_reg_171[8]),
        .R(ap_NS_fsm11_out));
  FDRE \j_0_reg_171_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(j_reg_400[9]),
        .Q(j_0_reg_171[9]),
        .R(ap_NS_fsm11_out));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j_reg_400[0]_i_1 
       (.I0(j_0_reg_171[0]),
        .O(j_fu_247_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j_reg_400[1]_i_1 
       (.I0(j_0_reg_171[1]),
        .I1(j_0_reg_171[0]),
        .O(j_fu_247_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j_reg_400[2]_i_1 
       (.I0(j_0_reg_171[2]),
        .I1(j_0_reg_171[1]),
        .I2(j_0_reg_171[0]),
        .O(j_fu_247_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \j_reg_400[3]_i_1 
       (.I0(j_0_reg_171[3]),
        .I1(j_0_reg_171[0]),
        .I2(j_0_reg_171[1]),
        .I3(j_0_reg_171[2]),
        .O(j_fu_247_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \j_reg_400[4]_i_1 
       (.I0(j_0_reg_171[2]),
        .I1(j_0_reg_171[1]),
        .I2(j_0_reg_171[0]),
        .I3(j_0_reg_171[3]),
        .I4(j_0_reg_171[4]),
        .O(j_fu_247_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \j_reg_400[5]_i_1 
       (.I0(j_0_reg_171[5]),
        .I1(j_0_reg_171[2]),
        .I2(j_0_reg_171[1]),
        .I3(j_0_reg_171[0]),
        .I4(j_0_reg_171[3]),
        .I5(j_0_reg_171[4]),
        .O(j_fu_247_p2[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \j_reg_400[6]_i_1 
       (.I0(j_0_reg_171[6]),
        .I1(\j_reg_400[9]_i_2_n_1 ),
        .I2(j_0_reg_171[5]),
        .O(j_fu_247_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \j_reg_400[7]_i_1 
       (.I0(j_0_reg_171[7]),
        .I1(j_0_reg_171[5]),
        .I2(\j_reg_400[9]_i_2_n_1 ),
        .I3(j_0_reg_171[6]),
        .O(j_fu_247_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \j_reg_400[8]_i_1 
       (.I0(j_0_reg_171[8]),
        .I1(j_0_reg_171[6]),
        .I2(\j_reg_400[9]_i_2_n_1 ),
        .I3(j_0_reg_171[5]),
        .I4(j_0_reg_171[7]),
        .O(j_fu_247_p2[8]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \j_reg_400[9]_i_1 
       (.I0(j_0_reg_171[9]),
        .I1(j_0_reg_171[7]),
        .I2(j_0_reg_171[5]),
        .I3(\j_reg_400[9]_i_2_n_1 ),
        .I4(j_0_reg_171[6]),
        .I5(j_0_reg_171[8]),
        .O(j_fu_247_p2[9]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \j_reg_400[9]_i_2 
       (.I0(j_0_reg_171[4]),
        .I1(j_0_reg_171[3]),
        .I2(j_0_reg_171[0]),
        .I3(j_0_reg_171[1]),
        .I4(j_0_reg_171[2]),
        .O(\j_reg_400[9]_i_2_n_1 ));
  FDRE \j_reg_400_reg[0] 
       (.C(ap_clk),
        .CE(ce0),
        .D(j_fu_247_p2[0]),
        .Q(j_reg_400[0]),
        .R(1'b0));
  FDRE \j_reg_400_reg[1] 
       (.C(ap_clk),
        .CE(ce0),
        .D(j_fu_247_p2[1]),
        .Q(j_reg_400[1]),
        .R(1'b0));
  FDRE \j_reg_400_reg[2] 
       (.C(ap_clk),
        .CE(ce0),
        .D(j_fu_247_p2[2]),
        .Q(j_reg_400[2]),
        .R(1'b0));
  FDRE \j_reg_400_reg[3] 
       (.C(ap_clk),
        .CE(ce0),
        .D(j_fu_247_p2[3]),
        .Q(j_reg_400[3]),
        .R(1'b0));
  FDRE \j_reg_400_reg[4] 
       (.C(ap_clk),
        .CE(ce0),
        .D(j_fu_247_p2[4]),
        .Q(j_reg_400[4]),
        .R(1'b0));
  FDRE \j_reg_400_reg[5] 
       (.C(ap_clk),
        .CE(ce0),
        .D(j_fu_247_p2[5]),
        .Q(j_reg_400[5]),
        .R(1'b0));
  FDRE \j_reg_400_reg[6] 
       (.C(ap_clk),
        .CE(ce0),
        .D(j_fu_247_p2[6]),
        .Q(j_reg_400[6]),
        .R(1'b0));
  FDRE \j_reg_400_reg[7] 
       (.C(ap_clk),
        .CE(ce0),
        .D(j_fu_247_p2[7]),
        .Q(j_reg_400[7]),
        .R(1'b0));
  FDRE \j_reg_400_reg[8] 
       (.C(ap_clk),
        .CE(ce0),
        .D(j_fu_247_p2[8]),
        .Q(j_reg_400[8]),
        .R(1'b0));
  FDRE \j_reg_400_reg[9] 
       (.C(ap_clk),
        .CE(ce0),
        .D(j_fu_247_p2[9]),
        .Q(j_reg_400[9]),
        .R(1'b0));
  bd_0_hls_inst_0_regslice_both regslice_both_m_axis_video_V_data_V_U
       (.CO(icmp_ln25_1_fu_226_p2),
        .D(ap_NS_fsm[3:0]),
        .E(ap_NS_fsm1),
        .Q(\ibuf_inst/p_0_in ),
        .SR(ap_NS_fsm11_out),
        .and_ln25_1_reg_392(and_ln25_1_reg_392),
        .\and_ln25_1_reg_392_reg[0] (regslice_both_m_axis_video_V_data_V_U_n_22),
        .\and_ln25_1_reg_392_reg[0]_0 (icmp_ln25_fu_215_p2),
        .and_ln25_2_reg_405(and_ln25_2_reg_405),
        .\ap_CS_fsm_reg[0] (ap_ready_INST_0_i_1_n_1),
        .\ap_CS_fsm_reg[1] (i_reg_3870),
        .\ap_CS_fsm_reg[1]_0 (ap_NS_fsm10_out),
        .\ap_CS_fsm_reg[1]_1 (ap_NS_fsm12_out),
        .\ap_CS_fsm_reg[2] ({ap_CS_fsm_state5,ap_CS_fsm_state4,ap_CS_fsm_state2,\ap_CS_fsm_reg_n_1_[0] }),
        .\ap_CS_fsm_reg[3] (regslice_both_m_axis_video_V_data_V_U_n_12),
        .\ap_CS_fsm_reg[3]_0 ({vld_out,regslice_both_s_axis_video_V_data_V_U_n_2,regslice_both_s_axis_video_V_data_V_U_n_3,regslice_both_s_axis_video_V_data_V_U_n_4,regslice_both_s_axis_video_V_data_V_U_n_5,regslice_both_s_axis_video_V_data_V_U_n_6,regslice_both_s_axis_video_V_data_V_U_n_7,regslice_both_s_axis_video_V_data_V_U_n_8,regslice_both_s_axis_video_V_data_V_U_n_9}),
        .ap_clk(ap_clk),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .\ireg_reg[7] (data_in),
        .\j_0_reg_171_reg[0] (ap_ready_INST_0_i_2_n_1),
        .\j_0_reg_171_reg[0]_0 ({\i_0_reg_160_reg_n_1_[8] ,\i_0_reg_160_reg_n_1_[7] ,\i_0_reg_160_reg_n_1_[3] }),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .\odata_int_reg[8] ({m_axis_video_TVALID,m_axis_video_TDATA}),
        .\odata_int_reg[8]_0 (regslice_both_s_axis_video_V_data_V_U_n_25),
        .pixel_1_fu_881(pixel_1_fu_881),
        .reset(reset),
        .vld_in(vld_in));
  bd_0_hls_inst_0_regslice_both__parameterized1 regslice_both_m_axis_video_V_dest_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .m_axis_video_TDEST(m_axis_video_TDEST),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .reset(reset),
        .s_axis_video_TDEST_int(s_axis_video_TDEST_int),
        .vld_in(vld_in));
  bd_0_hls_inst_0_regslice_both__parameterized1_0 regslice_both_m_axis_video_V_id_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .m_axis_video_TID(m_axis_video_TID),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .reset(reset),
        .s_axis_video_TID_int(s_axis_video_TID_int),
        .vld_in(vld_in));
  bd_0_hls_inst_0_regslice_both__parameterized1_1 regslice_both_m_axis_video_V_keep_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .m_axis_video_TKEEP(m_axis_video_TKEEP),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .reset(reset),
        .s_axis_video_TKEEP_int(s_axis_video_TKEEP_int),
        .vld_in(vld_in));
  bd_0_hls_inst_0_regslice_both__parameterized1_2 regslice_both_m_axis_video_V_last_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .m_axis_video_TLAST(m_axis_video_TLAST),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .reset(reset),
        .s_axis_video_TLAST_int(s_axis_video_TLAST_int),
        .vld_in(vld_in));
  bd_0_hls_inst_0_regslice_both__parameterized1_3 regslice_both_m_axis_video_V_strb_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .m_axis_video_TSTRB(m_axis_video_TSTRB),
        .reset(reset),
        .s_axis_video_TSTRB_int(s_axis_video_TSTRB_int),
        .vld_in(vld_in));
  bd_0_hls_inst_0_regslice_both__parameterized1_4 regslice_both_m_axis_video_V_user_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .m_axis_video_TUSER(m_axis_video_TUSER),
        .reset(reset),
        .s_axis_video_TUSER_int(s_axis_video_TUSER_int),
        .vld_in(vld_in));
  bd_0_hls_inst_0_regslice_both_5 regslice_both_s_axis_video_V_data_V_U
       (.D(ap_NS_fsm[4]),
        .E(regslice_both_m_axis_video_V_data_V_U_n_12),
        .Q({vld_out,regslice_both_s_axis_video_V_data_V_U_n_2,regslice_both_s_axis_video_V_data_V_U_n_3,regslice_both_s_axis_video_V_data_V_U_n_4,regslice_both_s_axis_video_V_data_V_U_n_5,regslice_both_s_axis_video_V_data_V_U_n_6,regslice_both_s_axis_video_V_data_V_U_n_7,regslice_both_s_axis_video_V_data_V_U_n_8,regslice_both_s_axis_video_V_data_V_U_n_9}),
        .and_ln25_2_reg_405(and_ln25_2_reg_405),
        .\and_ln25_2_reg_405_reg[0] (data_in),
        .\ap_CS_fsm_reg[4] (\ibuf_inst/p_0_in ),
        .\ap_CS_fsm_reg[4]_0 ({ap_CS_fsm_state5,ap_CS_fsm_state4}),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[0] (regslice_both_s_axis_video_V_keep_V_U_n_1),
        .\odata_int_reg[0]_0 (regslice_both_s_axis_video_V_strb_V_U_n_1),
        .\odata_int_reg[0]_1 (regslice_both_s_axis_video_V_user_V_U_n_1),
        .\odata_int_reg[0]_2 (regslice_both_s_axis_video_V_last_V_U_n_1),
        .\odata_int_reg[0]_3 (regslice_both_s_axis_video_V_id_V_U_n_1),
        .\odata_int_reg[0]_4 (regslice_both_s_axis_video_V_dest_V_U_n_1),
        .\odata_int_reg[8] (regslice_both_s_axis_video_V_data_V_U_n_10),
        .\odata_int_reg[8]_0 (regslice_both_s_axis_video_V_data_V_U_n_11),
        .\odata_int_reg[8]_1 (regslice_both_s_axis_video_V_data_V_U_n_12),
        .\odata_int_reg[8]_2 (regslice_both_s_axis_video_V_data_V_U_n_13),
        .\odata_int_reg[8]_3 (regslice_both_s_axis_video_V_data_V_U_n_14),
        .\odata_int_reg[8]_4 (regslice_both_s_axis_video_V_data_V_U_n_15),
        .\odata_int_reg[8]_5 (regslice_both_s_axis_video_V_data_V_U_n_25),
        .reset(reset),
        .s_axis_video_TDATA(s_axis_video_TDATA),
        .s_axis_video_TREADY(s_axis_video_TREADY),
        .s_axis_video_TVALID(s_axis_video_TVALID));
  bd_0_hls_inst_0_regslice_both__parameterized1_6 regslice_both_s_axis_video_V_dest_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[0] (regslice_both_s_axis_video_V_data_V_U_n_15),
        .\odata_int_reg[1] (regslice_both_s_axis_video_V_dest_V_U_n_1),
        .reset(reset),
        .s_axis_video_TDEST(s_axis_video_TDEST),
        .s_axis_video_TDEST_int(s_axis_video_TDEST_int),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
  bd_0_hls_inst_0_regslice_both__parameterized1_7 regslice_both_s_axis_video_V_id_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[0] (regslice_both_s_axis_video_V_data_V_U_n_14),
        .\odata_int_reg[1] (regslice_both_s_axis_video_V_id_V_U_n_1),
        .reset(reset),
        .s_axis_video_TID(s_axis_video_TID),
        .s_axis_video_TID_int(s_axis_video_TID_int),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
  bd_0_hls_inst_0_regslice_both__parameterized1_8 regslice_both_s_axis_video_V_keep_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[0] (regslice_both_s_axis_video_V_data_V_U_n_10),
        .\odata_int_reg[1] (regslice_both_s_axis_video_V_keep_V_U_n_1),
        .reset(reset),
        .s_axis_video_TKEEP(s_axis_video_TKEEP),
        .s_axis_video_TKEEP_int(s_axis_video_TKEEP_int),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
  bd_0_hls_inst_0_regslice_both__parameterized1_9 regslice_both_s_axis_video_V_last_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[0] (regslice_both_s_axis_video_V_data_V_U_n_13),
        .\odata_int_reg[1] (regslice_both_s_axis_video_V_last_V_U_n_1),
        .reset(reset),
        .s_axis_video_TLAST(s_axis_video_TLAST),
        .s_axis_video_TLAST_int(s_axis_video_TLAST_int),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
  bd_0_hls_inst_0_regslice_both__parameterized1_10 regslice_both_s_axis_video_V_strb_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[0] (regslice_both_s_axis_video_V_data_V_U_n_11),
        .\odata_int_reg[1] (regslice_both_s_axis_video_V_strb_V_U_n_1),
        .reset(reset),
        .s_axis_video_TSTRB(s_axis_video_TSTRB),
        .s_axis_video_TSTRB_int(s_axis_video_TSTRB_int),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
  bd_0_hls_inst_0_regslice_both__parameterized1_11 regslice_both_s_axis_video_V_user_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[0] (regslice_both_s_axis_video_V_data_V_U_n_12),
        .\odata_int_reg[1] (regslice_both_s_axis_video_V_user_V_U_n_1),
        .reset(reset),
        .s_axis_video_TUSER(s_axis_video_TUSER),
        .s_axis_video_TUSER_int(s_axis_video_TUSER_int),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
  LUT2 #(
    .INIT(4'h8)) 
    \start_x_read_reg_369[31]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_1_[0] ),
        .O(ap_NS_fsm12_out));
  FDRE \start_x_read_reg_369_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[0]),
        .Q(start_x_read_reg_369[0]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[10]),
        .Q(start_x_read_reg_369[10]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[11]),
        .Q(start_x_read_reg_369[11]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[12]),
        .Q(start_x_read_reg_369[12]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[13]),
        .Q(start_x_read_reg_369[13]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[14]),
        .Q(start_x_read_reg_369[14]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[15] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[15]),
        .Q(start_x_read_reg_369[15]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[16] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[16]),
        .Q(start_x_read_reg_369[16]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[17] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[17]),
        .Q(start_x_read_reg_369[17]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[18] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[18]),
        .Q(start_x_read_reg_369[18]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[19] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[19]),
        .Q(start_x_read_reg_369[19]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[1]),
        .Q(start_x_read_reg_369[1]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[20] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[20]),
        .Q(start_x_read_reg_369[20]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[21] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[21]),
        .Q(start_x_read_reg_369[21]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[22] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[22]),
        .Q(start_x_read_reg_369[22]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[23] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[23]),
        .Q(start_x_read_reg_369[23]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[24] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[24]),
        .Q(start_x_read_reg_369[24]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[25] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[25]),
        .Q(start_x_read_reg_369[25]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[26] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[26]),
        .Q(start_x_read_reg_369[26]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[27] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[27]),
        .Q(start_x_read_reg_369[27]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[28] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[28]),
        .Q(start_x_read_reg_369[28]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[29] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[29]),
        .Q(start_x_read_reg_369[29]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[2]),
        .Q(start_x_read_reg_369[2]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[30] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[30]),
        .Q(start_x_read_reg_369[30]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[31] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[31]),
        .Q(start_x_read_reg_369[31]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[3]),
        .Q(start_x_read_reg_369[3]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[4]),
        .Q(start_x_read_reg_369[4]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[5]),
        .Q(start_x_read_reg_369[5]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[6]),
        .Q(start_x_read_reg_369[6]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[7]),
        .Q(start_x_read_reg_369[7]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[8]),
        .Q(start_x_read_reg_369[8]),
        .R(1'b0));
  FDRE \start_x_read_reg_369_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_x[9]),
        .Q(start_x_read_reg_369[9]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[0]),
        .Q(start_y_read_reg_364[0]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[10]),
        .Q(start_y_read_reg_364[10]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[11]),
        .Q(start_y_read_reg_364[11]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[12]),
        .Q(start_y_read_reg_364[12]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[13]),
        .Q(start_y_read_reg_364[13]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[14]),
        .Q(start_y_read_reg_364[14]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[15] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[15]),
        .Q(start_y_read_reg_364[15]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[16] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[16]),
        .Q(start_y_read_reg_364[16]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[17] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[17]),
        .Q(start_y_read_reg_364[17]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[18] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[18]),
        .Q(start_y_read_reg_364[18]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[19] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[19]),
        .Q(start_y_read_reg_364[19]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[1]),
        .Q(start_y_read_reg_364[1]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[20] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[20]),
        .Q(start_y_read_reg_364[20]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[21] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[21]),
        .Q(start_y_read_reg_364[21]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[22] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[22]),
        .Q(start_y_read_reg_364[22]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[23] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[23]),
        .Q(start_y_read_reg_364[23]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[24] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[24]),
        .Q(start_y_read_reg_364[24]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[25] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[25]),
        .Q(start_y_read_reg_364[25]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[26] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[26]),
        .Q(start_y_read_reg_364[26]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[27] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[27]),
        .Q(start_y_read_reg_364[27]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[28] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[28]),
        .Q(start_y_read_reg_364[28]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[29] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[29]),
        .Q(start_y_read_reg_364[29]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[2]),
        .Q(start_y_read_reg_364[2]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[30] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[30]),
        .Q(start_y_read_reg_364[30]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[31] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[31]),
        .Q(start_y_read_reg_364[31]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[3]),
        .Q(start_y_read_reg_364[3]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[4]),
        .Q(start_y_read_reg_364[4]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[5]),
        .Q(start_y_read_reg_364[5]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[6]),
        .Q(start_y_read_reg_364[6]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[7]),
        .Q(start_y_read_reg_364[7]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[8]),
        .Q(start_y_read_reg_364[8]),
        .R(1'b0));
  FDRE \start_y_read_reg_364_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(start_y[9]),
        .Q(start_y_read_reg_364[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "incrust_AXILiteS_s_axi" *) 
module bd_0_hls_inst_0_incrust_AXILiteS_s_axi
   (\FSM_onehot_rstate_reg[1]_0 ,
    s_axi_AXILiteS_BVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_AXILiteS_RVALID,
    Q,
    \int_start_x_reg[31]_0 ,
    s_axi_AXILiteS_RDATA,
    O45,
    O46,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_ARADDR,
    reset,
    ap_clk,
    s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_RREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB);
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_AXILiteS_BVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_AXILiteS_RVALID;
  output [31:0]Q;
  output [31:0]\int_start_x_reg[31]_0 ;
  output [31:0]s_axi_AXILiteS_RDATA;
  output [29:0]O45;
  output [29:0]O46;
  input s_axi_AXILiteS_ARVALID;
  input [4:0]s_axi_AXILiteS_ARADDR;
  input reset;
  input ap_clk;
  input [4:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_AWVALID;
  input s_axi_AXILiteS_WVALID;
  input s_axi_AXILiteS_BREADY;
  input s_axi_AXILiteS_RREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;

  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_1 ;
  wire \FSM_onehot_wstate[2]_i_1_n_1 ;
  wire \FSM_onehot_wstate[3]_i_1_n_1 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [29:0]O45;
  wire [29:0]O46;
  wire [31:0]Q;
  wire \add_ln25_1_reg_379[5]_i_2_n_1 ;
  wire \add_ln25_1_reg_379_reg[13]_i_1_n_1 ;
  wire \add_ln25_1_reg_379_reg[13]_i_1_n_2 ;
  wire \add_ln25_1_reg_379_reg[13]_i_1_n_3 ;
  wire \add_ln25_1_reg_379_reg[13]_i_1_n_4 ;
  wire \add_ln25_1_reg_379_reg[17]_i_1_n_1 ;
  wire \add_ln25_1_reg_379_reg[17]_i_1_n_2 ;
  wire \add_ln25_1_reg_379_reg[17]_i_1_n_3 ;
  wire \add_ln25_1_reg_379_reg[17]_i_1_n_4 ;
  wire \add_ln25_1_reg_379_reg[21]_i_1_n_1 ;
  wire \add_ln25_1_reg_379_reg[21]_i_1_n_2 ;
  wire \add_ln25_1_reg_379_reg[21]_i_1_n_3 ;
  wire \add_ln25_1_reg_379_reg[21]_i_1_n_4 ;
  wire \add_ln25_1_reg_379_reg[25]_i_1_n_1 ;
  wire \add_ln25_1_reg_379_reg[25]_i_1_n_2 ;
  wire \add_ln25_1_reg_379_reg[25]_i_1_n_3 ;
  wire \add_ln25_1_reg_379_reg[25]_i_1_n_4 ;
  wire \add_ln25_1_reg_379_reg[29]_i_1_n_1 ;
  wire \add_ln25_1_reg_379_reg[29]_i_1_n_2 ;
  wire \add_ln25_1_reg_379_reg[29]_i_1_n_3 ;
  wire \add_ln25_1_reg_379_reg[29]_i_1_n_4 ;
  wire \add_ln25_1_reg_379_reg[31]_i_1_n_4 ;
  wire \add_ln25_1_reg_379_reg[5]_i_1_n_1 ;
  wire \add_ln25_1_reg_379_reg[5]_i_1_n_2 ;
  wire \add_ln25_1_reg_379_reg[5]_i_1_n_3 ;
  wire \add_ln25_1_reg_379_reg[5]_i_1_n_4 ;
  wire \add_ln25_1_reg_379_reg[9]_i_1_n_1 ;
  wire \add_ln25_1_reg_379_reg[9]_i_1_n_2 ;
  wire \add_ln25_1_reg_379_reg[9]_i_1_n_3 ;
  wire \add_ln25_1_reg_379_reg[9]_i_1_n_4 ;
  wire \add_ln25_reg_374[5]_i_2_n_1 ;
  wire \add_ln25_reg_374_reg[13]_i_1_n_1 ;
  wire \add_ln25_reg_374_reg[13]_i_1_n_2 ;
  wire \add_ln25_reg_374_reg[13]_i_1_n_3 ;
  wire \add_ln25_reg_374_reg[13]_i_1_n_4 ;
  wire \add_ln25_reg_374_reg[17]_i_1_n_1 ;
  wire \add_ln25_reg_374_reg[17]_i_1_n_2 ;
  wire \add_ln25_reg_374_reg[17]_i_1_n_3 ;
  wire \add_ln25_reg_374_reg[17]_i_1_n_4 ;
  wire \add_ln25_reg_374_reg[21]_i_1_n_1 ;
  wire \add_ln25_reg_374_reg[21]_i_1_n_2 ;
  wire \add_ln25_reg_374_reg[21]_i_1_n_3 ;
  wire \add_ln25_reg_374_reg[21]_i_1_n_4 ;
  wire \add_ln25_reg_374_reg[25]_i_1_n_1 ;
  wire \add_ln25_reg_374_reg[25]_i_1_n_2 ;
  wire \add_ln25_reg_374_reg[25]_i_1_n_3 ;
  wire \add_ln25_reg_374_reg[25]_i_1_n_4 ;
  wire \add_ln25_reg_374_reg[29]_i_1_n_1 ;
  wire \add_ln25_reg_374_reg[29]_i_1_n_2 ;
  wire \add_ln25_reg_374_reg[29]_i_1_n_3 ;
  wire \add_ln25_reg_374_reg[29]_i_1_n_4 ;
  wire \add_ln25_reg_374_reg[31]_i_1_n_4 ;
  wire \add_ln25_reg_374_reg[5]_i_1_n_1 ;
  wire \add_ln25_reg_374_reg[5]_i_1_n_2 ;
  wire \add_ln25_reg_374_reg[5]_i_1_n_3 ;
  wire \add_ln25_reg_374_reg[5]_i_1_n_4 ;
  wire \add_ln25_reg_374_reg[9]_i_1_n_1 ;
  wire \add_ln25_reg_374_reg[9]_i_1_n_2 ;
  wire \add_ln25_reg_374_reg[9]_i_1_n_3 ;
  wire \add_ln25_reg_374_reg[9]_i_1_n_4 ;
  wire ap_clk;
  wire [31:0]\int_start_x_reg[31]_0 ;
  wire [31:0]\or ;
  wire [31:0]or0_out;
  wire p_0_in1_out;
  wire p_0_in3_out;
  wire p_2_in;
  wire rdata_data;
  wire \rdata_data[0]_i_1_n_1 ;
  wire \rdata_data[10]_i_1_n_1 ;
  wire \rdata_data[11]_i_1_n_1 ;
  wire \rdata_data[12]_i_1_n_1 ;
  wire \rdata_data[13]_i_1_n_1 ;
  wire \rdata_data[14]_i_1_n_1 ;
  wire \rdata_data[15]_i_1_n_1 ;
  wire \rdata_data[16]_i_1_n_1 ;
  wire \rdata_data[17]_i_1_n_1 ;
  wire \rdata_data[18]_i_1_n_1 ;
  wire \rdata_data[19]_i_1_n_1 ;
  wire \rdata_data[1]_i_1_n_1 ;
  wire \rdata_data[20]_i_1_n_1 ;
  wire \rdata_data[21]_i_1_n_1 ;
  wire \rdata_data[22]_i_1_n_1 ;
  wire \rdata_data[23]_i_1_n_1 ;
  wire \rdata_data[24]_i_1_n_1 ;
  wire \rdata_data[25]_i_1_n_1 ;
  wire \rdata_data[26]_i_1_n_1 ;
  wire \rdata_data[27]_i_1_n_1 ;
  wire \rdata_data[28]_i_1_n_1 ;
  wire \rdata_data[29]_i_1_n_1 ;
  wire \rdata_data[2]_i_1_n_1 ;
  wire \rdata_data[30]_i_1_n_1 ;
  wire \rdata_data[31]_i_1_n_1 ;
  wire \rdata_data[31]_i_3_n_1 ;
  wire \rdata_data[3]_i_1_n_1 ;
  wire \rdata_data[4]_i_1_n_1 ;
  wire \rdata_data[5]_i_1_n_1 ;
  wire \rdata_data[6]_i_1_n_1 ;
  wire \rdata_data[7]_i_1_n_1 ;
  wire \rdata_data[8]_i_1_n_1 ;
  wire \rdata_data[9]_i_1_n_1 ;
  wire reset;
  wire [2:1]rnext;
  wire [4:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARVALID;
  wire [4:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire waddr;
  wire \waddr_reg_n_1_[0] ;
  wire \waddr_reg_n_1_[1] ;
  wire \waddr_reg_n_1_[2] ;
  wire \waddr_reg_n_1_[3] ;
  wire \waddr_reg_n_1_[4] ;
  wire [3:1]\NLW_add_ln25_1_reg_379_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_add_ln25_1_reg_379_reg[31]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_add_ln25_reg_374_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_add_ln25_reg_374_reg[31]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF747)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_AXILiteS_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_AXILiteS_RVALID),
        .I3(s_axi_AXILiteS_RREADY),
        .O(rnext[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_AXILiteS_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_AXILiteS_RREADY),
        .I3(s_axi_AXILiteS_RVALID),
        .O(rnext[2]));
  (* FSM_ENCODED_STATES = "rddata:100,rdidle:010,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[1]),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(reset));
  (* FSM_ENCODED_STATES = "rddata:100,rdidle:010,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[2]),
        .Q(s_axi_AXILiteS_RVALID),
        .R(reset));
  LUT5 #(
    .INIT(32'h888BFF8B)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(s_axi_AXILiteS_BREADY),
        .I1(s_axi_AXILiteS_BVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .I4(s_axi_AXILiteS_AWVALID),
        .O(\FSM_onehot_wstate[1]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_AXILiteS_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_AXILiteS_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_AXILiteS_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_AXILiteS_BREADY),
        .I3(s_axi_AXILiteS_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_1 ));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_1 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(reset));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_1 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(reset));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_BVALID),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln25_1_reg_379[5]_i_2 
       (.I0(Q[3]),
        .O(\add_ln25_1_reg_379[5]_i_2_n_1 ));
  CARRY4 \add_ln25_1_reg_379_reg[13]_i_1 
       (.CI(\add_ln25_1_reg_379_reg[9]_i_1_n_1 ),
        .CO({\add_ln25_1_reg_379_reg[13]_i_1_n_1 ,\add_ln25_1_reg_379_reg[13]_i_1_n_2 ,\add_ln25_1_reg_379_reg[13]_i_1_n_3 ,\add_ln25_1_reg_379_reg[13]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O46[11:8]),
        .S(Q[13:10]));
  CARRY4 \add_ln25_1_reg_379_reg[17]_i_1 
       (.CI(\add_ln25_1_reg_379_reg[13]_i_1_n_1 ),
        .CO({\add_ln25_1_reg_379_reg[17]_i_1_n_1 ,\add_ln25_1_reg_379_reg[17]_i_1_n_2 ,\add_ln25_1_reg_379_reg[17]_i_1_n_3 ,\add_ln25_1_reg_379_reg[17]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O46[15:12]),
        .S(Q[17:14]));
  CARRY4 \add_ln25_1_reg_379_reg[21]_i_1 
       (.CI(\add_ln25_1_reg_379_reg[17]_i_1_n_1 ),
        .CO({\add_ln25_1_reg_379_reg[21]_i_1_n_1 ,\add_ln25_1_reg_379_reg[21]_i_1_n_2 ,\add_ln25_1_reg_379_reg[21]_i_1_n_3 ,\add_ln25_1_reg_379_reg[21]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O46[19:16]),
        .S(Q[21:18]));
  CARRY4 \add_ln25_1_reg_379_reg[25]_i_1 
       (.CI(\add_ln25_1_reg_379_reg[21]_i_1_n_1 ),
        .CO({\add_ln25_1_reg_379_reg[25]_i_1_n_1 ,\add_ln25_1_reg_379_reg[25]_i_1_n_2 ,\add_ln25_1_reg_379_reg[25]_i_1_n_3 ,\add_ln25_1_reg_379_reg[25]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O46[23:20]),
        .S(Q[25:22]));
  CARRY4 \add_ln25_1_reg_379_reg[29]_i_1 
       (.CI(\add_ln25_1_reg_379_reg[25]_i_1_n_1 ),
        .CO({\add_ln25_1_reg_379_reg[29]_i_1_n_1 ,\add_ln25_1_reg_379_reg[29]_i_1_n_2 ,\add_ln25_1_reg_379_reg[29]_i_1_n_3 ,\add_ln25_1_reg_379_reg[29]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O46[27:24]),
        .S(Q[29:26]));
  CARRY4 \add_ln25_1_reg_379_reg[31]_i_1 
       (.CI(\add_ln25_1_reg_379_reg[29]_i_1_n_1 ),
        .CO({\NLW_add_ln25_1_reg_379_reg[31]_i_1_CO_UNCONNECTED [3:1],\add_ln25_1_reg_379_reg[31]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_add_ln25_1_reg_379_reg[31]_i_1_O_UNCONNECTED [3:2],O46[29:28]}),
        .S({1'b0,1'b0,Q[31:30]}));
  CARRY4 \add_ln25_1_reg_379_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\add_ln25_1_reg_379_reg[5]_i_1_n_1 ,\add_ln25_1_reg_379_reg[5]_i_1_n_2 ,\add_ln25_1_reg_379_reg[5]_i_1_n_3 ,\add_ln25_1_reg_379_reg[5]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[3],1'b0}),
        .O(O46[3:0]),
        .S({Q[5:4],\add_ln25_1_reg_379[5]_i_2_n_1 ,Q[2]}));
  CARRY4 \add_ln25_1_reg_379_reg[9]_i_1 
       (.CI(\add_ln25_1_reg_379_reg[5]_i_1_n_1 ),
        .CO({\add_ln25_1_reg_379_reg[9]_i_1_n_1 ,\add_ln25_1_reg_379_reg[9]_i_1_n_2 ,\add_ln25_1_reg_379_reg[9]_i_1_n_3 ,\add_ln25_1_reg_379_reg[9]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O46[7:4]),
        .S(Q[9:6]));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln25_reg_374[5]_i_2 
       (.I0(\int_start_x_reg[31]_0 [3]),
        .O(\add_ln25_reg_374[5]_i_2_n_1 ));
  CARRY4 \add_ln25_reg_374_reg[13]_i_1 
       (.CI(\add_ln25_reg_374_reg[9]_i_1_n_1 ),
        .CO({\add_ln25_reg_374_reg[13]_i_1_n_1 ,\add_ln25_reg_374_reg[13]_i_1_n_2 ,\add_ln25_reg_374_reg[13]_i_1_n_3 ,\add_ln25_reg_374_reg[13]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O45[11:8]),
        .S(\int_start_x_reg[31]_0 [13:10]));
  CARRY4 \add_ln25_reg_374_reg[17]_i_1 
       (.CI(\add_ln25_reg_374_reg[13]_i_1_n_1 ),
        .CO({\add_ln25_reg_374_reg[17]_i_1_n_1 ,\add_ln25_reg_374_reg[17]_i_1_n_2 ,\add_ln25_reg_374_reg[17]_i_1_n_3 ,\add_ln25_reg_374_reg[17]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O45[15:12]),
        .S(\int_start_x_reg[31]_0 [17:14]));
  CARRY4 \add_ln25_reg_374_reg[21]_i_1 
       (.CI(\add_ln25_reg_374_reg[17]_i_1_n_1 ),
        .CO({\add_ln25_reg_374_reg[21]_i_1_n_1 ,\add_ln25_reg_374_reg[21]_i_1_n_2 ,\add_ln25_reg_374_reg[21]_i_1_n_3 ,\add_ln25_reg_374_reg[21]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O45[19:16]),
        .S(\int_start_x_reg[31]_0 [21:18]));
  CARRY4 \add_ln25_reg_374_reg[25]_i_1 
       (.CI(\add_ln25_reg_374_reg[21]_i_1_n_1 ),
        .CO({\add_ln25_reg_374_reg[25]_i_1_n_1 ,\add_ln25_reg_374_reg[25]_i_1_n_2 ,\add_ln25_reg_374_reg[25]_i_1_n_3 ,\add_ln25_reg_374_reg[25]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O45[23:20]),
        .S(\int_start_x_reg[31]_0 [25:22]));
  CARRY4 \add_ln25_reg_374_reg[29]_i_1 
       (.CI(\add_ln25_reg_374_reg[25]_i_1_n_1 ),
        .CO({\add_ln25_reg_374_reg[29]_i_1_n_1 ,\add_ln25_reg_374_reg[29]_i_1_n_2 ,\add_ln25_reg_374_reg[29]_i_1_n_3 ,\add_ln25_reg_374_reg[29]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O45[27:24]),
        .S(\int_start_x_reg[31]_0 [29:26]));
  CARRY4 \add_ln25_reg_374_reg[31]_i_1 
       (.CI(\add_ln25_reg_374_reg[29]_i_1_n_1 ),
        .CO({\NLW_add_ln25_reg_374_reg[31]_i_1_CO_UNCONNECTED [3:1],\add_ln25_reg_374_reg[31]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_add_ln25_reg_374_reg[31]_i_1_O_UNCONNECTED [3:2],O45[29:28]}),
        .S({1'b0,1'b0,\int_start_x_reg[31]_0 [31:30]}));
  CARRY4 \add_ln25_reg_374_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\add_ln25_reg_374_reg[5]_i_1_n_1 ,\add_ln25_reg_374_reg[5]_i_1_n_2 ,\add_ln25_reg_374_reg[5]_i_1_n_3 ,\add_ln25_reg_374_reg[5]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\int_start_x_reg[31]_0 [3],1'b0}),
        .O(O45[3:0]),
        .S({\int_start_x_reg[31]_0 [5:4],\add_ln25_reg_374[5]_i_2_n_1 ,\int_start_x_reg[31]_0 [2]}));
  CARRY4 \add_ln25_reg_374_reg[9]_i_1 
       (.CI(\add_ln25_reg_374_reg[5]_i_1_n_1 ),
        .CO({\add_ln25_reg_374_reg[9]_i_1_n_1 ,\add_ln25_reg_374_reg[9]_i_1_n_2 ,\add_ln25_reg_374_reg[9]_i_1_n_3 ,\add_ln25_reg_374_reg[9]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O45[7:4]),
        .S(\int_start_x_reg[31]_0 [9:6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_start_x_reg[31]_0 [0]),
        .O(or0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[10]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[10]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_start_x_reg[31]_0 [10]),
        .O(or0_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[11]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[11]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_start_x_reg[31]_0 [11]),
        .O(or0_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[12]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[12]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_start_x_reg[31]_0 [12]),
        .O(or0_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[13]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[13]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_start_x_reg[31]_0 [13]),
        .O(or0_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[14]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[14]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_start_x_reg[31]_0 [14]),
        .O(or0_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[15]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[15]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_start_x_reg[31]_0 [15]),
        .O(or0_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[16]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[16]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(\int_start_x_reg[31]_0 [16]),
        .O(or0_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[17]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[17]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(\int_start_x_reg[31]_0 [17]),
        .O(or0_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[18]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[18]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(\int_start_x_reg[31]_0 [18]),
        .O(or0_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[19]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[19]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(\int_start_x_reg[31]_0 [19]),
        .O(or0_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_start_x_reg[31]_0 [1]),
        .O(or0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[20]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[20]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(\int_start_x_reg[31]_0 [20]),
        .O(or0_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[21]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[21]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(\int_start_x_reg[31]_0 [21]),
        .O(or0_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[22]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[22]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(\int_start_x_reg[31]_0 [22]),
        .O(or0_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[23]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[23]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(\int_start_x_reg[31]_0 [23]),
        .O(or0_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[24]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[24]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(\int_start_x_reg[31]_0 [24]),
        .O(or0_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[25]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[25]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(\int_start_x_reg[31]_0 [25]),
        .O(or0_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[26]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[26]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(\int_start_x_reg[31]_0 [26]),
        .O(or0_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[27]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[27]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(\int_start_x_reg[31]_0 [27]),
        .O(or0_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[28]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[28]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(\int_start_x_reg[31]_0 [28]),
        .O(or0_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[29]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[29]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(\int_start_x_reg[31]_0 [29]),
        .O(or0_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_start_x_reg[31]_0 [2]),
        .O(or0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[30]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[30]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(\int_start_x_reg[31]_0 [30]),
        .O(or0_out[30]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \int_start_x[31]_i_1 
       (.I0(p_2_in),
        .I1(\waddr_reg_n_1_[0] ),
        .I2(\waddr_reg_n_1_[3] ),
        .I3(\waddr_reg_n_1_[1] ),
        .I4(\waddr_reg_n_1_[2] ),
        .I5(\waddr_reg_n_1_[4] ),
        .O(p_0_in3_out));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[31]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[31]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(\int_start_x_reg[31]_0 [31]),
        .O(or0_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_start_x_reg[31]_0 [3]),
        .O(or0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_start_x_reg[31]_0 [4]),
        .O(or0_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_start_x_reg[31]_0 [5]),
        .O(or0_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_start_x_reg[31]_0 [6]),
        .O(or0_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(\int_start_x_reg[31]_0 [7]),
        .O(or0_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_start_x_reg[31]_0 [8]),
        .O(or0_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_x[9]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(\int_start_x_reg[31]_0 [9]),
        .O(or0_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[0] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[0]),
        .Q(\int_start_x_reg[31]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[10] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[10]),
        .Q(\int_start_x_reg[31]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[11] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[11]),
        .Q(\int_start_x_reg[31]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[12] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[12]),
        .Q(\int_start_x_reg[31]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[13] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[13]),
        .Q(\int_start_x_reg[31]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[14] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[14]),
        .Q(\int_start_x_reg[31]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[15] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[15]),
        .Q(\int_start_x_reg[31]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[16] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[16]),
        .Q(\int_start_x_reg[31]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[17] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[17]),
        .Q(\int_start_x_reg[31]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[18] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[18]),
        .Q(\int_start_x_reg[31]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[19] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[19]),
        .Q(\int_start_x_reg[31]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[1] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[1]),
        .Q(\int_start_x_reg[31]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[20] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[20]),
        .Q(\int_start_x_reg[31]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[21] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[21]),
        .Q(\int_start_x_reg[31]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[22] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[22]),
        .Q(\int_start_x_reg[31]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[23] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[23]),
        .Q(\int_start_x_reg[31]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[24] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[24]),
        .Q(\int_start_x_reg[31]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[25] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[25]),
        .Q(\int_start_x_reg[31]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[26] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[26]),
        .Q(\int_start_x_reg[31]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[27] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[27]),
        .Q(\int_start_x_reg[31]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[28] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[28]),
        .Q(\int_start_x_reg[31]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[29] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[29]),
        .Q(\int_start_x_reg[31]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[2] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[2]),
        .Q(\int_start_x_reg[31]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[30] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[30]),
        .Q(\int_start_x_reg[31]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[31] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[31]),
        .Q(\int_start_x_reg[31]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[3] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[3]),
        .Q(\int_start_x_reg[31]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[4] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[4]),
        .Q(\int_start_x_reg[31]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[5] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[5]),
        .Q(\int_start_x_reg[31]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[6] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[6]),
        .Q(\int_start_x_reg[31]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[7] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[7]),
        .Q(\int_start_x_reg[31]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[8] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[8]),
        .Q(\int_start_x_reg[31]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_x_reg[9] 
       (.C(ap_clk),
        .CE(p_0_in3_out),
        .D(or0_out[9]),
        .Q(\int_start_x_reg[31]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(Q[0]),
        .O(\or [0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[10]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[10]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(Q[10]),
        .O(\or [10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[11]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[11]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(Q[11]),
        .O(\or [11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[12]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[12]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(Q[12]),
        .O(\or [12]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[13]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[13]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(Q[13]),
        .O(\or [13]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[14]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[14]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(Q[14]),
        .O(\or [14]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[15]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[15]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(Q[15]),
        .O(\or [15]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[16]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[16]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(Q[16]),
        .O(\or [16]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[17]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[17]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(Q[17]),
        .O(\or [17]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[18]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[18]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(Q[18]),
        .O(\or [18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[19]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[19]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(Q[19]),
        .O(\or [19]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(Q[1]),
        .O(\or [1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[20]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[20]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(Q[20]),
        .O(\or [20]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[21]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[21]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(Q[21]),
        .O(\or [21]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[22]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[22]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(Q[22]),
        .O(\or [22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[23]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[23]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(Q[23]),
        .O(\or [23]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[24]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[24]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(Q[24]),
        .O(\or [24]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[25]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[25]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(Q[25]),
        .O(\or [25]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[26]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[26]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(Q[26]),
        .O(\or [26]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[27]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[27]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(Q[27]),
        .O(\or [27]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[28]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[28]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(Q[28]),
        .O(\or [28]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[29]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[29]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(Q[29]),
        .O(\or [29]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(Q[2]),
        .O(\or [2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[30]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[30]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(Q[30]),
        .O(\or [30]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \int_start_y[31]_i_1 
       (.I0(p_2_in),
        .I1(\waddr_reg_n_1_[0] ),
        .I2(\waddr_reg_n_1_[1] ),
        .I3(\waddr_reg_n_1_[3] ),
        .I4(\waddr_reg_n_1_[2] ),
        .I5(\waddr_reg_n_1_[4] ),
        .O(p_0_in1_out));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[31]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[31]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(Q[31]),
        .O(\or [31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_start_y[31]_i_3 
       (.I0(s_axi_AXILiteS_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .O(p_2_in));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(Q[3]),
        .O(\or [3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(Q[4]),
        .O(\or [4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(Q[5]),
        .O(\or [5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(Q[6]),
        .O(\or [6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(Q[7]),
        .O(\or [7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(Q[8]),
        .O(\or [8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_y[9]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(Q[9]),
        .O(\or [9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[0] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[10] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[11] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[12] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[13] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[14] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[15] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[16] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[17] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[18] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[19] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[1] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[20] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[21] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[22] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[23] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[24] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[25] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[26] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[27] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[28] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[29] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[2] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[30] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[31] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[3] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[4] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[5] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[6] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[7] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[8] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_y_reg[9] 
       (.C(ap_clk),
        .CE(p_0_in1_out),
        .D(\or [9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[0]_i_1 
       (.I0(\int_start_x_reg[31]_0 [0]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[0]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[0]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[10]_i_1 
       (.I0(\int_start_x_reg[31]_0 [10]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[10]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[10]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[11]_i_1 
       (.I0(\int_start_x_reg[31]_0 [11]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[11]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[11]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[12]_i_1 
       (.I0(\int_start_x_reg[31]_0 [12]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[12]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[12]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[13]_i_1 
       (.I0(\int_start_x_reg[31]_0 [13]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[13]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[13]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[14]_i_1 
       (.I0(\int_start_x_reg[31]_0 [14]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[14]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[14]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[15]_i_1 
       (.I0(\int_start_x_reg[31]_0 [15]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[15]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[15]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[16]_i_1 
       (.I0(\int_start_x_reg[31]_0 [16]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[16]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[16]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[17]_i_1 
       (.I0(\int_start_x_reg[31]_0 [17]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[17]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[17]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[18]_i_1 
       (.I0(\int_start_x_reg[31]_0 [18]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[18]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[18]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[19]_i_1 
       (.I0(\int_start_x_reg[31]_0 [19]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[19]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[19]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[1]_i_1 
       (.I0(\int_start_x_reg[31]_0 [1]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[1]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[1]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[20]_i_1 
       (.I0(\int_start_x_reg[31]_0 [20]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[20]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[20]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[21]_i_1 
       (.I0(\int_start_x_reg[31]_0 [21]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[21]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[21]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[22]_i_1 
       (.I0(\int_start_x_reg[31]_0 [22]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[22]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[22]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[23]_i_1 
       (.I0(\int_start_x_reg[31]_0 [23]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[23]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[23]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[24]_i_1 
       (.I0(\int_start_x_reg[31]_0 [24]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[24]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[24]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[25]_i_1 
       (.I0(\int_start_x_reg[31]_0 [25]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[25]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[25]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[26]_i_1 
       (.I0(\int_start_x_reg[31]_0 [26]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[26]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[26]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[27]_i_1 
       (.I0(\int_start_x_reg[31]_0 [27]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[27]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[27]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[28]_i_1 
       (.I0(\int_start_x_reg[31]_0 [28]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[28]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[28]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[29]_i_1 
       (.I0(\int_start_x_reg[31]_0 [29]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[29]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[29]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[2]_i_1 
       (.I0(\int_start_x_reg[31]_0 [2]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[2]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[30]_i_1 
       (.I0(\int_start_x_reg[31]_0 [30]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[30]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[30]_i_1_n_1 ));
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_data[31]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_AXILiteS_ARVALID),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .O(\rdata_data[31]_i_1_n_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata_data[31]_i_2 
       (.I0(s_axi_AXILiteS_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(rdata_data));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[31]_i_3 
       (.I0(\int_start_x_reg[31]_0 [31]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[31]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[31]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[3]_i_1 
       (.I0(\int_start_x_reg[31]_0 [3]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[3]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[3]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[4]_i_1 
       (.I0(\int_start_x_reg[31]_0 [4]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[4]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[4]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[5]_i_1 
       (.I0(\int_start_x_reg[31]_0 [5]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[5]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[5]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[6]_i_1 
       (.I0(\int_start_x_reg[31]_0 [6]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[6]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[6]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[7]_i_1 
       (.I0(\int_start_x_reg[31]_0 [7]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[7]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[7]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[8]_i_1 
       (.I0(\int_start_x_reg[31]_0 [8]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[8]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[8]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata_data[9]_i_1 
       (.I0(\int_start_x_reg[31]_0 [9]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(Q[9]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[0]),
        .I5(s_axi_AXILiteS_ARADDR[2]),
        .O(\rdata_data[9]_i_1_n_1 ));
  FDRE \rdata_data_reg[0] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[0]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[0]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[10] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[10]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[10]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[11] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[11]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[11]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[12] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[12]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[12]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[13] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[13]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[13]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[14] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[14]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[14]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[15] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[15]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[15]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[16] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[16]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[16]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[17] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[17]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[17]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[18] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[18]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[18]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[19] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[19]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[19]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[1] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[1]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[1]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[20] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[20]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[20]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[21] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[21]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[21]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[22] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[22]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[22]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[23] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[23]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[23]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[24] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[24]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[24]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[25] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[25]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[25]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[26] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[26]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[26]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[27] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[27]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[27]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[28] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[28]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[28]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[29] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[29]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[29]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[2] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[2]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[2]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[30] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[30]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[30]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[31] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[31]_i_3_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[31]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[3] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[3]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[3]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[4] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[4]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[4]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[5] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[5]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[5]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[6] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[6]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[6]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[7] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[7]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[7]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[8] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[8]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[8]),
        .R(\rdata_data[31]_i_1_n_1 ));
  FDRE \rdata_data_reg[9] 
       (.C(ap_clk),
        .CE(rdata_data),
        .D(\rdata_data[9]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RDATA[9]),
        .R(\rdata_data[31]_i_1_n_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[4]_i_1 
       (.I0(s_axi_AXILiteS_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[0]),
        .Q(\waddr_reg_n_1_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[1]),
        .Q(\waddr_reg_n_1_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[2]),
        .Q(\waddr_reg_n_1_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[3]),
        .Q(\waddr_reg_n_1_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[4]),
        .Q(\waddr_reg_n_1_[4] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both
   (reset,
    vld_in,
    Q,
    E,
    D,
    \ap_CS_fsm_reg[1] ,
    ap_ready,
    SR,
    \ap_CS_fsm_reg[3] ,
    \odata_int_reg[8] ,
    \and_ln25_1_reg_392_reg[0] ,
    ap_clk,
    m_axis_video_TREADY,
    ap_rst_n,
    \ap_CS_fsm_reg[2] ,
    \ap_CS_fsm_reg[3]_0 ,
    \ap_CS_fsm_reg[1]_0 ,
    \ap_CS_fsm_reg[1]_1 ,
    \ap_CS_fsm_reg[0] ,
    ap_start,
    \j_0_reg_171_reg[0] ,
    \j_0_reg_171_reg[0]_0 ,
    and_ln25_2_reg_405,
    pixel_1_fu_881,
    CO,
    \and_ln25_1_reg_392_reg[0]_0 ,
    and_ln25_1_reg_392,
    \ireg_reg[7] ,
    \odata_int_reg[8]_0 );
  output reset;
  output vld_in;
  output [0:0]Q;
  output [0:0]E;
  output [3:0]D;
  output [0:0]\ap_CS_fsm_reg[1] ;
  output ap_ready;
  output [0:0]SR;
  output [0:0]\ap_CS_fsm_reg[3] ;
  output [8:0]\odata_int_reg[8] ;
  output \and_ln25_1_reg_392_reg[0] ;
  input ap_clk;
  input m_axis_video_TREADY;
  input ap_rst_n;
  input [3:0]\ap_CS_fsm_reg[2] ;
  input [8:0]\ap_CS_fsm_reg[3]_0 ;
  input [0:0]\ap_CS_fsm_reg[1]_0 ;
  input [0:0]\ap_CS_fsm_reg[1]_1 ;
  input \ap_CS_fsm_reg[0] ;
  input ap_start;
  input \j_0_reg_171_reg[0] ;
  input [2:0]\j_0_reg_171_reg[0]_0 ;
  input and_ln25_2_reg_405;
  input pixel_1_fu_881;
  input [0:0]CO;
  input [0:0]\and_ln25_1_reg_392_reg[0]_0 ;
  input and_ln25_1_reg_392;
  input [7:0]\ireg_reg[7] ;
  input [0:0]\odata_int_reg[8]_0 ;

  wire [0:0]CO;
  wire [3:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire and_ln25_1_reg_392;
  wire \and_ln25_1_reg_392_reg[0] ;
  wire [0:0]\and_ln25_1_reg_392_reg[0]_0 ;
  wire and_ln25_2_reg_405;
  wire \ap_CS_fsm_reg[0] ;
  wire [0:0]\ap_CS_fsm_reg[1] ;
  wire [0:0]\ap_CS_fsm_reg[1]_0 ;
  wire [0:0]\ap_CS_fsm_reg[1]_1 ;
  wire [3:0]\ap_CS_fsm_reg[2] ;
  wire [0:0]\ap_CS_fsm_reg[3] ;
  wire [8:0]\ap_CS_fsm_reg[3]_0 ;
  wire ap_clk;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [1:1]count;
  wire \count_reg_n_1_[0] ;
  wire \count_reg_n_1_[1] ;
  wire ibuf_inst_n_1;
  wire ibuf_inst_n_10;
  wire ibuf_inst_n_11;
  wire ibuf_inst_n_12;
  wire ibuf_inst_n_13;
  wire ibuf_inst_n_6;
  wire ibuf_inst_n_7;
  wire ibuf_inst_n_8;
  wire ibuf_inst_n_9;
  wire [7:0]\ireg_reg[7] ;
  wire \j_0_reg_171_reg[0] ;
  wire [2:0]\j_0_reg_171_reg[0]_0 ;
  wire m_axis_video_TREADY;
  wire obuf_inst_n_11;
  wire [8:0]\odata_int_reg[8] ;
  wire [0:0]\odata_int_reg[8]_0 ;
  wire pixel_1_fu_881;
  wire reset;
  wire vld_in;

  LUT4 #(
    .INIT(16'h2F20)) 
    \and_ln25_1_reg_392[0]_i_1 
       (.I0(CO),
        .I1(\and_ln25_1_reg_392_reg[0]_0 ),
        .I2(SR),
        .I3(and_ln25_1_reg_392),
        .O(\and_ln25_1_reg_392_reg[0] ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm_reg[0] ),
        .I1(\ap_CS_fsm_reg[1] ),
        .I2(ap_start),
        .I3(\ap_CS_fsm_reg[2] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAEAEAEA)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg[1]_0 ),
        .I1(\ap_CS_fsm_reg[2] [1]),
        .I2(\count_reg_n_1_[0] ),
        .I3(\count_reg_n_1_[1] ),
        .I4(m_axis_video_TREADY),
        .I5(\ap_CS_fsm_reg[1]_1 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h8F000000)) 
    ap_ready_INST_0
       (.I0(m_axis_video_TREADY),
        .I1(\count_reg_n_1_[1] ),
        .I2(\count_reg_n_1_[0] ),
        .I3(\ap_CS_fsm_reg[2] [1]),
        .I4(\ap_CS_fsm_reg[0] ),
        .O(ap_ready));
  FDRE \count_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ibuf_inst_n_1),
        .Q(\count_reg_n_1_[0] ),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(count),
        .Q(\count_reg_n_1_[1] ),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hA222)) 
    \i_reg_387[8]_i_1 
       (.I0(\ap_CS_fsm_reg[2] [1]),
        .I1(\count_reg_n_1_[0] ),
        .I2(\count_reg_n_1_[1] ),
        .I3(m_axis_video_TREADY),
        .O(\ap_CS_fsm_reg[1] ));
  bd_0_hls_inst_0_xil_defaultlib_ibuf_34 ibuf_inst
       (.D(vld_in),
        .E(E),
        .Q(Q),
        .SR(SR),
        .and_ln25_2_reg_405(and_ln25_2_reg_405),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] [3:2]),
        .\ap_CS_fsm_reg[3] (\ap_CS_fsm_reg[3] ),
        .\ap_CS_fsm_reg[3]_0 (\ap_CS_fsm_reg[3]_0 ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .count(count),
        .\count_reg[0] (\count_reg_n_1_[1] ),
        .\count_reg[0]_0 (\count_reg_n_1_[0] ),
        .\ireg_reg[0]_0 (\odata_int_reg[8] [8]),
        .\ireg_reg[0]_1 (obuf_inst_n_11),
        .\ireg_reg[7]_0 ({ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13}),
        .\ireg_reg[7]_1 (\ireg_reg[7] ),
        .\ireg_reg[8]_0 (D[3:2]),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .m_axis_video_TREADY_0(ibuf_inst_n_1),
        .pixel_1_fu_881(pixel_1_fu_881));
  LUT5 #(
    .INIT(32'hAAAA8AAA)) 
    \j_0_reg_171[9]_i_1 
       (.I0(\ap_CS_fsm_reg[1] ),
        .I1(\j_0_reg_171_reg[0] ),
        .I2(\j_0_reg_171_reg[0]_0 [2]),
        .I3(\j_0_reg_171_reg[0]_0 [1]),
        .I4(\j_0_reg_171_reg[0]_0 [0]),
        .O(SR));
  bd_0_hls_inst_0_xil_defaultlib_obuf_35 obuf_inst
       (.D({\odata_int_reg[8]_0 ,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13}),
        .Q(\odata_int_reg[8] ),
        .SR(reset),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0] (Q),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .\odata_int_reg[8]_0 (obuf_inst_n_11));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both_5
   (Q,
    \odata_int_reg[8] ,
    \odata_int_reg[8]_0 ,
    \odata_int_reg[8]_1 ,
    \odata_int_reg[8]_2 ,
    \odata_int_reg[8]_3 ,
    \odata_int_reg[8]_4 ,
    s_axis_video_TREADY,
    \and_ln25_2_reg_405_reg[0] ,
    \odata_int_reg[8]_5 ,
    D,
    \ap_CS_fsm_reg[4] ,
    \ap_CS_fsm_reg[4]_0 ,
    ap_rst_n,
    \odata_int_reg[0] ,
    \odata_int_reg[0]_0 ,
    \odata_int_reg[0]_1 ,
    \odata_int_reg[0]_2 ,
    \odata_int_reg[0]_3 ,
    \odata_int_reg[0]_4 ,
    s_axis_video_TVALID,
    and_ln25_2_reg_405,
    s_axis_video_TDATA,
    ap_clk,
    reset,
    E);
  output [8:0]Q;
  output \odata_int_reg[8] ;
  output \odata_int_reg[8]_0 ;
  output \odata_int_reg[8]_1 ;
  output \odata_int_reg[8]_2 ;
  output \odata_int_reg[8]_3 ;
  output \odata_int_reg[8]_4 ;
  output s_axis_video_TREADY;
  output [7:0]\and_ln25_2_reg_405_reg[0] ;
  output [0:0]\odata_int_reg[8]_5 ;
  output [0:0]D;
  input [0:0]\ap_CS_fsm_reg[4] ;
  input [1:0]\ap_CS_fsm_reg[4]_0 ;
  input ap_rst_n;
  input \odata_int_reg[0] ;
  input \odata_int_reg[0]_0 ;
  input \odata_int_reg[0]_1 ;
  input \odata_int_reg[0]_2 ;
  input \odata_int_reg[0]_3 ;
  input \odata_int_reg[0]_4 ;
  input s_axis_video_TVALID;
  input and_ln25_2_reg_405;
  input [7:0]s_axis_video_TDATA;
  input ap_clk;
  input reset;
  input [0:0]E;

  wire [0:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire and_ln25_2_reg_405;
  wire [7:0]\and_ln25_2_reg_405_reg[0] ;
  wire [0:0]\ap_CS_fsm_reg[4] ;
  wire [1:0]\ap_CS_fsm_reg[4]_0 ;
  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_10;
  wire ibuf_inst_n_11;
  wire ibuf_inst_n_3;
  wire ibuf_inst_n_4;
  wire ibuf_inst_n_5;
  wire ibuf_inst_n_6;
  wire ibuf_inst_n_7;
  wire ibuf_inst_n_8;
  wire ibuf_inst_n_9;
  wire obuf_inst_n_1;
  wire \odata_int_reg[0] ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[0]_1 ;
  wire \odata_int_reg[0]_2 ;
  wire \odata_int_reg[0]_3 ;
  wire \odata_int_reg[0]_4 ;
  wire \odata_int_reg[8] ;
  wire \odata_int_reg[8]_0 ;
  wire \odata_int_reg[8]_1 ;
  wire \odata_int_reg[8]_2 ;
  wire \odata_int_reg[8]_3 ;
  wire \odata_int_reg[8]_4 ;
  wire [0:0]\odata_int_reg[8]_5 ;
  wire p_0_in;
  wire reset;
  wire [7:0]s_axis_video_TDATA;
  wire s_axis_video_TREADY;
  wire s_axis_video_TVALID;

  bd_0_hls_inst_0_xil_defaultlib_ibuf ibuf_inst
       (.D({s_axis_video_TVALID,s_axis_video_TDATA}),
        .Q(p_0_in),
        .SR(obuf_inst_n_1),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (Q[8]),
        .\ireg_reg[0]_1 (\ap_CS_fsm_reg[4] ),
        .\ireg_reg[0]_2 (\ap_CS_fsm_reg[4]_0 [0]),
        .\ireg_reg[8]_0 ({ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11}),
        .s_axis_video_TREADY(s_axis_video_TREADY));
  bd_0_hls_inst_0_xil_defaultlib_obuf obuf_inst
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(obuf_inst_n_1),
        .and_ln25_2_reg_405(and_ln25_2_reg_405),
        .\and_ln25_2_reg_405_reg[0] (\and_ln25_2_reg_405_reg[0] ),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm_reg[4] ),
        .\ap_CS_fsm_reg[4]_0 (\ap_CS_fsm_reg[4]_0 ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[8] (p_0_in),
        .\odata_int_reg[0]_0 (\odata_int_reg[0] ),
        .\odata_int_reg[0]_1 (\odata_int_reg[0]_0 ),
        .\odata_int_reg[0]_2 (\odata_int_reg[0]_1 ),
        .\odata_int_reg[0]_3 (\odata_int_reg[0]_2 ),
        .\odata_int_reg[0]_4 (\odata_int_reg[0]_3 ),
        .\odata_int_reg[0]_5 (\odata_int_reg[0]_4 ),
        .\odata_int_reg[8]_0 (\odata_int_reg[8] ),
        .\odata_int_reg[8]_1 (\odata_int_reg[8]_0 ),
        .\odata_int_reg[8]_2 (\odata_int_reg[8]_1 ),
        .\odata_int_reg[8]_3 (\odata_int_reg[8]_2 ),
        .\odata_int_reg[8]_4 (\odata_int_reg[8]_3 ),
        .\odata_int_reg[8]_5 (\odata_int_reg[8]_4 ),
        .\odata_int_reg[8]_6 (\odata_int_reg[8]_5 ),
        .\odata_int_reg[8]_7 ({ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11}),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized1
   (m_axis_video_TDEST,
    ap_rst_n,
    m_axis_video_TREADY,
    vld_in,
    s_axis_video_TDEST_int,
    ap_clk,
    reset);
  output [0:0]m_axis_video_TDEST;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input vld_in;
  input s_axis_video_TDEST_int;
  input ap_clk;
  input reset;

  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_2;
  wire [0:0]m_axis_video_TDEST;
  wire m_axis_video_TREADY;
  wire obuf_inst_n_1;
  wire p_0_in;
  wire reset;
  wire s_axis_video_TDEST_int;
  wire vld_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_32 ibuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_2),
        .\ireg_reg[1]_0 (obuf_inst_n_1),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .p_0_in(p_0_in),
        .s_axis_video_TDEST_int(s_axis_video_TDEST_int),
        .vld_in(vld_in));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_33 obuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .m_axis_video_TDEST(m_axis_video_TDEST),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .\odata_int_reg[0]_0 (ibuf_inst_n_2),
        .\odata_int_reg[1]_0 (obuf_inst_n_1),
        .p_0_in(p_0_in),
        .reset(reset),
        .s_axis_video_TDEST_int(s_axis_video_TDEST_int),
        .vld_in(vld_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized1_0
   (m_axis_video_TID,
    ap_rst_n,
    m_axis_video_TREADY,
    vld_in,
    s_axis_video_TID_int,
    ap_clk,
    reset);
  output [0:0]m_axis_video_TID;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input vld_in;
  input s_axis_video_TID_int;
  input ap_clk;
  input reset;

  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_2;
  wire [0:0]m_axis_video_TID;
  wire m_axis_video_TREADY;
  wire obuf_inst_n_1;
  wire p_0_in;
  wire reset;
  wire s_axis_video_TID_int;
  wire vld_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_30 ibuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_2),
        .\ireg_reg[1]_0 (obuf_inst_n_1),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .p_0_in(p_0_in),
        .s_axis_video_TID_int(s_axis_video_TID_int),
        .vld_in(vld_in));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_31 obuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .m_axis_video_TID(m_axis_video_TID),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .\odata_int_reg[0]_0 (ibuf_inst_n_2),
        .\odata_int_reg[1]_0 (obuf_inst_n_1),
        .p_0_in(p_0_in),
        .reset(reset),
        .s_axis_video_TID_int(s_axis_video_TID_int),
        .vld_in(vld_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized1_1
   (m_axis_video_TKEEP,
    ap_rst_n,
    m_axis_video_TREADY,
    vld_in,
    s_axis_video_TKEEP_int,
    ap_clk,
    reset);
  output [0:0]m_axis_video_TKEEP;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input vld_in;
  input s_axis_video_TKEEP_int;
  input ap_clk;
  input reset;

  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_2;
  wire [0:0]m_axis_video_TKEEP;
  wire m_axis_video_TREADY;
  wire obuf_inst_n_1;
  wire p_0_in;
  wire reset;
  wire s_axis_video_TKEEP_int;
  wire vld_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_28 ibuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_2),
        .\ireg_reg[1]_0 (obuf_inst_n_1),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .p_0_in(p_0_in),
        .s_axis_video_TKEEP_int(s_axis_video_TKEEP_int),
        .vld_in(vld_in));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_29 obuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .m_axis_video_TKEEP(m_axis_video_TKEEP),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .\odata_int_reg[0]_0 (ibuf_inst_n_2),
        .\odata_int_reg[1]_0 (obuf_inst_n_1),
        .p_0_in(p_0_in),
        .reset(reset),
        .s_axis_video_TKEEP_int(s_axis_video_TKEEP_int),
        .vld_in(vld_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized1_10
   (\odata_int_reg[1] ,
    s_axis_video_TSTRB_int,
    s_axis_video_TVALID,
    ap_rst_n,
    vld_in,
    s_axis_video_TSTRB,
    ap_clk,
    \odata_int_reg[0] ,
    reset);
  output \odata_int_reg[1] ;
  output s_axis_video_TSTRB_int;
  input s_axis_video_TVALID;
  input ap_rst_n;
  input vld_in;
  input [0:0]s_axis_video_TSTRB;
  input ap_clk;
  input \odata_int_reg[0] ;
  input reset;

  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_2;
  wire \odata_int_reg[0] ;
  wire \odata_int_reg[1] ;
  wire p_0_in;
  wire reset;
  wire [0:0]s_axis_video_TSTRB;
  wire s_axis_video_TSTRB_int;
  wire s_axis_video_TVALID;
  wire vld_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_12 ibuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_2),
        .\ireg_reg[0]_1 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .s_axis_video_TSTRB(s_axis_video_TSTRB),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_13 obuf_inst
       (.ap_clk(ap_clk),
        .\odata_int_reg[0]_0 (ibuf_inst_n_2),
        .\odata_int_reg[0]_1 (\odata_int_reg[0] ),
        .\odata_int_reg[1]_0 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .reset(reset),
        .s_axis_video_TSTRB(s_axis_video_TSTRB),
        .s_axis_video_TSTRB_int(s_axis_video_TSTRB_int),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized1_11
   (\odata_int_reg[1] ,
    s_axis_video_TUSER_int,
    s_axis_video_TVALID,
    ap_rst_n,
    vld_in,
    s_axis_video_TUSER,
    ap_clk,
    \odata_int_reg[0] ,
    reset);
  output \odata_int_reg[1] ;
  output s_axis_video_TUSER_int;
  input s_axis_video_TVALID;
  input ap_rst_n;
  input vld_in;
  input [0:0]s_axis_video_TUSER;
  input ap_clk;
  input \odata_int_reg[0] ;
  input reset;

  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_2;
  wire \odata_int_reg[0] ;
  wire \odata_int_reg[1] ;
  wire p_0_in;
  wire reset;
  wire [0:0]s_axis_video_TUSER;
  wire s_axis_video_TUSER_int;
  wire s_axis_video_TVALID;
  wire vld_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0 ibuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_2),
        .\ireg_reg[0]_1 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .s_axis_video_TUSER(s_axis_video_TUSER),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0 obuf_inst
       (.ap_clk(ap_clk),
        .\odata_int_reg[0]_0 (ibuf_inst_n_2),
        .\odata_int_reg[0]_1 (\odata_int_reg[0] ),
        .\odata_int_reg[1]_0 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .reset(reset),
        .s_axis_video_TUSER(s_axis_video_TUSER),
        .s_axis_video_TUSER_int(s_axis_video_TUSER_int),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized1_2
   (m_axis_video_TLAST,
    ap_rst_n,
    m_axis_video_TREADY,
    vld_in,
    s_axis_video_TLAST_int,
    ap_clk,
    reset);
  output [0:0]m_axis_video_TLAST;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input vld_in;
  input s_axis_video_TLAST_int;
  input ap_clk;
  input reset;

  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_2;
  wire [0:0]m_axis_video_TLAST;
  wire m_axis_video_TREADY;
  wire obuf_inst_n_1;
  wire p_0_in;
  wire reset;
  wire s_axis_video_TLAST_int;
  wire vld_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_26 ibuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_2),
        .\ireg_reg[1]_0 (obuf_inst_n_1),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .p_0_in(p_0_in),
        .s_axis_video_TLAST_int(s_axis_video_TLAST_int),
        .vld_in(vld_in));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_27 obuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .m_axis_video_TLAST(m_axis_video_TLAST),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .\odata_int_reg[0]_0 (ibuf_inst_n_2),
        .\odata_int_reg[1]_0 (obuf_inst_n_1),
        .p_0_in(p_0_in),
        .reset(reset),
        .s_axis_video_TLAST_int(s_axis_video_TLAST_int),
        .vld_in(vld_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized1_3
   (m_axis_video_TSTRB,
    ap_rst_n,
    m_axis_video_TREADY,
    vld_in,
    s_axis_video_TSTRB_int,
    ap_clk,
    reset);
  output [0:0]m_axis_video_TSTRB;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input vld_in;
  input s_axis_video_TSTRB_int;
  input ap_clk;
  input reset;

  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_2;
  wire m_axis_video_TREADY;
  wire [0:0]m_axis_video_TSTRB;
  wire obuf_inst_n_1;
  wire p_0_in;
  wire reset;
  wire s_axis_video_TSTRB_int;
  wire vld_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_24 ibuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_2),
        .\ireg_reg[1]_0 (obuf_inst_n_1),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .p_0_in(p_0_in),
        .s_axis_video_TSTRB_int(s_axis_video_TSTRB_int),
        .vld_in(vld_in));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_25 obuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .m_axis_video_TSTRB(m_axis_video_TSTRB),
        .\odata_int_reg[0]_0 (ibuf_inst_n_2),
        .\odata_int_reg[1]_0 (obuf_inst_n_1),
        .p_0_in(p_0_in),
        .reset(reset),
        .s_axis_video_TSTRB_int(s_axis_video_TSTRB_int),
        .vld_in(vld_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized1_4
   (m_axis_video_TUSER,
    ap_rst_n,
    m_axis_video_TREADY,
    vld_in,
    s_axis_video_TUSER_int,
    ap_clk,
    reset);
  output [0:0]m_axis_video_TUSER;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input vld_in;
  input s_axis_video_TUSER_int;
  input ap_clk;
  input reset;

  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_2;
  wire m_axis_video_TREADY;
  wire [0:0]m_axis_video_TUSER;
  wire obuf_inst_n_1;
  wire p_0_in;
  wire reset;
  wire s_axis_video_TUSER_int;
  wire vld_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_22 ibuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_2),
        .\ireg_reg[1]_0 (obuf_inst_n_1),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .p_0_in(p_0_in),
        .s_axis_video_TUSER_int(s_axis_video_TUSER_int),
        .vld_in(vld_in));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_23 obuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .m_axis_video_TUSER(m_axis_video_TUSER),
        .\odata_int_reg[0]_0 (ibuf_inst_n_2),
        .\odata_int_reg[1]_0 (obuf_inst_n_1),
        .p_0_in(p_0_in),
        .reset(reset),
        .s_axis_video_TUSER_int(s_axis_video_TUSER_int),
        .vld_in(vld_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized1_6
   (\odata_int_reg[1] ,
    s_axis_video_TDEST_int,
    s_axis_video_TVALID,
    ap_rst_n,
    vld_in,
    s_axis_video_TDEST,
    ap_clk,
    \odata_int_reg[0] ,
    reset);
  output \odata_int_reg[1] ;
  output s_axis_video_TDEST_int;
  input s_axis_video_TVALID;
  input ap_rst_n;
  input vld_in;
  input [0:0]s_axis_video_TDEST;
  input ap_clk;
  input \odata_int_reg[0] ;
  input reset;

  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_2;
  wire \odata_int_reg[0] ;
  wire \odata_int_reg[1] ;
  wire p_0_in;
  wire reset;
  wire [0:0]s_axis_video_TDEST;
  wire s_axis_video_TDEST_int;
  wire s_axis_video_TVALID;
  wire vld_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_20 ibuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_2),
        .\ireg_reg[0]_1 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .s_axis_video_TDEST(s_axis_video_TDEST),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_21 obuf_inst
       (.ap_clk(ap_clk),
        .\odata_int_reg[0]_0 (ibuf_inst_n_2),
        .\odata_int_reg[0]_1 (\odata_int_reg[0] ),
        .\odata_int_reg[1]_0 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .reset(reset),
        .s_axis_video_TDEST(s_axis_video_TDEST),
        .s_axis_video_TDEST_int(s_axis_video_TDEST_int),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized1_7
   (\odata_int_reg[1] ,
    s_axis_video_TID_int,
    s_axis_video_TVALID,
    ap_rst_n,
    vld_in,
    s_axis_video_TID,
    ap_clk,
    \odata_int_reg[0] ,
    reset);
  output \odata_int_reg[1] ;
  output s_axis_video_TID_int;
  input s_axis_video_TVALID;
  input ap_rst_n;
  input vld_in;
  input [0:0]s_axis_video_TID;
  input ap_clk;
  input \odata_int_reg[0] ;
  input reset;

  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_2;
  wire \odata_int_reg[0] ;
  wire \odata_int_reg[1] ;
  wire p_0_in;
  wire reset;
  wire [0:0]s_axis_video_TID;
  wire s_axis_video_TID_int;
  wire s_axis_video_TVALID;
  wire vld_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_18 ibuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_2),
        .\ireg_reg[0]_1 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .s_axis_video_TID(s_axis_video_TID),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_19 obuf_inst
       (.ap_clk(ap_clk),
        .\odata_int_reg[0]_0 (ibuf_inst_n_2),
        .\odata_int_reg[0]_1 (\odata_int_reg[0] ),
        .\odata_int_reg[1]_0 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .reset(reset),
        .s_axis_video_TID(s_axis_video_TID),
        .s_axis_video_TID_int(s_axis_video_TID_int),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized1_8
   (\odata_int_reg[1] ,
    s_axis_video_TKEEP_int,
    s_axis_video_TVALID,
    ap_rst_n,
    vld_in,
    s_axis_video_TKEEP,
    ap_clk,
    \odata_int_reg[0] ,
    reset);
  output \odata_int_reg[1] ;
  output s_axis_video_TKEEP_int;
  input s_axis_video_TVALID;
  input ap_rst_n;
  input vld_in;
  input [0:0]s_axis_video_TKEEP;
  input ap_clk;
  input \odata_int_reg[0] ;
  input reset;

  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_2;
  wire \odata_int_reg[0] ;
  wire \odata_int_reg[1] ;
  wire p_0_in;
  wire reset;
  wire [0:0]s_axis_video_TKEEP;
  wire s_axis_video_TKEEP_int;
  wire s_axis_video_TVALID;
  wire vld_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_16 ibuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_2),
        .\ireg_reg[0]_1 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .s_axis_video_TKEEP(s_axis_video_TKEEP),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_17 obuf_inst
       (.ap_clk(ap_clk),
        .\odata_int_reg[0]_0 (ibuf_inst_n_2),
        .\odata_int_reg[0]_1 (\odata_int_reg[0] ),
        .\odata_int_reg[1]_0 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .reset(reset),
        .s_axis_video_TKEEP(s_axis_video_TKEEP),
        .s_axis_video_TKEEP_int(s_axis_video_TKEEP_int),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized1_9
   (\odata_int_reg[1] ,
    s_axis_video_TLAST_int,
    s_axis_video_TVALID,
    ap_rst_n,
    vld_in,
    s_axis_video_TLAST,
    ap_clk,
    \odata_int_reg[0] ,
    reset);
  output \odata_int_reg[1] ;
  output s_axis_video_TLAST_int;
  input s_axis_video_TVALID;
  input ap_rst_n;
  input vld_in;
  input [0:0]s_axis_video_TLAST;
  input ap_clk;
  input \odata_int_reg[0] ;
  input reset;

  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_2;
  wire \odata_int_reg[0] ;
  wire \odata_int_reg[1] ;
  wire p_0_in;
  wire reset;
  wire [0:0]s_axis_video_TLAST;
  wire s_axis_video_TLAST_int;
  wire s_axis_video_TVALID;
  wire vld_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_14 ibuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_2),
        .\ireg_reg[0]_1 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .s_axis_video_TLAST(s_axis_video_TLAST),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_15 obuf_inst
       (.ap_clk(ap_clk),
        .\odata_int_reg[0]_0 (ibuf_inst_n_2),
        .\odata_int_reg[0]_1 (\odata_int_reg[0] ),
        .\odata_int_reg[1]_0 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .reset(reset),
        .s_axis_video_TLAST(s_axis_video_TLAST),
        .s_axis_video_TLAST_int(s_axis_video_TLAST_int),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .vld_in(vld_in));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf
   (s_axis_video_TREADY,
    Q,
    \ireg_reg[8]_0 ,
    D,
    ap_rst_n,
    \ireg_reg[0]_0 ,
    \ireg_reg[0]_1 ,
    \ireg_reg[0]_2 ,
    SR,
    ap_clk);
  output s_axis_video_TREADY;
  output [0:0]Q;
  output [8:0]\ireg_reg[8]_0 ;
  input [8:0]D;
  input ap_rst_n;
  input [0:0]\ireg_reg[0]_0 ;
  input [0:0]\ireg_reg[0]_1 ;
  input [0:0]\ireg_reg[0]_2 ;
  input [0:0]SR;
  input ap_clk;

  wire [8:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire ireg01_out;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [0:0]\ireg_reg[0]_1 ;
  wire [0:0]\ireg_reg[0]_2 ;
  wire [8:0]\ireg_reg[8]_0 ;
  wire \ireg_reg_n_1_[0] ;
  wire \ireg_reg_n_1_[1] ;
  wire \ireg_reg_n_1_[2] ;
  wire \ireg_reg_n_1_[3] ;
  wire \ireg_reg_n_1_[4] ;
  wire \ireg_reg_n_1_[5] ;
  wire \ireg_reg_n_1_[6] ;
  wire \ireg_reg_n_1_[7] ;
  wire s_axis_video_TREADY;

  LUT4 #(
    .INIT(16'h4044)) 
    \ireg[8]_i_2 
       (.I0(Q),
        .I1(\ireg_reg[0]_0 ),
        .I2(\ireg_reg[0]_1 ),
        .I3(\ireg_reg[0]_2 ),
        .O(ireg01_out));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[0]),
        .Q(\ireg_reg_n_1_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[1]),
        .Q(\ireg_reg_n_1_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[2]),
        .Q(\ireg_reg_n_1_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[3]),
        .Q(\ireg_reg_n_1_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[4]),
        .Q(\ireg_reg_n_1_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[5]),
        .Q(\ireg_reg_n_1_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[6]),
        .Q(\ireg_reg_n_1_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[7] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[7]),
        .Q(\ireg_reg_n_1_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[8] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[8]),
        .Q(Q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata_int[0]_i_1 
       (.I0(D[0]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[0] ),
        .O(\ireg_reg[8]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata_int[1]_i_1 
       (.I0(D[1]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[1] ),
        .O(\ireg_reg[8]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata_int[2]_i_1 
       (.I0(D[2]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[2] ),
        .O(\ireg_reg[8]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata_int[3]_i_1 
       (.I0(D[3]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[3] ),
        .O(\ireg_reg[8]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata_int[4]_i_1 
       (.I0(D[4]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[4] ),
        .O(\ireg_reg[8]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata_int[5]_i_1 
       (.I0(D[5]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[5] ),
        .O(\ireg_reg[8]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata_int[6]_i_1 
       (.I0(D[6]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[6] ),
        .O(\ireg_reg[8]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata_int[7]_i_1__0 
       (.I0(D[7]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[7] ),
        .O(\ireg_reg[8]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[8]_i_2 
       (.I0(Q),
        .I1(D[8]),
        .O(\ireg_reg[8]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h08)) 
    s_axis_video_TREADY_INST_0
       (.I0(D[8]),
        .I1(ap_rst_n),
        .I2(Q),
        .O(s_axis_video_TREADY));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf_34
   (m_axis_video_TREADY_0,
    D,
    count,
    Q,
    E,
    \ireg_reg[7]_0 ,
    \ap_CS_fsm_reg[3] ,
    \ireg_reg[8]_0 ,
    m_axis_video_TREADY,
    \count_reg[0] ,
    \count_reg[0]_0 ,
    ap_rst_n,
    \ap_CS_fsm_reg[2] ,
    \ap_CS_fsm_reg[3]_0 ,
    and_ln25_2_reg_405,
    \ireg_reg[0]_0 ,
    pixel_1_fu_881,
    SR,
    \ireg_reg[0]_1 ,
    ap_clk,
    \ireg_reg[7]_1 );
  output m_axis_video_TREADY_0;
  output [0:0]D;
  output [0:0]count;
  output [0:0]Q;
  output [0:0]E;
  output [7:0]\ireg_reg[7]_0 ;
  output [0:0]\ap_CS_fsm_reg[3] ;
  output [1:0]\ireg_reg[8]_0 ;
  input m_axis_video_TREADY;
  input \count_reg[0] ;
  input \count_reg[0]_0 ;
  input ap_rst_n;
  input [1:0]\ap_CS_fsm_reg[2] ;
  input [8:0]\ap_CS_fsm_reg[3]_0 ;
  input and_ln25_2_reg_405;
  input [0:0]\ireg_reg[0]_0 ;
  input pixel_1_fu_881;
  input [0:0]SR;
  input [0:0]\ireg_reg[0]_1 ;
  input ap_clk;
  input [7:0]\ireg_reg[7]_1 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire and_ln25_2_reg_405;
  wire [1:0]\ap_CS_fsm_reg[2] ;
  wire [0:0]\ap_CS_fsm_reg[3] ;
  wire [8:0]\ap_CS_fsm_reg[3]_0 ;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]count;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire ireg01_out;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [0:0]\ireg_reg[0]_1 ;
  wire [7:0]\ireg_reg[7]_0 ;
  wire [7:0]\ireg_reg[7]_1 ;
  wire [1:0]\ireg_reg[8]_0 ;
  wire \ireg_reg_n_1_[0] ;
  wire \ireg_reg_n_1_[1] ;
  wire \ireg_reg_n_1_[2] ;
  wire \ireg_reg_n_1_[3] ;
  wire \ireg_reg_n_1_[4] ;
  wire \ireg_reg_n_1_[5] ;
  wire \ireg_reg_n_1_[6] ;
  wire \ireg_reg_n_1_[7] ;
  wire m_axis_video_TREADY;
  wire m_axis_video_TREADY_0;
  wire pixel_1_fu_881;

  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(Q),
        .I1(\ap_CS_fsm_reg[2] [1]),
        .I2(SR),
        .O(\ireg_reg[8]_0 [0]));
  LUT4 #(
    .INIT(16'hEAFA)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(pixel_1_fu_881),
        .I1(Q),
        .I2(\ap_CS_fsm_reg[2] [0]),
        .I3(\ap_CS_fsm_reg[3]_0 [8]),
        .O(\ireg_reg[8]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hBFA0A0A0)) 
    \count[0]_i_1 
       (.I0(D),
        .I1(m_axis_video_TREADY),
        .I2(\count_reg[0] ),
        .I3(\count_reg[0]_0 ),
        .I4(ap_rst_n),
        .O(m_axis_video_TREADY_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \count[1]_i_1 
       (.I0(\count_reg[0]_0 ),
        .I1(m_axis_video_TREADY),
        .I2(D),
        .I3(\count_reg[0] ),
        .O(count));
  LUT3 #(
    .INIT(8'h04)) 
    \ireg[8]_i_2__0 
       (.I0(Q),
        .I1(\ireg_reg[0]_0 ),
        .I2(m_axis_video_TREADY),
        .O(ireg01_out));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \ireg[8]_i_3 
       (.I0(ap_rst_n),
        .I1(Q),
        .I2(\ap_CS_fsm_reg[2] [0]),
        .I3(\ap_CS_fsm_reg[3]_0 [8]),
        .O(D));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[7]_1 [0]),
        .Q(\ireg_reg_n_1_[0] ),
        .R(\ireg_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[7]_1 [1]),
        .Q(\ireg_reg_n_1_[1] ),
        .R(\ireg_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[7]_1 [2]),
        .Q(\ireg_reg_n_1_[2] ),
        .R(\ireg_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[7]_1 [3]),
        .Q(\ireg_reg_n_1_[3] ),
        .R(\ireg_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[7]_1 [4]),
        .Q(\ireg_reg_n_1_[4] ),
        .R(\ireg_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[7]_1 [5]),
        .Q(\ireg_reg_n_1_[5] ),
        .R(\ireg_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[7]_1 [6]),
        .Q(\ireg_reg_n_1_[6] ),
        .R(\ireg_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[7] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[7]_1 [7]),
        .Q(\ireg_reg_n_1_[7] ),
        .R(\ireg_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[8] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D),
        .Q(Q),
        .R(\ireg_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \j_0_reg_171[9]_i_2 
       (.I0(\ap_CS_fsm_reg[2] [1]),
        .I1(ap_rst_n),
        .I2(Q),
        .O(E));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \odata_int[0]_i_1__0 
       (.I0(\ireg_reg_n_1_[0] ),
        .I1(Q),
        .I2(and_ln25_2_reg_405),
        .I3(\ap_CS_fsm_reg[3]_0 [0]),
        .O(\ireg_reg[7]_0 [0]));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \odata_int[1]_i_1__0 
       (.I0(\ireg_reg_n_1_[1] ),
        .I1(Q),
        .I2(and_ln25_2_reg_405),
        .I3(\ap_CS_fsm_reg[3]_0 [1]),
        .O(\ireg_reg[7]_0 [1]));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \odata_int[2]_i_1__0 
       (.I0(\ireg_reg_n_1_[2] ),
        .I1(Q),
        .I2(and_ln25_2_reg_405),
        .I3(\ap_CS_fsm_reg[3]_0 [2]),
        .O(\ireg_reg[7]_0 [2]));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \odata_int[3]_i_1__0 
       (.I0(\ireg_reg_n_1_[3] ),
        .I1(Q),
        .I2(and_ln25_2_reg_405),
        .I3(\ap_CS_fsm_reg[3]_0 [3]),
        .O(\ireg_reg[7]_0 [3]));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \odata_int[4]_i_1__0 
       (.I0(\ireg_reg_n_1_[4] ),
        .I1(Q),
        .I2(and_ln25_2_reg_405),
        .I3(\ap_CS_fsm_reg[3]_0 [4]),
        .O(\ireg_reg[7]_0 [4]));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \odata_int[5]_i_1__0 
       (.I0(\ireg_reg_n_1_[5] ),
        .I1(Q),
        .I2(and_ln25_2_reg_405),
        .I3(\ap_CS_fsm_reg[3]_0 [5]),
        .O(\ireg_reg[7]_0 [5]));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \odata_int[6]_i_1__0 
       (.I0(\ireg_reg_n_1_[6] ),
        .I1(Q),
        .I2(and_ln25_2_reg_405),
        .I3(\ap_CS_fsm_reg[3]_0 [6]),
        .O(\ireg_reg[7]_0 [6]));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \odata_int[7]_i_3 
       (.I0(\ireg_reg_n_1_[7] ),
        .I1(Q),
        .I2(and_ln25_2_reg_405),
        .I3(\ap_CS_fsm_reg[3]_0 [7]),
        .O(\ireg_reg[7]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h2F)) 
    \odata_int[8]_i_1__0 
       (.I0(\ap_CS_fsm_reg[2] [0]),
        .I1(Q),
        .I2(\ap_CS_fsm_reg[3]_0 [8]),
        .O(\ap_CS_fsm_reg[3] ));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0
   (p_0_in,
    \ireg_reg[0]_0 ,
    s_axis_video_TVALID,
    ap_rst_n,
    vld_in,
    \ireg_reg[0]_1 ,
    s_axis_video_TUSER,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input s_axis_video_TVALID;
  input ap_rst_n;
  input vld_in;
  input \ireg_reg[0]_1 ;
  input [0:0]s_axis_video_TUSER;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_1 ;
  wire \ireg[1]_i_1_n_1 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[0]_1 ;
  wire p_0_in;
  wire [0:0]s_axis_video_TUSER;
  wire s_axis_video_TVALID;
  wire vld_in;

  LUT6 #(
    .INIT(64'h00A0A0C000A000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(s_axis_video_TUSER),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(vld_in),
        .I5(\ireg_reg[0]_1 ),
        .O(\ireg[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h00C80000)) 
    \ireg[1]_i_1 
       (.I0(s_axis_video_TVALID),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(vld_in),
        .I4(\ireg_reg[0]_1 ),
        .O(\ireg[1]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_1 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_1 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_12
   (p_0_in,
    \ireg_reg[0]_0 ,
    s_axis_video_TVALID,
    ap_rst_n,
    vld_in,
    \ireg_reg[0]_1 ,
    s_axis_video_TSTRB,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input s_axis_video_TVALID;
  input ap_rst_n;
  input vld_in;
  input \ireg_reg[0]_1 ;
  input [0:0]s_axis_video_TSTRB;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_1 ;
  wire \ireg[1]_i_1_n_1 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[0]_1 ;
  wire p_0_in;
  wire [0:0]s_axis_video_TSTRB;
  wire s_axis_video_TVALID;
  wire vld_in;

  LUT6 #(
    .INIT(64'h00A0A0C000A000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(s_axis_video_TSTRB),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(vld_in),
        .I5(\ireg_reg[0]_1 ),
        .O(\ireg[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h00C80000)) 
    \ireg[1]_i_1 
       (.I0(s_axis_video_TVALID),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(vld_in),
        .I4(\ireg_reg[0]_1 ),
        .O(\ireg[1]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_1 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_1 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_14
   (p_0_in,
    \ireg_reg[0]_0 ,
    s_axis_video_TVALID,
    ap_rst_n,
    vld_in,
    \ireg_reg[0]_1 ,
    s_axis_video_TLAST,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input s_axis_video_TVALID;
  input ap_rst_n;
  input vld_in;
  input \ireg_reg[0]_1 ;
  input [0:0]s_axis_video_TLAST;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_1 ;
  wire \ireg[1]_i_1_n_1 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[0]_1 ;
  wire p_0_in;
  wire [0:0]s_axis_video_TLAST;
  wire s_axis_video_TVALID;
  wire vld_in;

  LUT6 #(
    .INIT(64'h00A0A0C000A000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(s_axis_video_TLAST),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(vld_in),
        .I5(\ireg_reg[0]_1 ),
        .O(\ireg[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h00C80000)) 
    \ireg[1]_i_1 
       (.I0(s_axis_video_TVALID),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(vld_in),
        .I4(\ireg_reg[0]_1 ),
        .O(\ireg[1]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_1 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_1 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_16
   (p_0_in,
    \ireg_reg[0]_0 ,
    s_axis_video_TVALID,
    ap_rst_n,
    vld_in,
    \ireg_reg[0]_1 ,
    s_axis_video_TKEEP,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input s_axis_video_TVALID;
  input ap_rst_n;
  input vld_in;
  input \ireg_reg[0]_1 ;
  input [0:0]s_axis_video_TKEEP;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_1 ;
  wire \ireg[1]_i_1_n_1 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[0]_1 ;
  wire p_0_in;
  wire [0:0]s_axis_video_TKEEP;
  wire s_axis_video_TVALID;
  wire vld_in;

  LUT6 #(
    .INIT(64'h00A0A0C000A000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(s_axis_video_TKEEP),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(vld_in),
        .I5(\ireg_reg[0]_1 ),
        .O(\ireg[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h00C80000)) 
    \ireg[1]_i_1 
       (.I0(s_axis_video_TVALID),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(vld_in),
        .I4(\ireg_reg[0]_1 ),
        .O(\ireg[1]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_1 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_1 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_18
   (p_0_in,
    \ireg_reg[0]_0 ,
    s_axis_video_TVALID,
    ap_rst_n,
    vld_in,
    \ireg_reg[0]_1 ,
    s_axis_video_TID,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input s_axis_video_TVALID;
  input ap_rst_n;
  input vld_in;
  input \ireg_reg[0]_1 ;
  input [0:0]s_axis_video_TID;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_1 ;
  wire \ireg[1]_i_1_n_1 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[0]_1 ;
  wire p_0_in;
  wire [0:0]s_axis_video_TID;
  wire s_axis_video_TVALID;
  wire vld_in;

  LUT6 #(
    .INIT(64'h00A0A0C000A000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(s_axis_video_TID),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(vld_in),
        .I5(\ireg_reg[0]_1 ),
        .O(\ireg[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h00C80000)) 
    \ireg[1]_i_1 
       (.I0(s_axis_video_TVALID),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(vld_in),
        .I4(\ireg_reg[0]_1 ),
        .O(\ireg[1]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_1 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_1 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_20
   (p_0_in,
    \ireg_reg[0]_0 ,
    s_axis_video_TVALID,
    ap_rst_n,
    vld_in,
    \ireg_reg[0]_1 ,
    s_axis_video_TDEST,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input s_axis_video_TVALID;
  input ap_rst_n;
  input vld_in;
  input \ireg_reg[0]_1 ;
  input [0:0]s_axis_video_TDEST;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_1 ;
  wire \ireg[1]_i_1_n_1 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[0]_1 ;
  wire p_0_in;
  wire [0:0]s_axis_video_TDEST;
  wire s_axis_video_TVALID;
  wire vld_in;

  LUT6 #(
    .INIT(64'h00A0A0C000A000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(s_axis_video_TDEST),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(vld_in),
        .I5(\ireg_reg[0]_1 ),
        .O(\ireg[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h00C80000)) 
    \ireg[1]_i_1 
       (.I0(s_axis_video_TVALID),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(vld_in),
        .I4(\ireg_reg[0]_1 ),
        .O(\ireg[1]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_1 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_1 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_22
   (p_0_in,
    \ireg_reg[0]_0 ,
    vld_in,
    ap_rst_n,
    m_axis_video_TREADY,
    \ireg_reg[1]_0 ,
    s_axis_video_TUSER_int,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input vld_in;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input \ireg_reg[1]_0 ;
  input s_axis_video_TUSER_int;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_1 ;
  wire \ireg[1]_i_1_n_1 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[1]_0 ;
  wire m_axis_video_TREADY;
  wire p_0_in;
  wire s_axis_video_TUSER_int;
  wire vld_in;

  LUT6 #(
    .INIT(64'h00A0A0C000A000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(s_axis_video_TUSER_int),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(m_axis_video_TREADY),
        .I5(\ireg_reg[1]_0 ),
        .O(\ireg[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h00C80000)) 
    \ireg[1]_i_1 
       (.I0(vld_in),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(m_axis_video_TREADY),
        .I4(\ireg_reg[1]_0 ),
        .O(\ireg[1]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_1 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_1 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_24
   (p_0_in,
    \ireg_reg[0]_0 ,
    vld_in,
    ap_rst_n,
    m_axis_video_TREADY,
    \ireg_reg[1]_0 ,
    s_axis_video_TSTRB_int,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input vld_in;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input \ireg_reg[1]_0 ;
  input s_axis_video_TSTRB_int;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_1 ;
  wire \ireg[1]_i_1_n_1 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[1]_0 ;
  wire m_axis_video_TREADY;
  wire p_0_in;
  wire s_axis_video_TSTRB_int;
  wire vld_in;

  LUT6 #(
    .INIT(64'h00A0A0C000A000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(s_axis_video_TSTRB_int),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(m_axis_video_TREADY),
        .I5(\ireg_reg[1]_0 ),
        .O(\ireg[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h00C80000)) 
    \ireg[1]_i_1 
       (.I0(vld_in),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(m_axis_video_TREADY),
        .I4(\ireg_reg[1]_0 ),
        .O(\ireg[1]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_1 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_1 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_26
   (p_0_in,
    \ireg_reg[0]_0 ,
    vld_in,
    ap_rst_n,
    m_axis_video_TREADY,
    \ireg_reg[1]_0 ,
    s_axis_video_TLAST_int,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input vld_in;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input \ireg_reg[1]_0 ;
  input s_axis_video_TLAST_int;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_1 ;
  wire \ireg[1]_i_1_n_1 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[1]_0 ;
  wire m_axis_video_TREADY;
  wire p_0_in;
  wire s_axis_video_TLAST_int;
  wire vld_in;

  LUT6 #(
    .INIT(64'h00A0A0C000A000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(s_axis_video_TLAST_int),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(m_axis_video_TREADY),
        .I5(\ireg_reg[1]_0 ),
        .O(\ireg[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h00C80000)) 
    \ireg[1]_i_1 
       (.I0(vld_in),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(m_axis_video_TREADY),
        .I4(\ireg_reg[1]_0 ),
        .O(\ireg[1]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_1 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_1 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_28
   (p_0_in,
    \ireg_reg[0]_0 ,
    vld_in,
    ap_rst_n,
    m_axis_video_TREADY,
    \ireg_reg[1]_0 ,
    s_axis_video_TKEEP_int,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input vld_in;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input \ireg_reg[1]_0 ;
  input s_axis_video_TKEEP_int;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_1 ;
  wire \ireg[1]_i_1_n_1 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[1]_0 ;
  wire m_axis_video_TREADY;
  wire p_0_in;
  wire s_axis_video_TKEEP_int;
  wire vld_in;

  LUT6 #(
    .INIT(64'h00A0A0C000A000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(s_axis_video_TKEEP_int),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(m_axis_video_TREADY),
        .I5(\ireg_reg[1]_0 ),
        .O(\ireg[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h00C80000)) 
    \ireg[1]_i_1 
       (.I0(vld_in),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(m_axis_video_TREADY),
        .I4(\ireg_reg[1]_0 ),
        .O(\ireg[1]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_1 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_1 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_30
   (p_0_in,
    \ireg_reg[0]_0 ,
    vld_in,
    ap_rst_n,
    m_axis_video_TREADY,
    \ireg_reg[1]_0 ,
    s_axis_video_TID_int,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input vld_in;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input \ireg_reg[1]_0 ;
  input s_axis_video_TID_int;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_1 ;
  wire \ireg[1]_i_1_n_1 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[1]_0 ;
  wire m_axis_video_TREADY;
  wire p_0_in;
  wire s_axis_video_TID_int;
  wire vld_in;

  LUT6 #(
    .INIT(64'h00A0A0C000A000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(s_axis_video_TID_int),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(m_axis_video_TREADY),
        .I5(\ireg_reg[1]_0 ),
        .O(\ireg[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h00C80000)) 
    \ireg[1]_i_1 
       (.I0(vld_in),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(m_axis_video_TREADY),
        .I4(\ireg_reg[1]_0 ),
        .O(\ireg[1]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_1 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_1 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_32
   (p_0_in,
    \ireg_reg[0]_0 ,
    vld_in,
    ap_rst_n,
    m_axis_video_TREADY,
    \ireg_reg[1]_0 ,
    s_axis_video_TDEST_int,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input vld_in;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input \ireg_reg[1]_0 ;
  input s_axis_video_TDEST_int;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_1 ;
  wire \ireg[1]_i_1_n_1 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[1]_0 ;
  wire m_axis_video_TREADY;
  wire p_0_in;
  wire s_axis_video_TDEST_int;
  wire vld_in;

  LUT6 #(
    .INIT(64'h00A0A0C000A000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(s_axis_video_TDEST_int),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(m_axis_video_TREADY),
        .I5(\ireg_reg[1]_0 ),
        .O(\ireg[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h00C80000)) 
    \ireg[1]_i_1 
       (.I0(vld_in),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(m_axis_video_TREADY),
        .I4(\ireg_reg[1]_0 ),
        .O(\ireg[1]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_1 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_1 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf
   (SR,
    Q,
    \odata_int_reg[8]_0 ,
    \odata_int_reg[8]_1 ,
    \odata_int_reg[8]_2 ,
    \odata_int_reg[8]_3 ,
    \odata_int_reg[8]_4 ,
    \odata_int_reg[8]_5 ,
    \and_ln25_2_reg_405_reg[0] ,
    \odata_int_reg[8]_6 ,
    D,
    \ap_CS_fsm_reg[4] ,
    \ap_CS_fsm_reg[4]_0 ,
    \ireg_reg[8] ,
    ap_rst_n,
    \odata_int_reg[0]_0 ,
    \odata_int_reg[0]_1 ,
    \odata_int_reg[0]_2 ,
    \odata_int_reg[0]_3 ,
    \odata_int_reg[0]_4 ,
    \odata_int_reg[0]_5 ,
    and_ln25_2_reg_405,
    reset,
    E,
    \odata_int_reg[8]_7 ,
    ap_clk);
  output [0:0]SR;
  output [8:0]Q;
  output \odata_int_reg[8]_0 ;
  output \odata_int_reg[8]_1 ;
  output \odata_int_reg[8]_2 ;
  output \odata_int_reg[8]_3 ;
  output \odata_int_reg[8]_4 ;
  output \odata_int_reg[8]_5 ;
  output [7:0]\and_ln25_2_reg_405_reg[0] ;
  output [0:0]\odata_int_reg[8]_6 ;
  output [0:0]D;
  input [0:0]\ap_CS_fsm_reg[4] ;
  input [1:0]\ap_CS_fsm_reg[4]_0 ;
  input [0:0]\ireg_reg[8] ;
  input ap_rst_n;
  input \odata_int_reg[0]_0 ;
  input \odata_int_reg[0]_1 ;
  input \odata_int_reg[0]_2 ;
  input \odata_int_reg[0]_3 ;
  input \odata_int_reg[0]_4 ;
  input \odata_int_reg[0]_5 ;
  input and_ln25_2_reg_405;
  input reset;
  input [0:0]E;
  input [8:0]\odata_int_reg[8]_7 ;
  input ap_clk;

  wire [0:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]SR;
  wire and_ln25_2_reg_405;
  wire [7:0]\and_ln25_2_reg_405_reg[0] ;
  wire [0:0]\ap_CS_fsm_reg[4] ;
  wire [1:0]\ap_CS_fsm_reg[4]_0 ;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]\ireg_reg[8] ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[0]_1 ;
  wire \odata_int_reg[0]_2 ;
  wire \odata_int_reg[0]_3 ;
  wire \odata_int_reg[0]_4 ;
  wire \odata_int_reg[0]_5 ;
  wire \odata_int_reg[8]_0 ;
  wire \odata_int_reg[8]_1 ;
  wire \odata_int_reg[8]_2 ;
  wire \odata_int_reg[8]_3 ;
  wire \odata_int_reg[8]_4 ;
  wire \odata_int_reg[8]_5 ;
  wire [0:0]\odata_int_reg[8]_6 ;
  wire [8:0]\odata_int_reg[8]_7 ;
  wire reset;

  LUT4 #(
    .INIT(16'hF808)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(Q[8]),
        .I1(\ap_CS_fsm_reg[4]_0 [0]),
        .I2(\ap_CS_fsm_reg[4] ),
        .I3(\ap_CS_fsm_reg[4]_0 [1]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ireg[0]_i_1 
       (.I0(and_ln25_2_reg_405),
        .I1(Q[0]),
        .O(\and_ln25_2_reg_405_reg[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ireg[1]_i_1 
       (.I0(and_ln25_2_reg_405),
        .I1(Q[1]),
        .O(\and_ln25_2_reg_405_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ireg[2]_i_1 
       (.I0(and_ln25_2_reg_405),
        .I1(Q[2]),
        .O(\and_ln25_2_reg_405_reg[0] [2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ireg[3]_i_1 
       (.I0(and_ln25_2_reg_405),
        .I1(Q[3]),
        .O(\and_ln25_2_reg_405_reg[0] [3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ireg[4]_i_1 
       (.I0(and_ln25_2_reg_405),
        .I1(Q[4]),
        .O(\and_ln25_2_reg_405_reg[0] [4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ireg[5]_i_1 
       (.I0(and_ln25_2_reg_405),
        .I1(Q[5]),
        .O(\and_ln25_2_reg_405_reg[0] [5]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ireg[6]_i_1 
       (.I0(and_ln25_2_reg_405),
        .I1(Q[6]),
        .O(\and_ln25_2_reg_405_reg[0] [6]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ireg[7]_i_1 
       (.I0(and_ln25_2_reg_405),
        .I1(Q[7]),
        .O(\and_ln25_2_reg_405_reg[0] [7]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h7500FFFF)) 
    \ireg[8]_i_1 
       (.I0(Q[8]),
        .I1(\ap_CS_fsm_reg[4] ),
        .I2(\ap_CS_fsm_reg[4]_0 [0]),
        .I3(\ireg_reg[8] ),
        .I4(ap_rst_n),
        .O(SR));
  LUT5 #(
    .INIT(32'h08FF0000)) 
    \odata_int[0]_i_2 
       (.I0(Q[8]),
        .I1(\ap_CS_fsm_reg[4]_0 [0]),
        .I2(\ap_CS_fsm_reg[4] ),
        .I3(\odata_int_reg[0]_0 ),
        .I4(ap_rst_n),
        .O(\odata_int_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h08FF0000)) 
    \odata_int[0]_i_2__0 
       (.I0(Q[8]),
        .I1(\ap_CS_fsm_reg[4]_0 [0]),
        .I2(\ap_CS_fsm_reg[4] ),
        .I3(\odata_int_reg[0]_1 ),
        .I4(ap_rst_n),
        .O(\odata_int_reg[8]_1 ));
  LUT5 #(
    .INIT(32'h08FF0000)) 
    \odata_int[0]_i_2__1 
       (.I0(Q[8]),
        .I1(\ap_CS_fsm_reg[4]_0 [0]),
        .I2(\ap_CS_fsm_reg[4] ),
        .I3(\odata_int_reg[0]_2 ),
        .I4(ap_rst_n),
        .O(\odata_int_reg[8]_2 ));
  LUT5 #(
    .INIT(32'h08FF0000)) 
    \odata_int[0]_i_2__2 
       (.I0(Q[8]),
        .I1(\ap_CS_fsm_reg[4]_0 [0]),
        .I2(\ap_CS_fsm_reg[4] ),
        .I3(\odata_int_reg[0]_3 ),
        .I4(ap_rst_n),
        .O(\odata_int_reg[8]_3 ));
  LUT5 #(
    .INIT(32'h08FF0000)) 
    \odata_int[0]_i_2__3 
       (.I0(Q[8]),
        .I1(\ap_CS_fsm_reg[4]_0 [0]),
        .I2(\ap_CS_fsm_reg[4] ),
        .I3(\odata_int_reg[0]_4 ),
        .I4(ap_rst_n),
        .O(\odata_int_reg[8]_4 ));
  LUT5 #(
    .INIT(32'h08FF0000)) 
    \odata_int[0]_i_2__4 
       (.I0(Q[8]),
        .I1(\ap_CS_fsm_reg[4]_0 [0]),
        .I2(\ap_CS_fsm_reg[4] ),
        .I3(\odata_int_reg[0]_5 ),
        .I4(ap_rst_n),
        .O(\odata_int_reg[8]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \odata_int[8]_i_1 
       (.I0(Q[8]),
        .I1(\ap_CS_fsm_reg[4]_0 [0]),
        .I2(\ap_CS_fsm_reg[4] ),
        .O(\odata_int_reg[8]_6 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\odata_int_reg[8]_7 [0]),
        .Q(Q[0]),
        .R(reset));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\odata_int_reg[8]_7 [1]),
        .Q(Q[1]),
        .R(reset));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\odata_int_reg[8]_7 [2]),
        .Q(Q[2]),
        .R(reset));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\odata_int_reg[8]_7 [3]),
        .Q(Q[3]),
        .R(reset));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\odata_int_reg[8]_7 [4]),
        .Q(Q[4]),
        .R(reset));
  FDRE \odata_int_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\odata_int_reg[8]_7 [5]),
        .Q(Q[5]),
        .R(reset));
  FDRE \odata_int_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(\odata_int_reg[8]_7 [6]),
        .Q(Q[6]),
        .R(reset));
  FDRE \odata_int_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(\odata_int_reg[8]_7 [7]),
        .Q(Q[7]),
        .R(reset));
  FDRE \odata_int_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(\odata_int_reg[8]_7 [8]),
        .Q(Q[8]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf_35
   (SR,
    Q,
    \odata_int_reg[8]_0 ,
    ap_rst_n,
    m_axis_video_TREADY,
    \ireg_reg[0] ,
    D,
    ap_clk);
  output [0:0]SR;
  output [8:0]Q;
  output [0:0]\odata_int_reg[8]_0 ;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input [0:0]\ireg_reg[0] ;
  input [8:0]D;
  input ap_clk;

  wire [8:0]D;
  wire [8:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]\ireg_reg[0] ;
  wire m_axis_video_TREADY;
  wire \odata_int[7]_i_2_n_1 ;
  wire [0:0]\odata_int_reg[8]_0 ;

  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[8]_i_1__0 
       (.I0(Q[8]),
        .I1(m_axis_video_TREADY),
        .I2(\ireg_reg[0] ),
        .I3(ap_rst_n),
        .O(\odata_int_reg[8]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \odata_int[7]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \odata_int[7]_i_2 
       (.I0(m_axis_video_TREADY),
        .I1(Q[8]),
        .O(\odata_int[7]_i_2_n_1 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_1 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_1 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_1 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_1 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_1 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \odata_int_reg[5] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_1 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \odata_int_reg[6] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_1 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \odata_int_reg[7] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_1 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \odata_int_reg[8] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_1 ),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0
   (\odata_int_reg[1]_0 ,
    s_axis_video_TUSER_int,
    p_0_in,
    s_axis_video_TVALID,
    vld_in,
    s_axis_video_TUSER,
    \odata_int_reg[0]_0 ,
    \odata_int_reg[0]_1 ,
    reset,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output s_axis_video_TUSER_int;
  input p_0_in;
  input s_axis_video_TVALID;
  input vld_in;
  input [0:0]s_axis_video_TUSER;
  input \odata_int_reg[0]_0 ;
  input \odata_int_reg[0]_1 ;
  input reset;
  input ap_clk;

  wire ap_clk;
  wire \odata_int[0]_i_1_n_1 ;
  wire \odata_int[1]_i_1_n_1 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[0]_1 ;
  wire \odata_int_reg[1]_0 ;
  wire p_0_in;
  wire reset;
  wire [0:0]s_axis_video_TUSER;
  wire s_axis_video_TUSER_int;
  wire s_axis_video_TVALID;
  wire vld_in;

  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \odata_int[0]_i_1 
       (.I0(s_axis_video_TUSER),
        .I1(p_0_in),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\odata_int_reg[0]_1 ),
        .I4(s_axis_video_TUSER_int),
        .O(\odata_int[0]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(s_axis_video_TVALID),
        .I2(vld_in),
        .I3(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_1 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_1 ),
        .Q(s_axis_video_TUSER_int),
        .R(reset));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_1 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_13
   (\odata_int_reg[1]_0 ,
    s_axis_video_TSTRB_int,
    p_0_in,
    s_axis_video_TVALID,
    vld_in,
    s_axis_video_TSTRB,
    \odata_int_reg[0]_0 ,
    \odata_int_reg[0]_1 ,
    reset,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output s_axis_video_TSTRB_int;
  input p_0_in;
  input s_axis_video_TVALID;
  input vld_in;
  input [0:0]s_axis_video_TSTRB;
  input \odata_int_reg[0]_0 ;
  input \odata_int_reg[0]_1 ;
  input reset;
  input ap_clk;

  wire ap_clk;
  wire \odata_int[0]_i_1_n_1 ;
  wire \odata_int[1]_i_1_n_1 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[0]_1 ;
  wire \odata_int_reg[1]_0 ;
  wire p_0_in;
  wire reset;
  wire [0:0]s_axis_video_TSTRB;
  wire s_axis_video_TSTRB_int;
  wire s_axis_video_TVALID;
  wire vld_in;

  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \odata_int[0]_i_1 
       (.I0(s_axis_video_TSTRB),
        .I1(p_0_in),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\odata_int_reg[0]_1 ),
        .I4(s_axis_video_TSTRB_int),
        .O(\odata_int[0]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(s_axis_video_TVALID),
        .I2(vld_in),
        .I3(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_1 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_1 ),
        .Q(s_axis_video_TSTRB_int),
        .R(reset));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_1 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_15
   (\odata_int_reg[1]_0 ,
    s_axis_video_TLAST_int,
    p_0_in,
    s_axis_video_TVALID,
    vld_in,
    s_axis_video_TLAST,
    \odata_int_reg[0]_0 ,
    \odata_int_reg[0]_1 ,
    reset,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output s_axis_video_TLAST_int;
  input p_0_in;
  input s_axis_video_TVALID;
  input vld_in;
  input [0:0]s_axis_video_TLAST;
  input \odata_int_reg[0]_0 ;
  input \odata_int_reg[0]_1 ;
  input reset;
  input ap_clk;

  wire ap_clk;
  wire \odata_int[0]_i_1_n_1 ;
  wire \odata_int[1]_i_1_n_1 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[0]_1 ;
  wire \odata_int_reg[1]_0 ;
  wire p_0_in;
  wire reset;
  wire [0:0]s_axis_video_TLAST;
  wire s_axis_video_TLAST_int;
  wire s_axis_video_TVALID;
  wire vld_in;

  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \odata_int[0]_i_1 
       (.I0(s_axis_video_TLAST),
        .I1(p_0_in),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\odata_int_reg[0]_1 ),
        .I4(s_axis_video_TLAST_int),
        .O(\odata_int[0]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(s_axis_video_TVALID),
        .I2(vld_in),
        .I3(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_1 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_1 ),
        .Q(s_axis_video_TLAST_int),
        .R(reset));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_1 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_17
   (\odata_int_reg[1]_0 ,
    s_axis_video_TKEEP_int,
    p_0_in,
    s_axis_video_TVALID,
    vld_in,
    s_axis_video_TKEEP,
    \odata_int_reg[0]_0 ,
    \odata_int_reg[0]_1 ,
    reset,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output s_axis_video_TKEEP_int;
  input p_0_in;
  input s_axis_video_TVALID;
  input vld_in;
  input [0:0]s_axis_video_TKEEP;
  input \odata_int_reg[0]_0 ;
  input \odata_int_reg[0]_1 ;
  input reset;
  input ap_clk;

  wire ap_clk;
  wire \odata_int[0]_i_1_n_1 ;
  wire \odata_int[1]_i_1_n_1 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[0]_1 ;
  wire \odata_int_reg[1]_0 ;
  wire p_0_in;
  wire reset;
  wire [0:0]s_axis_video_TKEEP;
  wire s_axis_video_TKEEP_int;
  wire s_axis_video_TVALID;
  wire vld_in;

  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \odata_int[0]_i_1 
       (.I0(s_axis_video_TKEEP),
        .I1(p_0_in),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\odata_int_reg[0]_1 ),
        .I4(s_axis_video_TKEEP_int),
        .O(\odata_int[0]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(s_axis_video_TVALID),
        .I2(vld_in),
        .I3(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_1 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_1 ),
        .Q(s_axis_video_TKEEP_int),
        .R(reset));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_1 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_19
   (\odata_int_reg[1]_0 ,
    s_axis_video_TID_int,
    p_0_in,
    s_axis_video_TVALID,
    vld_in,
    s_axis_video_TID,
    \odata_int_reg[0]_0 ,
    \odata_int_reg[0]_1 ,
    reset,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output s_axis_video_TID_int;
  input p_0_in;
  input s_axis_video_TVALID;
  input vld_in;
  input [0:0]s_axis_video_TID;
  input \odata_int_reg[0]_0 ;
  input \odata_int_reg[0]_1 ;
  input reset;
  input ap_clk;

  wire ap_clk;
  wire \odata_int[0]_i_1_n_1 ;
  wire \odata_int[1]_i_1_n_1 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[0]_1 ;
  wire \odata_int_reg[1]_0 ;
  wire p_0_in;
  wire reset;
  wire [0:0]s_axis_video_TID;
  wire s_axis_video_TID_int;
  wire s_axis_video_TVALID;
  wire vld_in;

  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \odata_int[0]_i_1 
       (.I0(s_axis_video_TID),
        .I1(p_0_in),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\odata_int_reg[0]_1 ),
        .I4(s_axis_video_TID_int),
        .O(\odata_int[0]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(s_axis_video_TVALID),
        .I2(vld_in),
        .I3(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_1 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_1 ),
        .Q(s_axis_video_TID_int),
        .R(reset));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_1 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_21
   (\odata_int_reg[1]_0 ,
    s_axis_video_TDEST_int,
    p_0_in,
    s_axis_video_TVALID,
    vld_in,
    s_axis_video_TDEST,
    \odata_int_reg[0]_0 ,
    \odata_int_reg[0]_1 ,
    reset,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output s_axis_video_TDEST_int;
  input p_0_in;
  input s_axis_video_TVALID;
  input vld_in;
  input [0:0]s_axis_video_TDEST;
  input \odata_int_reg[0]_0 ;
  input \odata_int_reg[0]_1 ;
  input reset;
  input ap_clk;

  wire ap_clk;
  wire \odata_int[0]_i_1_n_1 ;
  wire \odata_int[1]_i_1_n_1 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[0]_1 ;
  wire \odata_int_reg[1]_0 ;
  wire p_0_in;
  wire reset;
  wire [0:0]s_axis_video_TDEST;
  wire s_axis_video_TDEST_int;
  wire s_axis_video_TVALID;
  wire vld_in;

  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \odata_int[0]_i_1 
       (.I0(s_axis_video_TDEST),
        .I1(p_0_in),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\odata_int_reg[0]_1 ),
        .I4(s_axis_video_TDEST_int),
        .O(\odata_int[0]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(s_axis_video_TVALID),
        .I2(vld_in),
        .I3(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_1 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_1 ),
        .Q(s_axis_video_TDEST_int),
        .R(reset));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_1 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_23
   (\odata_int_reg[1]_0 ,
    m_axis_video_TUSER,
    ap_rst_n,
    m_axis_video_TREADY,
    p_0_in,
    vld_in,
    s_axis_video_TUSER_int,
    \odata_int_reg[0]_0 ,
    reset,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output [0:0]m_axis_video_TUSER;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input p_0_in;
  input vld_in;
  input s_axis_video_TUSER_int;
  input \odata_int_reg[0]_0 ;
  input reset;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire m_axis_video_TREADY;
  wire [0:0]m_axis_video_TUSER;
  wire \odata_int[0]_i_1_n_1 ;
  wire \odata_int[0]_i_2__7_n_1 ;
  wire \odata_int[1]_i_1_n_1 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[1]_0 ;
  wire p_0_in;
  wire reset;
  wire s_axis_video_TUSER_int;
  wire vld_in;

  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \odata_int[0]_i_1 
       (.I0(s_axis_video_TUSER_int),
        .I1(p_0_in),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\odata_int[0]_i_2__7_n_1 ),
        .I4(m_axis_video_TUSER),
        .O(\odata_int[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \odata_int[0]_i_2__7 
       (.I0(ap_rst_n),
        .I1(m_axis_video_TREADY),
        .I2(\odata_int_reg[1]_0 ),
        .O(\odata_int[0]_i_2__7_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(vld_in),
        .I2(m_axis_video_TREADY),
        .I3(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_1 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_1 ),
        .Q(m_axis_video_TUSER),
        .R(reset));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_1 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_25
   (\odata_int_reg[1]_0 ,
    m_axis_video_TSTRB,
    ap_rst_n,
    m_axis_video_TREADY,
    p_0_in,
    vld_in,
    s_axis_video_TSTRB_int,
    \odata_int_reg[0]_0 ,
    reset,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output [0:0]m_axis_video_TSTRB;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input p_0_in;
  input vld_in;
  input s_axis_video_TSTRB_int;
  input \odata_int_reg[0]_0 ;
  input reset;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire m_axis_video_TREADY;
  wire [0:0]m_axis_video_TSTRB;
  wire \odata_int[0]_i_1_n_1 ;
  wire \odata_int[0]_i_2__6_n_1 ;
  wire \odata_int[1]_i_1_n_1 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[1]_0 ;
  wire p_0_in;
  wire reset;
  wire s_axis_video_TSTRB_int;
  wire vld_in;

  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \odata_int[0]_i_1 
       (.I0(s_axis_video_TSTRB_int),
        .I1(p_0_in),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\odata_int[0]_i_2__6_n_1 ),
        .I4(m_axis_video_TSTRB),
        .O(\odata_int[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \odata_int[0]_i_2__6 
       (.I0(ap_rst_n),
        .I1(m_axis_video_TREADY),
        .I2(\odata_int_reg[1]_0 ),
        .O(\odata_int[0]_i_2__6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(vld_in),
        .I2(m_axis_video_TREADY),
        .I3(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_1 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_1 ),
        .Q(m_axis_video_TSTRB),
        .R(reset));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_1 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_27
   (\odata_int_reg[1]_0 ,
    m_axis_video_TLAST,
    ap_rst_n,
    m_axis_video_TREADY,
    p_0_in,
    vld_in,
    s_axis_video_TLAST_int,
    \odata_int_reg[0]_0 ,
    reset,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output [0:0]m_axis_video_TLAST;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input p_0_in;
  input vld_in;
  input s_axis_video_TLAST_int;
  input \odata_int_reg[0]_0 ;
  input reset;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]m_axis_video_TLAST;
  wire m_axis_video_TREADY;
  wire \odata_int[0]_i_1_n_1 ;
  wire \odata_int[0]_i_2__8_n_1 ;
  wire \odata_int[1]_i_1_n_1 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[1]_0 ;
  wire p_0_in;
  wire reset;
  wire s_axis_video_TLAST_int;
  wire vld_in;

  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \odata_int[0]_i_1 
       (.I0(s_axis_video_TLAST_int),
        .I1(p_0_in),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\odata_int[0]_i_2__8_n_1 ),
        .I4(m_axis_video_TLAST),
        .O(\odata_int[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \odata_int[0]_i_2__8 
       (.I0(ap_rst_n),
        .I1(m_axis_video_TREADY),
        .I2(\odata_int_reg[1]_0 ),
        .O(\odata_int[0]_i_2__8_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(vld_in),
        .I2(m_axis_video_TREADY),
        .I3(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_1 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_1 ),
        .Q(m_axis_video_TLAST),
        .R(reset));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_1 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_29
   (\odata_int_reg[1]_0 ,
    m_axis_video_TKEEP,
    ap_rst_n,
    m_axis_video_TREADY,
    p_0_in,
    vld_in,
    s_axis_video_TKEEP_int,
    \odata_int_reg[0]_0 ,
    reset,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output [0:0]m_axis_video_TKEEP;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input p_0_in;
  input vld_in;
  input s_axis_video_TKEEP_int;
  input \odata_int_reg[0]_0 ;
  input reset;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]m_axis_video_TKEEP;
  wire m_axis_video_TREADY;
  wire \odata_int[0]_i_1_n_1 ;
  wire \odata_int[0]_i_2__5_n_1 ;
  wire \odata_int[1]_i_1_n_1 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[1]_0 ;
  wire p_0_in;
  wire reset;
  wire s_axis_video_TKEEP_int;
  wire vld_in;

  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \odata_int[0]_i_1 
       (.I0(s_axis_video_TKEEP_int),
        .I1(p_0_in),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\odata_int[0]_i_2__5_n_1 ),
        .I4(m_axis_video_TKEEP),
        .O(\odata_int[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \odata_int[0]_i_2__5 
       (.I0(ap_rst_n),
        .I1(m_axis_video_TREADY),
        .I2(\odata_int_reg[1]_0 ),
        .O(\odata_int[0]_i_2__5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(vld_in),
        .I2(m_axis_video_TREADY),
        .I3(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_1 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_1 ),
        .Q(m_axis_video_TKEEP),
        .R(reset));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_1 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_31
   (\odata_int_reg[1]_0 ,
    m_axis_video_TID,
    ap_rst_n,
    m_axis_video_TREADY,
    p_0_in,
    vld_in,
    s_axis_video_TID_int,
    \odata_int_reg[0]_0 ,
    reset,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output [0:0]m_axis_video_TID;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input p_0_in;
  input vld_in;
  input s_axis_video_TID_int;
  input \odata_int_reg[0]_0 ;
  input reset;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]m_axis_video_TID;
  wire m_axis_video_TREADY;
  wire \odata_int[0]_i_1_n_1 ;
  wire \odata_int[0]_i_2__9_n_1 ;
  wire \odata_int[1]_i_1_n_1 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[1]_0 ;
  wire p_0_in;
  wire reset;
  wire s_axis_video_TID_int;
  wire vld_in;

  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \odata_int[0]_i_1 
       (.I0(s_axis_video_TID_int),
        .I1(p_0_in),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\odata_int[0]_i_2__9_n_1 ),
        .I4(m_axis_video_TID),
        .O(\odata_int[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \odata_int[0]_i_2__9 
       (.I0(ap_rst_n),
        .I1(m_axis_video_TREADY),
        .I2(\odata_int_reg[1]_0 ),
        .O(\odata_int[0]_i_2__9_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(vld_in),
        .I2(m_axis_video_TREADY),
        .I3(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_1 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_1 ),
        .Q(m_axis_video_TID),
        .R(reset));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_1 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_33
   (\odata_int_reg[1]_0 ,
    m_axis_video_TDEST,
    ap_rst_n,
    m_axis_video_TREADY,
    p_0_in,
    vld_in,
    s_axis_video_TDEST_int,
    \odata_int_reg[0]_0 ,
    reset,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output [0:0]m_axis_video_TDEST;
  input ap_rst_n;
  input m_axis_video_TREADY;
  input p_0_in;
  input vld_in;
  input s_axis_video_TDEST_int;
  input \odata_int_reg[0]_0 ;
  input reset;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]m_axis_video_TDEST;
  wire m_axis_video_TREADY;
  wire \odata_int[0]_i_1_n_1 ;
  wire \odata_int[0]_i_2__10_n_1 ;
  wire \odata_int[1]_i_1_n_1 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[1]_0 ;
  wire p_0_in;
  wire reset;
  wire s_axis_video_TDEST_int;
  wire vld_in;

  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \odata_int[0]_i_1 
       (.I0(s_axis_video_TDEST_int),
        .I1(p_0_in),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\odata_int[0]_i_2__10_n_1 ),
        .I4(m_axis_video_TDEST),
        .O(\odata_int[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \odata_int[0]_i_2__10 
       (.I0(ap_rst_n),
        .I1(m_axis_video_TREADY),
        .I2(\odata_int_reg[1]_0 ),
        .O(\odata_int[0]_i_2__10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(vld_in),
        .I2(m_axis_video_TREADY),
        .I3(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_1 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_1 ),
        .Q(m_axis_video_TDEST),
        .R(reset));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_1 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
