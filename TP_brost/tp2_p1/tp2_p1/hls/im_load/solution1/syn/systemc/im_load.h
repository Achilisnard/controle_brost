// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _im_load_HH_
#define _im_load_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct im_load : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<2> > mode_V;
    sc_out< sc_lv<8> > m_axis_video_TDATA;
    sc_out< sc_logic > m_axis_video_TVALID;
    sc_in< sc_logic > m_axis_video_TREADY;
    sc_out< sc_lv<1> > m_axis_video_TKEEP;
    sc_out< sc_lv<1> > m_axis_video_TSTRB;
    sc_out< sc_lv<1> > m_axis_video_TUSER;
    sc_out< sc_lv<1> > m_axis_video_TLAST;
    sc_out< sc_lv<1> > m_axis_video_TID;
    sc_out< sc_lv<1> > m_axis_video_TDEST;
    sc_out< sc_lv<19> > mem_V_address0;
    sc_out< sc_logic > mem_V_ce0;
    sc_in< sc_lv<8> > mem_V_q0;
    sc_signal< sc_lv<1> > ap_var_for_const0;


    // Module declarations
    im_load(sc_module_name name);
    SC_HAS_PROCESS(im_load);

    ~im_load();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    regslice_both<8>* regslice_both_m_axis_video_V_data_V_U;
    regslice_both<1>* regslice_both_m_axis_video_V_keep_V_U;
    regslice_both<1>* regslice_both_m_axis_video_V_strb_V_U;
    regslice_both<1>* regslice_both_m_axis_video_V_user_V_U;
    regslice_both<1>* regslice_both_m_axis_video_V_last_V_U;
    regslice_both<1>* regslice_both_m_axis_video_V_id_V_U;
    regslice_both<1>* regslice_both_m_axis_video_V_dest_V_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > m_axis_video_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln879_fu_158_p2;
    sc_signal< sc_lv<1> > icmp_ln879_reg_402;
    sc_signal< sc_lv<1> > and_ln879_1_fu_200_p2;
    sc_signal< sc_lv<1> > and_ln879_1_reg_407;
    sc_signal< sc_lv<1> > or_ln879_1_fu_206_p2;
    sc_signal< sc_lv<1> > or_ln879_1_reg_412;
    sc_signal< sc_lv<9> > i_fu_218_p2;
    sc_signal< sc_lv<9> > i_reg_420;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_data_V_U_apdone_blk;
    sc_signal< sc_lv<19> > add_ln31_1_fu_248_p2;
    sc_signal< sc_lv<19> > add_ln31_1_reg_425;
    sc_signal< sc_lv<1> > icmp_ln16_fu_212_p2;
    sc_signal< sc_lv<19> > add_ln34_1_fu_284_p2;
    sc_signal< sc_lv<19> > add_ln34_1_reg_430;
    sc_signal< sc_lv<19> > add_ln37_fu_290_p2;
    sc_signal< sc_lv<19> > add_ln37_reg_435;
    sc_signal< sc_lv<19> > add_ln40_fu_296_p2;
    sc_signal< sc_lv<19> > add_ln40_reg_440;
    sc_signal< sc_lv<10> > j_fu_312_p2;
    sc_signal< sc_lv<10> > j_reg_448;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > tmp_user_V_fu_344_p2;
    sc_signal< sc_lv<1> > tmp_user_V_reg_453;
    sc_signal< sc_lv<1> > icmp_ln19_fu_306_p2;
    sc_signal< sc_lv<1> > tmp_last_V_fu_350_p2;
    sc_signal< sc_lv<1> > tmp_last_V_reg_458;
    sc_signal< sc_lv<9> > i_0_reg_135;
    sc_signal< sc_lv<10> > j_0_reg_147;
    sc_signal< sc_lv<64> > zext_ln879_fu_397_p1;
    sc_signal< sc_lv<1> > icmp_ln879_1_fu_164_p2;
    sc_signal< sc_lv<1> > xor_ln879_fu_176_p2;
    sc_signal< sc_lv<1> > or_ln879_fu_188_p2;
    sc_signal< sc_lv<1> > icmp_ln879_2_fu_170_p2;
    sc_signal< sc_lv<1> > xor_ln879_1_fu_194_p2;
    sc_signal< sc_lv<1> > and_ln879_fu_182_p2;
    sc_signal< sc_lv<18> > shl_ln_fu_224_p3;
    sc_signal< sc_lv<16> > shl_ln31_1_fu_236_p3;
    sc_signal< sc_lv<19> > zext_ln31_1_fu_244_p1;
    sc_signal< sc_lv<19> > zext_ln31_fu_232_p1;
    sc_signal< sc_lv<9> > sub_ln34_fu_254_p2;
    sc_signal< sc_lv<18> > shl_ln1_fu_260_p3;
    sc_signal< sc_lv<16> > shl_ln34_1_fu_272_p3;
    sc_signal< sc_lv<19> > zext_ln34_1_fu_280_p1;
    sc_signal< sc_lv<19> > zext_ln34_fu_268_p1;
    sc_signal< sc_lv<9> > trunc_ln21_fu_318_p1;
    sc_signal< sc_lv<1> > tmp_fu_328_p3;
    sc_signal< sc_lv<9> > or_ln21_fu_322_p2;
    sc_signal< sc_lv<10> > or_ln_fu_336_p3;
    sc_signal< sc_lv<19> > zext_ln19_fu_302_p1;
    sc_signal< sc_lv<19> > sub_ln37_fu_366_p2;
    sc_signal< sc_lv<19> > add_ln34_fu_361_p2;
    sc_signal< sc_lv<19> > add_ln31_fu_356_p2;
    sc_signal< sc_lv<19> > sub_ln40_fu_371_p2;
    sc_signal< sc_lv<19> > select_ln879_fu_376_p3;
    sc_signal< sc_lv<19> > select_ln879_1_fu_383_p3;
    sc_signal< sc_lv<19> > select_ln879_2_fu_390_p3;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    sc_signal< sc_logic > m_axis_video_TVALID_int;
    sc_signal< sc_logic > m_axis_video_TREADY_int;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_data_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_keep_V_U_apdone_blk;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_keep_V_U_ack_in_dummy;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_keep_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_strb_V_U_apdone_blk;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_strb_V_U_ack_in_dummy;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_strb_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_user_V_U_apdone_blk;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_user_V_U_ack_in_dummy;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_user_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_last_V_U_apdone_blk;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_last_V_U_ack_in_dummy;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_last_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_id_V_U_apdone_blk;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_id_V_U_ack_in_dummy;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_id_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_dest_V_U_apdone_blk;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_dest_V_U_ack_in_dummy;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_dest_V_U_vld_out;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_state4;
    static const sc_lv<5> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<9> ap_const_lv9_1E0;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<19> ap_const_lv19_280;
    static const sc_lv<10> ap_const_lv10_280;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<10> ap_const_lv10_27F;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln31_1_fu_248_p2();
    void thread_add_ln31_fu_356_p2();
    void thread_add_ln34_1_fu_284_p2();
    void thread_add_ln34_fu_361_p2();
    void thread_add_ln37_fu_290_p2();
    void thread_add_ln40_fu_296_p2();
    void thread_and_ln879_1_fu_200_p2();
    void thread_and_ln879_fu_182_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_i_fu_218_p2();
    void thread_icmp_ln16_fu_212_p2();
    void thread_icmp_ln19_fu_306_p2();
    void thread_icmp_ln879_1_fu_164_p2();
    void thread_icmp_ln879_2_fu_170_p2();
    void thread_icmp_ln879_fu_158_p2();
    void thread_j_fu_312_p2();
    void thread_m_axis_video_TDATA_blk_n();
    void thread_m_axis_video_TVALID();
    void thread_m_axis_video_TVALID_int();
    void thread_mem_V_address0();
    void thread_mem_V_ce0();
    void thread_or_ln21_fu_322_p2();
    void thread_or_ln879_1_fu_206_p2();
    void thread_or_ln879_fu_188_p2();
    void thread_or_ln_fu_336_p3();
    void thread_select_ln879_1_fu_383_p3();
    void thread_select_ln879_2_fu_390_p3();
    void thread_select_ln879_fu_376_p3();
    void thread_shl_ln1_fu_260_p3();
    void thread_shl_ln31_1_fu_236_p3();
    void thread_shl_ln34_1_fu_272_p3();
    void thread_shl_ln_fu_224_p3();
    void thread_sub_ln34_fu_254_p2();
    void thread_sub_ln37_fu_366_p2();
    void thread_sub_ln40_fu_371_p2();
    void thread_tmp_fu_328_p3();
    void thread_tmp_last_V_fu_350_p2();
    void thread_tmp_user_V_fu_344_p2();
    void thread_trunc_ln21_fu_318_p1();
    void thread_xor_ln879_1_fu_194_p2();
    void thread_xor_ln879_fu_176_p2();
    void thread_zext_ln19_fu_302_p1();
    void thread_zext_ln31_1_fu_244_p1();
    void thread_zext_ln31_fu_232_p1();
    void thread_zext_ln34_1_fu_280_p1();
    void thread_zext_ln34_fu_268_p1();
    void thread_zext_ln879_fu_397_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif