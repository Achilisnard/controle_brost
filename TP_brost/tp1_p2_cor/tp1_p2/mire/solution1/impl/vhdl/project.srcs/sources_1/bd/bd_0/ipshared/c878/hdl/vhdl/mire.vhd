-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mire is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    mode_V : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axis_video_TDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
    m_axis_video_TVALID : OUT STD_LOGIC;
    m_axis_video_TREADY : IN STD_LOGIC;
    m_axis_video_TKEEP : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axis_video_TSTRB : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axis_video_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axis_video_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axis_video_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axis_video_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0);
    hsize_in : IN STD_LOGIC_VECTOR (31 downto 0);
    vsize_in : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of mire is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "mire,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.510000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=12,HLS_SYN_FF=513,HLS_SYN_LUT=663,HLS_VERSION=2019_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_lv63_CCCCCCCD : STD_LOGIC_VECTOR (62 downto 0) := "000000000000000000000000000000011001100110011001100110011001101";
    constant ap_const_lv32_23 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100011";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal m_axis_video_TDATA_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln301_reg_397 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln301_reg_397_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal icmp_ln301_reg_397_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_reg_123 : STD_LOGIC_VECTOR (63 downto 0);
    signal val_assign_reg_134 : STD_LOGIC_VECTOR (30 downto 0);
    signal val_assign_1_reg_145 : STD_LOGIC_VECTOR (30 downto 0);
    signal add_ln22_fu_168_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln22_reg_372 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln879_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln879_reg_377 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln879_1_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln879_1_reg_381 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln879_2_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln879_2_reg_386 : STD_LOGIC_VECTOR (0 downto 0);
    signal bound_fu_200_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bound_reg_392 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln301_fu_226_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_io : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal add_ln301_fu_231_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal select_ln301_fu_237_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal select_ln301_reg_406 : STD_LOGIC_VECTOR (30 downto 0);
    signal select_ln301_1_fu_251_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal select_ln301_1_reg_412 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_last_V_fu_282_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_last_V_reg_419 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_last_V_reg_419_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln34_fu_291_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln34_reg_424 : STD_LOGIC_VECTOR (7 downto 0);
    signal j_fu_298_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_reg_434 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_user_V_fu_325_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_user_V_reg_439 : STD_LOGIC_VECTOR (0 downto 0);
    signal mul_ln28_fu_334_p2 : STD_LOGIC_VECTOR (62 downto 0);
    signal mul_ln28_reg_444 : STD_LOGIC_VECTOR (62 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_phi_mux_val_assign_phi_fu_138_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_phi_mux_tmp_data_V_phi_fu_160_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln28_fu_358_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_phi_reg_pp0_iter2_tmp_data_V_reg_156 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_phi_reg_pp0_iter0_tmp_data_V_reg_156 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_phi_reg_pp0_iter1_tmp_data_V_reg_156 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal bound_fu_200_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bound_fu_200_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal video_data_V_fu_206_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln301_fu_217_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln15_fu_221_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln12_fu_245_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln301_fu_259_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal video_data_V_1_fu_210_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln37_fu_263_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln301_2_fu_278_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal video_data_V_2_fu_287_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln301_2_fu_270_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal mul_ln301_fu_307_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal mul_ln301_fu_307_p2 : STD_LOGIC_VECTOR (62 downto 0);
    signal or_ln17_fu_321_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal mul_ln28_fu_334_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_1_fu_340_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln28_fu_347_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln28_fu_352_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal regslice_both_m_axis_video_V_data_V_U_apdone_blk : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal m_axis_video_TVALID_int : STD_LOGIC;
    signal m_axis_video_TREADY_int : STD_LOGIC;
    signal regslice_both_m_axis_video_V_data_V_U_vld_out : STD_LOGIC;
    signal regslice_both_m_axis_video_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_m_axis_video_V_keep_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_m_axis_video_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_m_axis_video_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_m_axis_video_V_strb_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_m_axis_video_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_m_axis_video_V_user_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_m_axis_video_V_user_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_m_axis_video_V_user_V_U_vld_out : STD_LOGIC;
    signal regslice_both_m_axis_video_V_last_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_m_axis_video_V_last_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_m_axis_video_V_last_V_U_vld_out : STD_LOGIC;
    signal regslice_both_m_axis_video_V_id_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_m_axis_video_V_id_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_m_axis_video_V_id_V_U_vld_out : STD_LOGIC;
    signal regslice_both_m_axis_video_V_dest_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_m_axis_video_V_dest_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_m_axis_video_V_dest_V_U_vld_out : STD_LOGIC;
    signal bound_fu_200_p00 : STD_LOGIC_VECTOR (63 downto 0);
    signal bound_fu_200_p10 : STD_LOGIC_VECTOR (63 downto 0);
    signal mul_ln28_fu_334_p10 : STD_LOGIC_VECTOR (62 downto 0);
    signal mul_ln301_fu_307_p10 : STD_LOGIC_VECTOR (62 downto 0);
    signal ap_condition_160 : BOOLEAN;

    component regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    regslice_both_m_axis_video_V_data_V_U : component regslice_both
    generic map (
        DataWidth => 8)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => ap_phi_mux_tmp_data_V_phi_fu_160_p4,
        vld_in => m_axis_video_TVALID_int,
        ack_in => m_axis_video_TREADY_int,
        data_out => m_axis_video_TDATA,
        vld_out => regslice_both_m_axis_video_V_data_V_U_vld_out,
        ack_out => m_axis_video_TREADY,
        apdone_blk => regslice_both_m_axis_video_V_data_V_U_apdone_blk);

    regslice_both_m_axis_video_V_keep_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => ap_const_lv1_0,
        vld_in => m_axis_video_TVALID_int,
        ack_in => regslice_both_m_axis_video_V_keep_V_U_ack_in_dummy,
        data_out => m_axis_video_TKEEP,
        vld_out => regslice_both_m_axis_video_V_keep_V_U_vld_out,
        ack_out => m_axis_video_TREADY,
        apdone_blk => regslice_both_m_axis_video_V_keep_V_U_apdone_blk);

    regslice_both_m_axis_video_V_strb_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => ap_const_lv1_0,
        vld_in => m_axis_video_TVALID_int,
        ack_in => regslice_both_m_axis_video_V_strb_V_U_ack_in_dummy,
        data_out => m_axis_video_TSTRB,
        vld_out => regslice_both_m_axis_video_V_strb_V_U_vld_out,
        ack_out => m_axis_video_TREADY,
        apdone_blk => regslice_both_m_axis_video_V_strb_V_U_apdone_blk);

    regslice_both_m_axis_video_V_user_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => tmp_user_V_reg_439,
        vld_in => m_axis_video_TVALID_int,
        ack_in => regslice_both_m_axis_video_V_user_V_U_ack_in_dummy,
        data_out => m_axis_video_TUSER,
        vld_out => regslice_both_m_axis_video_V_user_V_U_vld_out,
        ack_out => m_axis_video_TREADY,
        apdone_blk => regslice_both_m_axis_video_V_user_V_U_apdone_blk);

    regslice_both_m_axis_video_V_last_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => tmp_last_V_reg_419_pp0_iter1_reg,
        vld_in => m_axis_video_TVALID_int,
        ack_in => regslice_both_m_axis_video_V_last_V_U_ack_in_dummy,
        data_out => m_axis_video_TLAST,
        vld_out => regslice_both_m_axis_video_V_last_V_U_vld_out,
        ack_out => m_axis_video_TREADY,
        apdone_blk => regslice_both_m_axis_video_V_last_V_U_apdone_blk);

    regslice_both_m_axis_video_V_id_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => ap_const_lv1_0,
        vld_in => m_axis_video_TVALID_int,
        ack_in => regslice_both_m_axis_video_V_id_V_U_ack_in_dummy,
        data_out => m_axis_video_TID,
        vld_out => regslice_both_m_axis_video_V_id_V_U_vld_out,
        ack_out => m_axis_video_TREADY,
        apdone_blk => regslice_both_m_axis_video_V_id_V_U_apdone_blk);

    regslice_both_m_axis_video_V_dest_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => ap_const_lv1_0,
        vld_in => m_axis_video_TVALID_int,
        ack_in => regslice_both_m_axis_video_V_dest_V_U_ack_in_dummy,
        data_out => m_axis_video_TDEST,
        vld_out => regslice_both_m_axis_video_V_dest_V_U_vld_out,
        ack_out => m_axis_video_TREADY,
        apdone_blk => regslice_both_m_axis_video_V_dest_V_U_apdone_blk);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_phi_reg_pp0_iter2_tmp_data_V_reg_156_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_160)) then
                if (((icmp_ln879_reg_377 = ap_const_lv1_0) and (icmp_ln301_reg_397 = ap_const_lv1_0))) then 
                    ap_phi_reg_pp0_iter2_tmp_data_V_reg_156 <= select_ln34_reg_424;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter2_tmp_data_V_reg_156 <= ap_phi_reg_pp0_iter1_tmp_data_V_reg_156;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_reg_123_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln301_fu_226_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                indvar_flatten_reg_123 <= add_ln301_fu_231_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                indvar_flatten_reg_123 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;

    val_assign_1_reg_145_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln301_fu_226_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                val_assign_1_reg_145 <= j_fu_298_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                val_assign_1_reg_145 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    val_assign_reg_134_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln301_reg_397 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                val_assign_reg_134 <= select_ln301_1_reg_412;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                val_assign_reg_134 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                add_ln22_reg_372 <= add_ln22_fu_168_p2;
                bound_reg_392 <= bound_fu_200_p2;
                icmp_ln879_1_reg_381 <= icmp_ln879_1_fu_180_p2;
                icmp_ln879_2_reg_386 <= icmp_ln879_2_fu_186_p2;
                icmp_ln879_reg_377 <= icmp_ln879_fu_174_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then
                ap_phi_reg_pp0_iter1_tmp_data_V_reg_156 <= ap_phi_reg_pp0_iter0_tmp_data_V_reg_156;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln301_reg_397 <= icmp_ln301_fu_226_p2;
                icmp_ln301_reg_397_pp0_iter1_reg <= icmp_ln301_reg_397;
                tmp_last_V_reg_419_pp0_iter1_reg <= tmp_last_V_reg_419;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                icmp_ln301_reg_397_pp0_iter2_reg <= icmp_ln301_reg_397_pp0_iter1_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln879_reg_377 = ap_const_lv1_1) and (icmp_ln301_reg_397 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                mul_ln28_reg_444 <= mul_ln28_fu_334_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln301_fu_226_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then
                select_ln301_1_reg_412 <= select_ln301_1_fu_251_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln301_fu_226_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                select_ln301_reg_406 <= select_ln301_fu_237_p3;
                tmp_last_V_reg_419 <= tmp_last_V_fu_282_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln301_fu_226_p2 = ap_const_lv1_0) and (icmp_ln879_reg_377 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                select_ln34_reg_424 <= select_ln34_fu_291_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln301_reg_397 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_reg_434 <= mul_ln301_fu_307_p2(35 downto 35);
                tmp_user_V_reg_439 <= tmp_user_V_fu_325_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, icmp_ln301_fu_226_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter1, ap_CS_fsm_state6, regslice_both_m_axis_video_V_data_V_U_apdone_blk)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((icmp_ln301_fu_226_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) and not(((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) or ((icmp_ln301_fu_226_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state6 => 
                if (((regslice_both_m_axis_video_V_data_V_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln12_fu_245_p2 <= std_logic_vector(unsigned(ap_const_lv31_1) + unsigned(ap_phi_mux_val_assign_phi_fu_138_p4));
    add_ln22_fu_168_p2 <= std_logic_vector(unsigned(hsize_in) + unsigned(ap_const_lv32_FFFFFFFF));
    add_ln301_fu_231_p2 <= std_logic_vector(unsigned(ap_const_lv64_1) + unsigned(indvar_flatten_reg_123));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state6 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_block_state4_io, ap_block_state5_io)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_const_boolean_1 = ap_block_state5_io) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1)) or ((ap_const_boolean_1 = ap_block_state4_io) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_block_state4_io, ap_block_state5_io)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_const_boolean_1 = ap_block_state5_io) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1)) or ((ap_const_boolean_1 = ap_block_state4_io) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_io_assign_proc : process(icmp_ln301_reg_397_pp0_iter1_reg, m_axis_video_TREADY_int)
    begin
                ap_block_state4_io <= ((icmp_ln301_reg_397_pp0_iter1_reg = ap_const_lv1_0) and (m_axis_video_TREADY_int = ap_const_logic_0));
    end process;

        ap_block_state4_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state5_io_assign_proc : process(icmp_ln301_reg_397_pp0_iter2_reg, m_axis_video_TREADY_int)
    begin
                ap_block_state5_io <= ((icmp_ln301_reg_397_pp0_iter2_reg = ap_const_lv1_0) and (m_axis_video_TREADY_int = ap_const_logic_0));
    end process;

        ap_block_state5_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_160_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
                ap_condition_160 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln301_fu_226_p2)
    begin
        if ((icmp_ln301_fu_226_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state6, regslice_both_m_axis_video_V_data_V_U_apdone_blk)
    begin
        if (((regslice_both_m_axis_video_V_data_V_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_tmp_data_V_phi_fu_160_p4_assign_proc : process(icmp_ln301_reg_397_pp0_iter1_reg, icmp_ln879_reg_377, select_ln28_fu_358_p3, ap_phi_reg_pp0_iter2_tmp_data_V_reg_156)
    begin
        if (((icmp_ln879_reg_377 = ap_const_lv1_1) and (icmp_ln301_reg_397_pp0_iter1_reg = ap_const_lv1_0))) then 
            ap_phi_mux_tmp_data_V_phi_fu_160_p4 <= select_ln28_fu_358_p3;
        else 
            ap_phi_mux_tmp_data_V_phi_fu_160_p4 <= ap_phi_reg_pp0_iter2_tmp_data_V_reg_156;
        end if; 
    end process;


    ap_phi_mux_val_assign_phi_fu_138_p4_assign_proc : process(ap_block_pp0_stage0, icmp_ln301_reg_397, val_assign_reg_134, ap_CS_fsm_pp0_stage0, select_ln301_1_reg_412, ap_enable_reg_pp0_iter1)
    begin
        if (((icmp_ln301_reg_397 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            ap_phi_mux_val_assign_phi_fu_138_p4 <= select_ln301_1_reg_412;
        else 
            ap_phi_mux_val_assign_phi_fu_138_p4 <= val_assign_reg_134;
        end if; 
    end process;

    ap_phi_reg_pp0_iter0_tmp_data_V_reg_156 <= "XXXXXXXX";

    ap_ready_assign_proc : process(ap_CS_fsm_state6, regslice_both_m_axis_video_V_data_V_U_apdone_blk)
    begin
        if (((regslice_both_m_axis_video_V_data_V_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    bound_fu_200_p0 <= bound_fu_200_p00(32 - 1 downto 0);
    bound_fu_200_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(hsize_in),64));
    bound_fu_200_p1 <= bound_fu_200_p10(32 - 1 downto 0);
    bound_fu_200_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(vsize_in),64));
    bound_fu_200_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bound_fu_200_p0) * unsigned(bound_fu_200_p1), 64));
    icmp_ln15_fu_221_p2 <= "1" when (signed(zext_ln301_fu_217_p1) < signed(hsize_in)) else "0";
    icmp_ln301_fu_226_p2 <= "1" when (indvar_flatten_reg_123 = bound_reg_392) else "0";
    icmp_ln879_1_fu_180_p2 <= "1" when (mode_V = ap_const_lv2_1) else "0";
    icmp_ln879_2_fu_186_p2 <= "1" when (mode_V = ap_const_lv2_2) else "0";
    icmp_ln879_fu_174_p2 <= "1" when (mode_V = ap_const_lv2_0) else "0";
    j_fu_298_p2 <= std_logic_vector(unsigned(select_ln301_fu_237_p3) + unsigned(ap_const_lv31_1));

    m_axis_video_TDATA_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0, icmp_ln301_reg_397_pp0_iter1_reg, ap_enable_reg_pp0_iter3, icmp_ln301_reg_397_pp0_iter2_reg, m_axis_video_TREADY_int)
    begin
        if ((((icmp_ln301_reg_397_pp0_iter2_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1)) or ((icmp_ln301_reg_397_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)))) then 
            m_axis_video_TDATA_blk_n <= m_axis_video_TREADY_int;
        else 
            m_axis_video_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    m_axis_video_TVALID <= regslice_both_m_axis_video_V_data_V_U_vld_out;

    m_axis_video_TVALID_int_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln301_reg_397_pp0_iter1_reg, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln301_reg_397_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            m_axis_video_TVALID_int <= ap_const_logic_1;
        else 
            m_axis_video_TVALID_int <= ap_const_logic_0;
        end if; 
    end process;

    mul_ln28_fu_334_p1 <= mul_ln28_fu_334_p10(31 - 1 downto 0);
    mul_ln28_fu_334_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln301_reg_406),63));
    mul_ln28_fu_334_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_const_lv63_CCCCCCCD) * unsigned(mul_ln28_fu_334_p1), 63));
    mul_ln301_fu_307_p1 <= mul_ln301_fu_307_p10(31 - 1 downto 0);
    mul_ln301_fu_307_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln301_1_reg_412),63));
    mul_ln301_fu_307_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_const_lv63_CCCCCCCD) * unsigned(mul_ln301_fu_307_p1), 63));
    or_ln17_fu_321_p2 <= (select_ln301_reg_406 or select_ln301_1_reg_412);
    or_ln28_fu_347_p2 <= (tmp_reg_434 or tmp_1_fu_340_p3);
    select_ln28_fu_358_p3 <= 
        ap_const_lv8_FF when (xor_ln28_fu_352_p2(0) = '1') else 
        ap_const_lv8_0;
    select_ln301_1_fu_251_p3 <= 
        ap_phi_mux_val_assign_phi_fu_138_p4 when (icmp_ln15_fu_221_p2(0) = '1') else 
        add_ln12_fu_245_p2;
    select_ln301_2_fu_270_p3 <= 
        video_data_V_1_fu_210_p3 when (icmp_ln15_fu_221_p2(0) = '1') else 
        select_ln37_fu_263_p3;
    select_ln301_fu_237_p3 <= 
        val_assign_1_reg_145 when (icmp_ln15_fu_221_p2(0) = '1') else 
        ap_const_lv31_0;
    select_ln34_fu_291_p3 <= 
        video_data_V_2_fu_287_p1 when (icmp_ln879_1_reg_381(0) = '1') else 
        select_ln301_2_fu_270_p3;
    select_ln37_fu_263_p3 <= 
        trunc_ln301_fu_259_p1 when (icmp_ln879_2_reg_386(0) = '1') else 
        ap_const_lv8_FF;
    tmp_1_fu_340_p3 <= mul_ln28_reg_444(35 downto 35);
    tmp_last_V_fu_282_p2 <= "1" when (zext_ln301_2_fu_278_p1 = add_ln22_reg_372) else "0";
    tmp_user_V_fu_325_p2 <= "1" when (or_ln17_fu_321_p2 = ap_const_lv31_0) else "0";
    trunc_ln301_fu_259_p1 <= add_ln12_fu_245_p2(8 - 1 downto 0);
    video_data_V_1_fu_210_p3 <= 
        video_data_V_fu_206_p1 when (icmp_ln879_2_reg_386(0) = '1') else 
        ap_const_lv8_FF;
    video_data_V_2_fu_287_p1 <= select_ln301_fu_237_p3(8 - 1 downto 0);
    video_data_V_fu_206_p1 <= ap_phi_mux_val_assign_phi_fu_138_p4(8 - 1 downto 0);
    xor_ln28_fu_352_p2 <= (or_ln28_fu_347_p2 xor ap_const_lv1_1);
    zext_ln301_2_fu_278_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln301_fu_237_p3),32));
    zext_ln301_fu_217_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(val_assign_1_reg_145),32));
end behav;