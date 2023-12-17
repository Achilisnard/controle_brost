-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Dec  7 16:03:48 2023
-- Host        : DESKTOP-Q8QIOJU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/vivado_proj/Pcam_Adapter_base/Pcam_Adapter_base.srcs/sources_1/bd/system/ip/system_util_vector_logic_0_0/system_util_vector_logic_0_0_stub.vhdl
-- Design      : system_util_vector_logic_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_util_vector_logic_0_0 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end system_util_vector_logic_0_0;

architecture stub of system_util_vector_logic_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[0:0],Res[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.2";
begin
end;
