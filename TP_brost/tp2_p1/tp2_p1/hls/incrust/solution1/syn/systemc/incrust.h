// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _incrust_HH_
#define _incrust_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "incrust_balle_V.h"
#include "incrust_AXILiteS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 5,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32>
struct incrust : public sc_module {
    // Port declarations 41
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > s_axis_video_TDATA;
    sc_in< sc_logic > s_axis_video_TVALID;
    sc_out< sc_logic > s_axis_video_TREADY;
    sc_in< sc_lv<1> > s_axis_video_TKEEP;
    sc_in< sc_lv<1> > s_axis_video_TSTRB;
    sc_in< sc_lv<1> > s_axis_video_TUSER;
    sc_in< sc_lv<1> > s_axis_video_TLAST;
    sc_in< sc_lv<1> > s_axis_video_TID;
    sc_in< sc_lv<1> > s_axis_video_TDEST;
    sc_out< sc_lv<8> > m_axis_video_TDATA;
    sc_out< sc_logic > m_axis_video_TVALID;
    sc_in< sc_logic > m_axis_video_TREADY;
    sc_out< sc_lv<1> > m_axis_video_TKEEP;
    sc_out< sc_lv<1> > m_axis_video_TSTRB;
    sc_out< sc_lv<1> > m_axis_video_TUSER;
    sc_out< sc_lv<1> > m_axis_video_TLAST;
    sc_out< sc_lv<1> > m_axis_video_TID;
    sc_out< sc_lv<1> > m_axis_video_TDEST;
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    incrust(sc_module_name name);
    SC_HAS_PROCESS(incrust);

    ~incrust();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    incrust_balle_V* balle_V_U;
    incrust_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* incrust_AXILiteS_s_axi_U;
    regslice_both<8>* regslice_both_s_axis_video_V_data_V_U;
    regslice_both<1>* regslice_both_s_axis_video_V_keep_V_U;
    regslice_both<1>* regslice_both_s_axis_video_V_strb_V_U;
    regslice_both<1>* regslice_both_s_axis_video_V_user_V_U;
    regslice_both<1>* regslice_both_s_axis_video_V_last_V_U;
    regslice_both<1>* regslice_both_s_axis_video_V_id_V_U;
    regslice_both<1>* regslice_both_s_axis_video_V_dest_V_U;
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
    sc_signal< sc_lv<32> > start_x;
    sc_signal< sc_lv<32> > start_y;
    sc_signal< sc_lv<6> > balle_V_address0;
    sc_signal< sc_logic > balle_V_ce0;
    sc_signal< sc_lv<1> > balle_V_q0;
    sc_signal< sc_logic > s_axis_video_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > m_axis_video_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<32> > start_y_read_reg_364;
    sc_signal< sc_lv<32> > start_x_read_reg_369;
    sc_signal< sc_lv<32> > add_ln25_fu_182_p2;
    sc_signal< sc_lv<32> > add_ln25_reg_374;
    sc_signal< sc_lv<32> > add_ln25_1_fu_188_p2;
    sc_signal< sc_lv<32> > add_ln25_1_reg_379;
    sc_signal< sc_lv<9> > i_fu_209_p2;
    sc_signal< sc_lv<9> > i_reg_387;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > regslice_both_m_axis_video_V_data_V_U_apdone_blk;
    sc_signal< sc_lv<1> > and_ln25_1_fu_231_p2;
    sc_signal< sc_lv<1> > and_ln25_1_reg_392;
    sc_signal< sc_lv<1> > icmp_ln20_fu_203_p2;
    sc_signal< sc_lv<10> > j_fu_247_p2;
    sc_signal< sc_lv<10> > j_reg_400;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > and_ln25_2_fu_278_p2;
    sc_signal< sc_lv<1> > and_ln25_2_reg_405;
    sc_signal< sc_lv<1> > icmp_ln22_fu_241_p2;
    sc_signal< sc_lv<9> > i_0_reg_160;
    sc_signal< sc_lv<10> > j_0_reg_171;
    sc_signal< sc_lv<64> > sext_ln26_fu_283_p1;
    sc_signal< sc_lv<32> > pixel_1_fu_88;
    sc_signal< sc_lv<32> > pixel_2_fu_294_p3;
    sc_signal< sc_lv<32> > zext_ln20_fu_199_p1;
    sc_signal< sc_lv<1> > icmp_ln25_fu_215_p2;
    sc_signal< sc_lv<1> > xor_ln25_fu_220_p2;
    sc_signal< sc_lv<1> > icmp_ln25_1_fu_226_p2;
    sc_signal< sc_lv<32> > zext_ln22_fu_237_p1;
    sc_signal< sc_lv<1> > icmp_ln25_2_fu_256_p2;
    sc_signal< sc_lv<1> > xor_ln25_1_fu_261_p2;
    sc_signal< sc_lv<1> > icmp_ln25_3_fu_267_p2;
    sc_signal< sc_lv<1> > and_ln25_fu_272_p2;
    sc_signal< sc_lv<32> > sext_ln26_fu_283_p0;
    sc_signal< sc_lv<32> > pixel_fu_288_p1;
    sc_signal< sc_lv<32> > pixel_fu_288_p2;
    sc_signal< sc_lv<32> > pixel_2_fu_294_p2;
    sc_signal< sc_lv<8> > select_ln321_fu_341_p3;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_data_V_U_apdone_blk;
    sc_signal< sc_lv<8> > s_axis_video_TDATA_int;
    sc_signal< sc_logic > s_axis_video_TVALID_int;
    sc_signal< sc_logic > s_axis_video_TREADY_int;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_data_V_U_ack_in;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_keep_V_U_apdone_blk;
    sc_signal< sc_lv<1> > s_axis_video_TKEEP_int;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_keep_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_keep_V_U_ack_in;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_strb_V_U_apdone_blk;
    sc_signal< sc_lv<1> > s_axis_video_TSTRB_int;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_strb_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_strb_V_U_ack_in;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_user_V_U_apdone_blk;
    sc_signal< sc_lv<1> > s_axis_video_TUSER_int;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_user_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_user_V_U_ack_in;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_last_V_U_apdone_blk;
    sc_signal< sc_lv<1> > s_axis_video_TLAST_int;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_last_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_last_V_U_ack_in;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_id_V_U_apdone_blk;
    sc_signal< sc_lv<1> > s_axis_video_TID_int;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_id_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_id_V_U_ack_in;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_dest_V_U_apdone_blk;
    sc_signal< sc_lv<1> > s_axis_video_TDEST_int;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_dest_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_s_axis_video_V_dest_V_U_ack_in;
    sc_signal< sc_lv<8> > m_axis_video_TDATA_int;
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
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<9> ap_const_lv9_1E0;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<10> ap_const_lv10_280;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<8> ap_const_lv8_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln25_1_fu_188_p2();
    void thread_add_ln25_fu_182_p2();
    void thread_and_ln25_1_fu_231_p2();
    void thread_and_ln25_2_fu_278_p2();
    void thread_and_ln25_fu_272_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_balle_V_address0();
    void thread_balle_V_ce0();
    void thread_i_fu_209_p2();
    void thread_icmp_ln20_fu_203_p2();
    void thread_icmp_ln22_fu_241_p2();
    void thread_icmp_ln25_1_fu_226_p2();
    void thread_icmp_ln25_2_fu_256_p2();
    void thread_icmp_ln25_3_fu_267_p2();
    void thread_icmp_ln25_fu_215_p2();
    void thread_j_fu_247_p2();
    void thread_m_axis_video_TDATA_blk_n();
    void thread_m_axis_video_TDATA_int();
    void thread_m_axis_video_TVALID();
    void thread_m_axis_video_TVALID_int();
    void thread_pixel_2_fu_294_p2();
    void thread_pixel_2_fu_294_p3();
    void thread_pixel_fu_288_p1();
    void thread_pixel_fu_288_p2();
    void thread_s_axis_video_TDATA_blk_n();
    void thread_s_axis_video_TREADY();
    void thread_s_axis_video_TREADY_int();
    void thread_select_ln321_fu_341_p3();
    void thread_sext_ln26_fu_283_p0();
    void thread_sext_ln26_fu_283_p1();
    void thread_xor_ln25_1_fu_261_p2();
    void thread_xor_ln25_fu_220_p2();
    void thread_zext_ln20_fu_199_p1();
    void thread_zext_ln22_fu_237_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
