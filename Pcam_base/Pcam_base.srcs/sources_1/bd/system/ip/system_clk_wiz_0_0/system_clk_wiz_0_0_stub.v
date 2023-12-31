// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct 30 16:01:37 2023
// Host        : DESKTOP-Q8QIOJU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {C:/Users/Juliette
//               GAGNEPAIN/Downloads/Pcam_simple/vivado_proj/ZedBoard-FMC-Pcam-Adapter-DEMO.srcs/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_stub.v}
// Design      : system_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module system_clk_wiz_0_0(clk_50, clk_150, clk_200, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_50,clk_150,clk_200,locked,clk_in1" */;
  output clk_50;
  output clk_150;
  output clk_200;
  output locked;
  input clk_in1;
endmodule
