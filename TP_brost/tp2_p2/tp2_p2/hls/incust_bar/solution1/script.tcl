############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project incust_bar
set_top incust_bar
add_files incust_bar/incrust_bar.cpp
add_files incust_bar/bar.h
open_solution "solution1"
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl vhdl -version 1.0.0
#source "./incust_bar/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl vhdl -format ip_catalog -version "1.0.0"
