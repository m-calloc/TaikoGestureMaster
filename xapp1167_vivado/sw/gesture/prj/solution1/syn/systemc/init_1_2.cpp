// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.2
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "init_1_2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic init_1_2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic init_1_2::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> init_1_2::ap_ST_st1_fsm_0 = "0";
const sc_lv<12> init_1_2::ap_const_lv12_0 = "000000000000";

init_1_2::init_1_2(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_29 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_29 );

    SC_METHOD(thread_ap_return_0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_29 );
    sensitive << ( tmp_fu_29_p1 );
    sensitive << ( ap_return_0_preg );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_29 );
    sensitive << ( tmp_20_fu_33_p1 );
    sensitive << ( ap_return_1_preg );

    SC_METHOD(thread_ap_sig_bdd_29);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_tmp_20_fu_33_p1);
    sensitive << ( p_cols );

    SC_METHOD(thread_tmp_fu_29_p1);
    sensitive << ( p_rows );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_29 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "0";
    ap_return_0_preg = "000000000000";
    ap_return_1_preg = "000000000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "init_1_2_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    const char* dump_vcd = std::getenv("AP_WRITE_VCD");
    if (dump_vcd && string(dump_vcd) == "1" ) {
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, p_rows, "(port)p_rows");
    sc_trace(mVcdFile, p_cols, "(port)p_cols");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_bdd_29, "ap_sig_bdd_29");
    sc_trace(mVcdFile, tmp_fu_29_p1, "tmp_fu_29_p1");
    sc_trace(mVcdFile, tmp_20_fu_33_p1, "tmp_20_fu_33_p1");
    sc_trace(mVcdFile, ap_return_0_preg, "ap_return_0_preg");
    sc_trace(mVcdFile, ap_return_1_preg, "ap_return_1_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");

    }
}

init_1_2::~init_1_2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void init_1_2::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
                    !ap_sig_bdd_29.read())) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_0_preg = ap_const_lv12_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
             !ap_sig_bdd_29.read())) {
            ap_return_0_preg = tmp_fu_29_p1.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_1_preg = ap_const_lv12_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
             !ap_sig_bdd_29.read())) {
            ap_return_1_preg = tmp_20_fu_33_p1.read();
        }
    }
}

void init_1_2::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_done_reg.read()) || 
         (esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
          !ap_sig_bdd_29.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void init_1_2::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void init_1_2::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
         !ap_sig_bdd_29.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void init_1_2::thread_ap_return_0() {
    if ((esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
         !ap_sig_bdd_29.read())) {
        ap_return_0 = tmp_fu_29_p1.read();
    } else {
        ap_return_0 = ap_return_0_preg.read();
    }
}

void init_1_2::thread_ap_return_1() {
    if ((esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
         !ap_sig_bdd_29.read())) {
        ap_return_1 = tmp_20_fu_33_p1.read();
    } else {
        ap_return_1 = ap_return_1_preg.read();
    }
}

void init_1_2::thread_ap_sig_bdd_29() {
    ap_sig_bdd_29 = (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void init_1_2::thread_tmp_20_fu_33_p1() {
    tmp_20_fu_33_p1 = p_cols.read().range(12-1, 0);
}

void init_1_2::thread_tmp_fu_29_p1() {
    tmp_fu_29_p1 = p_rows.read().range(12-1, 0);
}

void init_1_2::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint()) {
        case 0 : 
            ap_NS_fsm = ap_ST_st1_fsm_0;
break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}
}

