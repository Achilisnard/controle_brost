// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Dec  8 11:39:17 2023
// Host        : DESKTOP-Q8QIOJU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/vivado_proj/Pcam_Adapter_base/Pcam_Adapter_base.srcs/sources_1/bd/system/ip/system_incrust_0_0/system_incrust_0_0_stub.v
// Design      : system_incrust_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "incrust,Vivado 2019.2" *)
module system_incrust_0_0(ap_clk, ap_rst_n, s_axis_video_TVALID, 
  s_axis_video_TREADY, s_axis_video_TDATA, s_axis_video_TDEST, s_axis_video_TKEEP, 
  s_axis_video_TSTRB, s_axis_video_TUSER, s_axis_video_TLAST, s_axis_video_TID, 
  m_axis_video_TVALID, m_axis_video_TREADY, m_axis_video_TDATA, m_axis_video_TDEST, 
  m_axis_video_TKEEP, m_axis_video_TSTRB, m_axis_video_TUSER, m_axis_video_TLAST, 
  m_axis_video_TID, hsize_in, vsize_in, start_x, start_y)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,s_axis_video_TVALID,s_axis_video_TREADY,s_axis_video_TDATA[23:0],s_axis_video_TDEST[0:0],s_axis_video_TKEEP[2:0],s_axis_video_TSTRB[2:0],s_axis_video_TUSER[0:0],s_axis_video_TLAST[0:0],s_axis_video_TID[0:0],m_axis_video_TVALID,m_axis_video_TREADY,m_axis_video_TDATA[23:0],m_axis_video_TDEST[0:0],m_axis_video_TKEEP[2:0],m_axis_video_TSTRB[2:0],m_axis_video_TUSER[0:0],m_axis_video_TLAST[0:0],m_axis_video_TID[0:0],hsize_in[31:0],vsize_in[31:0],start_x[31:0],start_y[31:0]" */;
  input ap_clk;
  input ap_rst_n;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  input [23:0]s_axis_video_TDATA;
  input [0:0]s_axis_video_TDEST;
  input [2:0]s_axis_video_TKEEP;
  input [2:0]s_axis_video_TSTRB;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input [0:0]s_axis_video_TID;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;
  output [23:0]m_axis_video_TDATA;
  output [0:0]m_axis_video_TDEST;
  output [2:0]m_axis_video_TKEEP;
  output [2:0]m_axis_video_TSTRB;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [0:0]m_axis_video_TID;
  input [31:0]hsize_in;
  input [31:0]vsize_in;
  input [31:0]start_x;
  input [31:0]start_y;
endmodule
