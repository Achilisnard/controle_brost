-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Duplicate183 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    src_data_stream_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    src_data_stream_V_empty_n : IN STD_LOGIC;
    src_data_stream_V_read : OUT STD_LOGIC;
    src_data_stream_V1_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    src_data_stream_V1_empty_n : IN STD_LOGIC;
    src_data_stream_V1_read : OUT STD_LOGIC;
    src_data_stream_V2_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    src_data_stream_V2_empty_n : IN STD_LOGIC;
    src_data_stream_V2_read : OUT STD_LOGIC;
    dst1_data_stream_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst1_data_stream_V_full_n : IN STD_LOGIC;
    dst1_data_stream_V_write : OUT STD_LOGIC;
    dst1_data_stream_V3_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst1_data_stream_V3_full_n : IN STD_LOGIC;
    dst1_data_stream_V3_write : OUT STD_LOGIC;
    dst1_data_stream_V4_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst1_data_stream_V4_full_n : IN STD_LOGIC;
    dst1_data_stream_V4_write : OUT STD_LOGIC;
    dst2_data_stream_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst2_data_stream_V_full_n : IN STD_LOGIC;
    dst2_data_stream_V_write : OUT STD_LOGIC;
    dst2_data_stream_V5_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst2_data_stream_V5_full_n : IN STD_LOGIC;
    dst2_data_stream_V5_write : OUT STD_LOGIC;
    dst2_data_stream_V6_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst2_data_stream_V6_full_n : IN STD_LOGIC;
    dst2_data_stream_V6_write : OUT STD_LOGIC );
end;


architecture behav of Duplicate183 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv9_1E0 : STD_LOGIC_VECTOR (8 downto 0) := "111100000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv10_280 : STD_LOGIC_VECTOR (9 downto 0) := "1010000000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal src_data_stream_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln1558_reg_301 : STD_LOGIC_VECTOR (0 downto 0);
    signal src_data_stream_V1_blk_n : STD_LOGIC;
    signal src_data_stream_V2_blk_n : STD_LOGIC;
    signal dst1_data_stream_V_blk_n : STD_LOGIC;
    signal dst1_data_stream_V3_blk_n : STD_LOGIC;
    signal dst1_data_stream_V4_blk_n : STD_LOGIC;
    signal dst2_data_stream_V_blk_n : STD_LOGIC;
    signal dst2_data_stream_V5_blk_n : STD_LOGIC;
    signal dst2_data_stream_V6_blk_n : STD_LOGIC;
    signal t_V_5_reg_257 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln1557_fu_268_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_V_fu_274_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal i_V_reg_296 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln1558_fu_280_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal j_V_fu_286_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal t_V_reg_246 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1557_fu_268_p2 = ap_const_lv1_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((icmp_ln1557_fu_268_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((icmp_ln1557_fu_268_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    t_V_5_reg_257_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1558_fu_280_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                t_V_5_reg_257 <= j_V_fu_286_p2;
            elsif (((icmp_ln1557_fu_268_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                t_V_5_reg_257 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    t_V_reg_246_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                t_V_reg_246 <= i_V_reg_296;
            elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                t_V_reg_246 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_V_reg_296 <= i_V_fu_274_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln1558_reg_301 <= icmp_ln1558_fu_280_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln1557_fu_268_p2, ap_CS_fsm_state2, icmp_ln1558_fu_280_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1557_fu_268_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln1558_fu_280_p2 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln1558_fu_280_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(src_data_stream_V_empty_n, src_data_stream_V1_empty_n, src_data_stream_V2_empty_n, dst1_data_stream_V_full_n, dst1_data_stream_V3_full_n, dst1_data_stream_V4_full_n, dst2_data_stream_V_full_n, dst2_data_stream_V5_full_n, dst2_data_stream_V6_full_n, ap_enable_reg_pp0_iter1, icmp_ln1558_reg_301)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst2_data_stream_V6_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst2_data_stream_V5_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst2_data_stream_V_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst1_data_stream_V4_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst1_data_stream_V3_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst1_data_stream_V_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (src_data_stream_V2_empty_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (src_data_stream_V1_empty_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (src_data_stream_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(src_data_stream_V_empty_n, src_data_stream_V1_empty_n, src_data_stream_V2_empty_n, dst1_data_stream_V_full_n, dst1_data_stream_V3_full_n, dst1_data_stream_V4_full_n, dst2_data_stream_V_full_n, dst2_data_stream_V5_full_n, dst2_data_stream_V6_full_n, ap_enable_reg_pp0_iter1, icmp_ln1558_reg_301)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst2_data_stream_V6_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst2_data_stream_V5_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst2_data_stream_V_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst1_data_stream_V4_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst1_data_stream_V3_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst1_data_stream_V_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (src_data_stream_V2_empty_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (src_data_stream_V1_empty_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (src_data_stream_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(src_data_stream_V_empty_n, src_data_stream_V1_empty_n, src_data_stream_V2_empty_n, dst1_data_stream_V_full_n, dst1_data_stream_V3_full_n, dst1_data_stream_V4_full_n, dst2_data_stream_V_full_n, dst2_data_stream_V5_full_n, dst2_data_stream_V6_full_n, ap_enable_reg_pp0_iter1, icmp_ln1558_reg_301)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst2_data_stream_V6_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst2_data_stream_V5_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst2_data_stream_V_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst1_data_stream_V4_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst1_data_stream_V3_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst1_data_stream_V_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (src_data_stream_V2_empty_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (src_data_stream_V1_empty_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (src_data_stream_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_pp0_stage0_iter1_assign_proc : process(src_data_stream_V_empty_n, src_data_stream_V1_empty_n, src_data_stream_V2_empty_n, dst1_data_stream_V_full_n, dst1_data_stream_V3_full_n, dst1_data_stream_V4_full_n, dst2_data_stream_V_full_n, dst2_data_stream_V5_full_n, dst2_data_stream_V6_full_n, icmp_ln1558_reg_301)
    begin
                ap_block_state4_pp0_stage0_iter1 <= (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst2_data_stream_V6_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst2_data_stream_V5_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst2_data_stream_V_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst1_data_stream_V4_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst1_data_stream_V3_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (dst1_data_stream_V_full_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (src_data_stream_V2_empty_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (src_data_stream_V1_empty_n = ap_const_logic_0)) or ((icmp_ln1558_reg_301 = ap_const_lv1_0) and (src_data_stream_V_empty_n = ap_const_logic_0)));
    end process;


    ap_condition_pp0_exit_iter0_state3_assign_proc : process(icmp_ln1558_fu_280_p2)
    begin
        if ((icmp_ln1558_fu_280_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, icmp_ln1557_fu_268_p2, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1557_fu_268_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;

    dst1_data_stream_V3_blk_n_assign_proc : process(dst1_data_stream_V3_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln1558_reg_301)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dst1_data_stream_V3_blk_n <= dst1_data_stream_V3_full_n;
        else 
            dst1_data_stream_V3_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dst1_data_stream_V3_din <= src_data_stream_V1_dout;

    dst1_data_stream_V3_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1558_reg_301, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            dst1_data_stream_V3_write <= ap_const_logic_1;
        else 
            dst1_data_stream_V3_write <= ap_const_logic_0;
        end if; 
    end process;


    dst1_data_stream_V4_blk_n_assign_proc : process(dst1_data_stream_V4_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln1558_reg_301)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dst1_data_stream_V4_blk_n <= dst1_data_stream_V4_full_n;
        else 
            dst1_data_stream_V4_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dst1_data_stream_V4_din <= src_data_stream_V2_dout;

    dst1_data_stream_V4_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1558_reg_301, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            dst1_data_stream_V4_write <= ap_const_logic_1;
        else 
            dst1_data_stream_V4_write <= ap_const_logic_0;
        end if; 
    end process;


    dst1_data_stream_V_blk_n_assign_proc : process(dst1_data_stream_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln1558_reg_301)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dst1_data_stream_V_blk_n <= dst1_data_stream_V_full_n;
        else 
            dst1_data_stream_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dst1_data_stream_V_din <= src_data_stream_V_dout;

    dst1_data_stream_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1558_reg_301, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            dst1_data_stream_V_write <= ap_const_logic_1;
        else 
            dst1_data_stream_V_write <= ap_const_logic_0;
        end if; 
    end process;


    dst2_data_stream_V5_blk_n_assign_proc : process(dst2_data_stream_V5_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln1558_reg_301)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dst2_data_stream_V5_blk_n <= dst2_data_stream_V5_full_n;
        else 
            dst2_data_stream_V5_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dst2_data_stream_V5_din <= src_data_stream_V1_dout;

    dst2_data_stream_V5_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1558_reg_301, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            dst2_data_stream_V5_write <= ap_const_logic_1;
        else 
            dst2_data_stream_V5_write <= ap_const_logic_0;
        end if; 
    end process;


    dst2_data_stream_V6_blk_n_assign_proc : process(dst2_data_stream_V6_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln1558_reg_301)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dst2_data_stream_V6_blk_n <= dst2_data_stream_V6_full_n;
        else 
            dst2_data_stream_V6_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dst2_data_stream_V6_din <= src_data_stream_V2_dout;

    dst2_data_stream_V6_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1558_reg_301, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            dst2_data_stream_V6_write <= ap_const_logic_1;
        else 
            dst2_data_stream_V6_write <= ap_const_logic_0;
        end if; 
    end process;


    dst2_data_stream_V_blk_n_assign_proc : process(dst2_data_stream_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln1558_reg_301)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dst2_data_stream_V_blk_n <= dst2_data_stream_V_full_n;
        else 
            dst2_data_stream_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dst2_data_stream_V_din <= src_data_stream_V_dout;

    dst2_data_stream_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1558_reg_301, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            dst2_data_stream_V_write <= ap_const_logic_1;
        else 
            dst2_data_stream_V_write <= ap_const_logic_0;
        end if; 
    end process;

    i_V_fu_274_p2 <= std_logic_vector(unsigned(t_V_reg_246) + unsigned(ap_const_lv9_1));
    icmp_ln1557_fu_268_p2 <= "1" when (t_V_reg_246 = ap_const_lv9_1E0) else "0";
    icmp_ln1558_fu_280_p2 <= "1" when (t_V_5_reg_257 = ap_const_lv10_280) else "0";

    internal_ap_ready_assign_proc : process(icmp_ln1557_fu_268_p2, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1557_fu_268_p2 = ap_const_lv1_1))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    j_V_fu_286_p2 <= std_logic_vector(unsigned(t_V_5_reg_257) + unsigned(ap_const_lv10_1));

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;


    src_data_stream_V1_blk_n_assign_proc : process(src_data_stream_V1_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln1558_reg_301)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            src_data_stream_V1_blk_n <= src_data_stream_V1_empty_n;
        else 
            src_data_stream_V1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    src_data_stream_V1_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1558_reg_301, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            src_data_stream_V1_read <= ap_const_logic_1;
        else 
            src_data_stream_V1_read <= ap_const_logic_0;
        end if; 
    end process;


    src_data_stream_V2_blk_n_assign_proc : process(src_data_stream_V2_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln1558_reg_301)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            src_data_stream_V2_blk_n <= src_data_stream_V2_empty_n;
        else 
            src_data_stream_V2_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    src_data_stream_V2_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1558_reg_301, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            src_data_stream_V2_read <= ap_const_logic_1;
        else 
            src_data_stream_V2_read <= ap_const_logic_0;
        end if; 
    end process;


    src_data_stream_V_blk_n_assign_proc : process(src_data_stream_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln1558_reg_301)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            src_data_stream_V_blk_n <= src_data_stream_V_empty_n;
        else 
            src_data_stream_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    src_data_stream_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1558_reg_301, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1558_reg_301 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            src_data_stream_V_read <= ap_const_logic_1;
        else 
            src_data_stream_V_read <= ap_const_logic_0;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
