// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Oct 20 15:43:21 2023
// Host        : DESKTOP-Q8QIOJU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {C:/Users/Juliette
//               GAGNEPAIN/Downloads/ZedBoard-FMC-Pcam-Adapter-Dual-Camera-2018.2-1/vivado_proj/ZedBoard-FMC-Pcam-Adapter-DEMO.srcs/sources_1/bd/system/ip/system_rgb2vga_0_0/system_rgb2vga_0_0_stub.v}
// Design      : system_rgb2vga_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "rgb2vga,Vivado 2019.2" *)
module system_rgb2vga_0_0(rgb_pData, rgb_pVDE, rgb_pHSync, rgb_pVSync, 
  PixelClk, vga_pRed, vga_pGreen, vga_pBlue, vga_pHSync, vga_pVSync)
/* synthesis syn_black_box black_box_pad_pin="rgb_pData[23:0],rgb_pVDE,rgb_pHSync,rgb_pVSync,PixelClk,vga_pRed[3:0],vga_pGreen[3:0],vga_pBlue[3:0],vga_pHSync,vga_pVSync" */;
  input [23:0]rgb_pData;
  input rgb_pVDE;
  input rgb_pHSync;
  input rgb_pVSync;
  input PixelClk;
  output [3:0]vga_pRed;
  output [3:0]vga_pGreen;
  output [3:0]vga_pBlue;
  output vga_pHSync;
  output vga_pVSync;
endmodule
