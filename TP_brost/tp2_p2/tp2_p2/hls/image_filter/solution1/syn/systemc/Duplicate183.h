// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Duplicate183_HH_
#define _Duplicate183_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Duplicate183 : public sc_module {
    // Port declarations 37
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<8> > src_data_stream_V_dout;
    sc_in< sc_logic > src_data_stream_V_empty_n;
    sc_out< sc_logic > src_data_stream_V_read;
    sc_in< sc_lv<8> > src_data_stream_V1_dout;
    sc_in< sc_logic > src_data_stream_V1_empty_n;
    sc_out< sc_logic > src_data_stream_V1_read;
    sc_in< sc_lv<8> > src_data_stream_V2_dout;
    sc_in< sc_logic > src_data_stream_V2_empty_n;
    sc_out< sc_logic > src_data_stream_V2_read;
    sc_out< sc_lv<8> > dst1_data_stream_V_din;
    sc_in< sc_logic > dst1_data_stream_V_full_n;
    sc_out< sc_logic > dst1_data_stream_V_write;
    sc_out< sc_lv<8> > dst1_data_stream_V3_din;
    sc_in< sc_logic > dst1_data_stream_V3_full_n;
    sc_out< sc_logic > dst1_data_stream_V3_write;
    sc_out< sc_lv<8> > dst1_data_stream_V4_din;
    sc_in< sc_logic > dst1_data_stream_V4_full_n;
    sc_out< sc_logic > dst1_data_stream_V4_write;
    sc_out< sc_lv<8> > dst2_data_stream_V_din;
    sc_in< sc_logic > dst2_data_stream_V_full_n;
    sc_out< sc_logic > dst2_data_stream_V_write;
    sc_out< sc_lv<8> > dst2_data_stream_V5_din;
    sc_in< sc_logic > dst2_data_stream_V5_full_n;
    sc_out< sc_logic > dst2_data_stream_V5_write;
    sc_out< sc_lv<8> > dst2_data_stream_V6_din;
    sc_in< sc_logic > dst2_data_stream_V6_full_n;
    sc_out< sc_logic > dst2_data_stream_V6_write;


    // Module declarations
    Duplicate183(sc_module_name name);
    SC_HAS_PROCESS(Duplicate183);

    ~Duplicate183();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > src_data_stream_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln1558_reg_301;
    sc_signal< sc_logic > src_data_stream_V1_blk_n;
    sc_signal< sc_logic > src_data_stream_V2_blk_n;
    sc_signal< sc_logic > dst1_data_stream_V_blk_n;
    sc_signal< sc_logic > dst1_data_stream_V3_blk_n;
    sc_signal< sc_logic > dst1_data_stream_V4_blk_n;
    sc_signal< sc_logic > dst2_data_stream_V_blk_n;
    sc_signal< sc_logic > dst2_data_stream_V5_blk_n;
    sc_signal< sc_logic > dst2_data_stream_V6_blk_n;
    sc_signal< sc_lv<10> > t_V_5_reg_257;
    sc_signal< sc_lv<1> > icmp_ln1557_fu_268_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<9> > i_V_fu_274_p2;
    sc_signal< sc_lv<9> > i_V_reg_296;
    sc_signal< sc_lv<1> > icmp_ln1558_fu_280_p2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<10> > j_V_fu_286_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_lv<9> > t_V_reg_246;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state5;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<9> ap_const_lv9_1E0;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<10> ap_const_lv10_280;
    static const sc_lv<10> ap_const_lv10_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_dst1_data_stream_V3_blk_n();
    void thread_dst1_data_stream_V3_din();
    void thread_dst1_data_stream_V3_write();
    void thread_dst1_data_stream_V4_blk_n();
    void thread_dst1_data_stream_V4_din();
    void thread_dst1_data_stream_V4_write();
    void thread_dst1_data_stream_V_blk_n();
    void thread_dst1_data_stream_V_din();
    void thread_dst1_data_stream_V_write();
    void thread_dst2_data_stream_V5_blk_n();
    void thread_dst2_data_stream_V5_din();
    void thread_dst2_data_stream_V5_write();
    void thread_dst2_data_stream_V6_blk_n();
    void thread_dst2_data_stream_V6_din();
    void thread_dst2_data_stream_V6_write();
    void thread_dst2_data_stream_V_blk_n();
    void thread_dst2_data_stream_V_din();
    void thread_dst2_data_stream_V_write();
    void thread_i_V_fu_274_p2();
    void thread_icmp_ln1557_fu_268_p2();
    void thread_icmp_ln1558_fu_280_p2();
    void thread_internal_ap_ready();
    void thread_j_V_fu_286_p2();
    void thread_real_start();
    void thread_src_data_stream_V1_blk_n();
    void thread_src_data_stream_V1_read();
    void thread_src_data_stream_V2_blk_n();
    void thread_src_data_stream_V2_read();
    void thread_src_data_stream_V_blk_n();
    void thread_src_data_stream_V_read();
    void thread_start_out();
    void thread_start_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
