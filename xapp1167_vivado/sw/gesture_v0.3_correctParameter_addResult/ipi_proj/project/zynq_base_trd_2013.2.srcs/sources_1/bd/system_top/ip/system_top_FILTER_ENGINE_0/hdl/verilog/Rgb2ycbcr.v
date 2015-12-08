// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.2
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Rgb2ycbcr (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rgb_rows_V_read,
        rgb_cols_V_read,
        rgb_data_stream_0_V_dout,
        rgb_data_stream_0_V_empty_n,
        rgb_data_stream_0_V_read,
        rgb_data_stream_1_V_dout,
        rgb_data_stream_1_V_empty_n,
        rgb_data_stream_1_V_read,
        rgb_data_stream_2_V_dout,
        rgb_data_stream_2_V_empty_n,
        rgb_data_stream_2_V_read,
        ycbcr_data_stream_0_V_din,
        ycbcr_data_stream_0_V_full_n,
        ycbcr_data_stream_0_V_write
);

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [11:0] rgb_rows_V_read;
input  [11:0] rgb_cols_V_read;
input  [7:0] rgb_data_stream_0_V_dout;
input   rgb_data_stream_0_V_empty_n;
output   rgb_data_stream_0_V_read;
input  [7:0] rgb_data_stream_1_V_dout;
input   rgb_data_stream_1_V_empty_n;
output   rgb_data_stream_1_V_read;
input  [7:0] rgb_data_stream_2_V_dout;
input   rgb_data_stream_2_V_empty_n;
output   rgb_data_stream_2_V_read;
output  [7:0] ycbcr_data_stream_0_V_din;
input   ycbcr_data_stream_0_V_full_n;
output   ycbcr_data_stream_0_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rgb_data_stream_0_V_read;
reg rgb_data_stream_1_V_read;
reg rgb_data_stream_2_V_read;
reg ycbcr_data_stream_0_V_write;
reg    ap_done_reg = 1'b0;
reg   [1:0] ap_CS_fsm = 2'b00;
reg   [11:0] t_V_reg_138;
reg    ap_sig_bdd_47;
wire   [11:0] i_V_fu_155_p2;
reg   [11:0] i_V_reg_394;
wire   [0:0] exitcond_fu_161_p2;
reg   [0:0] exitcond_reg_399;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg    ap_sig_bdd_71;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
reg    ap_reg_ppiten_pp0_it3 = 1'b0;
reg    ap_reg_ppiten_pp0_it4 = 1'b0;
reg    ap_reg_ppiten_pp0_it5 = 1'b0;
reg    ap_reg_ppiten_pp0_it6 = 1'b0;
reg    ap_reg_ppiten_pp0_it7 = 1'b0;
reg   [0:0] ap_reg_ppstg_exitcond_reg_399_pp0_it7;
reg    ap_sig_bdd_91;
reg    ap_reg_ppiten_pp0_it8 = 1'b0;
reg   [0:0] ap_reg_ppstg_exitcond_reg_399_pp0_it1;
reg   [0:0] ap_reg_ppstg_exitcond_reg_399_pp0_it2;
reg   [0:0] ap_reg_ppstg_exitcond_reg_399_pp0_it3;
reg   [0:0] ap_reg_ppstg_exitcond_reg_399_pp0_it4;
reg   [0:0] ap_reg_ppstg_exitcond_reg_399_pp0_it5;
reg   [0:0] ap_reg_ppstg_exitcond_reg_399_pp0_it6;
wire   [11:0] j_V_fu_166_p2;
reg   [7:0] tmp_11_reg_408;
reg   [7:0] ap_reg_ppstg_tmp_11_reg_408_pp0_it2;
reg   [7:0] ap_reg_ppstg_tmp_11_reg_408_pp0_it3;
reg   [7:0] ap_reg_ppstg_tmp_11_reg_408_pp0_it4;
reg   [7:0] tmp_12_reg_414;
reg   [7:0] tmp_13_reg_419;
reg   [7:0] ap_reg_ppstg_tmp_13_reg_419_pp0_it2;
reg   [7:0] ap_reg_ppstg_tmp_13_reg_419_pp0_it3;
reg   [7:0] ap_reg_ppstg_tmp_13_reg_419_pp0_it4;
reg   [7:0] ap_reg_ppstg_tmp_13_reg_419_pp0_it5;
reg   [7:0] ap_reg_ppstg_tmp_13_reg_419_pp0_it6;
wire   [13:0] OP2_V_1_cast_fu_172_p1;
reg   [13:0] OP2_V_1_cast_reg_426;
reg   [13:0] ap_reg_ppstg_OP2_V_1_cast_reg_426_pp0_it3;
wire   [12:0] grp_fu_178_p2;
reg   [12:0] r_V_9_reg_437;
wire   [13:0] grp_fu_184_p2;
reg   [13:0] r_V_14_reg_442;
wire   [13:0] r_V_10_fu_201_p2;
reg   [13:0] r_V_10_reg_447;
wire   [10:0] r_V_13_fu_218_p2;
reg   [10:0] r_V_13_reg_452;
wire   [14:0] r_V_16_fu_240_p2;
reg   [14:0] r_V_16_reg_457;
wire   [13:0] r_V_11_fu_246_p2;
reg   [13:0] r_V_11_reg_462;
wire   [9:0] ret_V_cast_fu_269_p1;
reg   [9:0] ret_V_cast_reg_467;
reg   [0:0] tmp_4_reg_473;
wire   [9:0] ret_V_fu_285_p2;
reg   [9:0] ret_V_reg_478;
wire   [0:0] tmp_2_fu_291_p2;
reg   [0:0] tmp_2_reg_483;
wire   [0:0] tmp_6_fu_338_p2;
reg   [0:0] tmp_6_reg_488;
wire   [0:0] tmp_7_fu_344_p2;
reg   [0:0] tmp_7_reg_493;
wire   [0:0] tmp_8_fu_350_p2;
reg   [0:0] tmp_8_reg_498;
wire   [0:0] tmp_9_fu_356_p2;
reg   [0:0] tmp_9_reg_503;
wire   [0:0] exitcond3_fu_150_p2;
reg   [11:0] t_V_2_reg_127;
wire   [7:0] grp_fu_178_p0;
wire   [3:0] grp_fu_178_p1;
wire   [7:0] grp_fu_184_p0;
wire   [4:0] grp_fu_184_p1;
wire   [7:0] grp_fu_190_p0;
wire   [4:0] grp_fu_190_p1;
wire   [13:0] rhs_V_cast_fu_198_p1;
wire   [9:0] p_shl8_fu_207_p3;
wire   [10:0] p_shl8_cast_fu_214_p1;
wire   [10:0] OP2_V_cast1_fu_195_p1;
wire   [13:0] r_V_15_fu_224_p4;
wire   [14:0] lhs_V_2_cast_fu_233_p1;
wire   [14:0] rhs_V_4_cast_fu_237_p1;
wire   [13:0] grp_fu_190_p2;
wire   [14:0] rhs_V_5_cast_fu_251_p1;
wire   [14:0] r_V_17_fu_254_p2;
wire   [8:0] tmp_fu_259_p4;
wire   [9:0] ret_V_fu_285_p0;
wire   [5:0] tmp_5_fu_281_p1;
wire   [12:0] r_V_fu_297_p3;
wire   [13:0] rhs_V_2_cast_fu_304_p1;
wire   [13:0] r_V_12_fu_308_p2;
wire   [9:0] p_2_fu_323_p3;
wire   [9:0] ret_V_1_fu_328_p3;
wire   [7:0] out_pixel_val_2_fu_334_p1;
wire   [7:0] out_pixel_val_1_fu_313_p4;
wire   [0:0] tmp3_fu_366_p2;
wire   [0:0] tmp2_fu_362_p2;
wire   [0:0] or_cond7_fu_370_p2;
reg    grp_fu_178_ce;
reg    grp_fu_184_ce;
reg    grp_fu_190_ce;
reg   [1:0] ap_NS_fsm;
wire   [12:0] grp_fu_178_p00;
wire   [13:0] grp_fu_184_p00;
parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 2'b00;
parameter    ap_ST_st2_fsm_1 = 2'b1;
parameter    ap_ST_pp0_stg0_fsm_2 = 2'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv12_0 = 12'b000000000000;
parameter    ap_const_lv12_1 = 12'b1;
parameter    ap_const_lv13_B = 13'b1011;
parameter    ap_const_lv14_1B = 14'b11011;
parameter    ap_const_lv14_15 = 14'b10101;
parameter    ap_const_lv14_2000 = 14'b10000000000000;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv5_0 = 5'b00000;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_E = 32'b1110;
parameter    ap_const_lv10_1 = 10'b1;
parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv8_55 = 8'b1010101;
parameter    ap_const_lv8_8F = 8'b10001111;
parameter    ap_const_lv8_87 = 8'b10000111;
parameter    ap_const_lv8_BE = 8'b10111110;
parameter    ap_true = 1'b1;


image_filter_mul_8ns_4ns_13_3 #(
    .ID( 23 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 4 ),
    .dout_WIDTH( 13 ))
image_filter_mul_8ns_4ns_13_3_U23(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_178_p0 ),
    .din1( grp_fu_178_p1 ),
    .ce( grp_fu_178_ce ),
    .dout( grp_fu_178_p2 )
);

image_filter_mul_8ns_5ns_14_3 #(
    .ID( 24 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 14 ))
image_filter_mul_8ns_5ns_14_3_U24(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_184_p0 ),
    .din1( grp_fu_184_p1 ),
    .ce( grp_fu_184_ce ),
    .dout( grp_fu_184_p2 )
);

image_filter_mul_8ns_5ns_14_3 #(
    .ID( 25 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 14 ))
image_filter_mul_8ns_5ns_14_3_U25(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_190_p0 ),
    .din1( grp_fu_190_p1 ),
    .ce( grp_fu_190_ce ),
    .dout( grp_fu_190_p2 )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(ap_const_lv1_0 == exitcond3_fu_150_p2))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))) & ~(exitcond_fu_161_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & (ap_const_lv1_0 == exitcond3_fu_150_p2))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))) & (exitcond_fu_161_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_ST_st2_fsm_1 == ap_CS_fsm) & (ap_const_lv1_0 == exitcond3_fu_150_p2)) | ((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))) & ~(exitcond_fu_161_p2 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

/// ap_reg_ppiten_pp0_it2 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it2
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end else if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & (ap_const_lv1_0 == exitcond3_fu_150_p2))) begin
            ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
        end
    end
end

/// ap_reg_ppiten_pp0_it3 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it3
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it3 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))))) begin
            ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
        end else if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & (ap_const_lv1_0 == exitcond3_fu_150_p2))) begin
            ap_reg_ppiten_pp0_it3 <= ap_const_logic_0;
        end
    end
end

/// ap_reg_ppiten_pp0_it4 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it4
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it4 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))))) begin
            ap_reg_ppiten_pp0_it4 <= ap_reg_ppiten_pp0_it3;
        end else if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & (ap_const_lv1_0 == exitcond3_fu_150_p2))) begin
            ap_reg_ppiten_pp0_it4 <= ap_const_logic_0;
        end
    end
end

/// ap_reg_ppiten_pp0_it5 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it5
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it5 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))))) begin
            ap_reg_ppiten_pp0_it5 <= ap_reg_ppiten_pp0_it4;
        end else if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & (ap_const_lv1_0 == exitcond3_fu_150_p2))) begin
            ap_reg_ppiten_pp0_it5 <= ap_const_logic_0;
        end
    end
end

/// ap_reg_ppiten_pp0_it6 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it6
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it6 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))))) begin
            ap_reg_ppiten_pp0_it6 <= ap_reg_ppiten_pp0_it5;
        end else if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & (ap_const_lv1_0 == exitcond3_fu_150_p2))) begin
            ap_reg_ppiten_pp0_it6 <= ap_const_logic_0;
        end
    end
end

/// ap_reg_ppiten_pp0_it7 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it7
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it7 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))))) begin
            ap_reg_ppiten_pp0_it7 <= ap_reg_ppiten_pp0_it6;
        end else if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & (ap_const_lv1_0 == exitcond3_fu_150_p2))) begin
            ap_reg_ppiten_pp0_it7 <= ap_const_logic_0;
        end
    end
end

/// ap_reg_ppiten_pp0_it8 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it8
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it8 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))))) begin
            ap_reg_ppiten_pp0_it8 <= ap_reg_ppiten_pp0_it7;
        end else if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & (ap_const_lv1_0 == exitcond3_fu_150_p2))) begin
            ap_reg_ppiten_pp0_it8 <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))) & ~(exitcond_fu_161_p2 == ap_const_lv1_0))) begin
        t_V_2_reg_127 <= i_V_reg_394;
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_47)) begin
        t_V_2_reg_127 <= ap_const_lv12_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & (ap_const_lv1_0 == exitcond3_fu_150_p2))) begin
        t_V_reg_138 <= ap_const_lv12_0;
    end else if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))) & (exitcond_fu_161_p2 == ap_const_lv1_0))) begin
        t_V_reg_138 <= j_V_fu_166_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_399_pp0_it1))) begin
        OP2_V_1_cast_reg_426[0] <= OP2_V_1_cast_fu_172_p1[0];
OP2_V_1_cast_reg_426[1] <= OP2_V_1_cast_fu_172_p1[1];
OP2_V_1_cast_reg_426[2] <= OP2_V_1_cast_fu_172_p1[2];
OP2_V_1_cast_reg_426[3] <= OP2_V_1_cast_fu_172_p1[3];
OP2_V_1_cast_reg_426[4] <= OP2_V_1_cast_fu_172_p1[4];
OP2_V_1_cast_reg_426[5] <= OP2_V_1_cast_fu_172_p1[5];
OP2_V_1_cast_reg_426[6] <= OP2_V_1_cast_fu_172_p1[6];
OP2_V_1_cast_reg_426[7] <= OP2_V_1_cast_fu_172_p1[7];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))))) begin
        ap_reg_ppstg_OP2_V_1_cast_reg_426_pp0_it3[0] <= OP2_V_1_cast_reg_426[0];
ap_reg_ppstg_OP2_V_1_cast_reg_426_pp0_it3[1] <= OP2_V_1_cast_reg_426[1];
ap_reg_ppstg_OP2_V_1_cast_reg_426_pp0_it3[2] <= OP2_V_1_cast_reg_426[2];
ap_reg_ppstg_OP2_V_1_cast_reg_426_pp0_it3[3] <= OP2_V_1_cast_reg_426[3];
ap_reg_ppstg_OP2_V_1_cast_reg_426_pp0_it3[4] <= OP2_V_1_cast_reg_426[4];
ap_reg_ppstg_OP2_V_1_cast_reg_426_pp0_it3[5] <= OP2_V_1_cast_reg_426[5];
ap_reg_ppstg_OP2_V_1_cast_reg_426_pp0_it3[6] <= OP2_V_1_cast_reg_426[6];
ap_reg_ppstg_OP2_V_1_cast_reg_426_pp0_it3[7] <= OP2_V_1_cast_reg_426[7];
        ap_reg_ppstg_exitcond_reg_399_pp0_it1 <= exitcond_reg_399;
        ap_reg_ppstg_exitcond_reg_399_pp0_it2 <= ap_reg_ppstg_exitcond_reg_399_pp0_it1;
        ap_reg_ppstg_exitcond_reg_399_pp0_it3 <= ap_reg_ppstg_exitcond_reg_399_pp0_it2;
        ap_reg_ppstg_exitcond_reg_399_pp0_it4 <= ap_reg_ppstg_exitcond_reg_399_pp0_it3;
        ap_reg_ppstg_exitcond_reg_399_pp0_it5 <= ap_reg_ppstg_exitcond_reg_399_pp0_it4;
        ap_reg_ppstg_exitcond_reg_399_pp0_it6 <= ap_reg_ppstg_exitcond_reg_399_pp0_it5;
        ap_reg_ppstg_exitcond_reg_399_pp0_it7 <= ap_reg_ppstg_exitcond_reg_399_pp0_it6;
        ap_reg_ppstg_tmp_11_reg_408_pp0_it2 <= tmp_11_reg_408;
        ap_reg_ppstg_tmp_11_reg_408_pp0_it3 <= ap_reg_ppstg_tmp_11_reg_408_pp0_it2;
        ap_reg_ppstg_tmp_11_reg_408_pp0_it4 <= ap_reg_ppstg_tmp_11_reg_408_pp0_it3;
        ap_reg_ppstg_tmp_13_reg_419_pp0_it2 <= tmp_13_reg_419;
        ap_reg_ppstg_tmp_13_reg_419_pp0_it3 <= ap_reg_ppstg_tmp_13_reg_419_pp0_it2;
        ap_reg_ppstg_tmp_13_reg_419_pp0_it4 <= ap_reg_ppstg_tmp_13_reg_419_pp0_it3;
        ap_reg_ppstg_tmp_13_reg_419_pp0_it5 <= ap_reg_ppstg_tmp_13_reg_419_pp0_it4;
        ap_reg_ppstg_tmp_13_reg_419_pp0_it6 <= ap_reg_ppstg_tmp_13_reg_419_pp0_it5;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))))) begin
        exitcond_reg_399 <= exitcond_fu_161_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st2_fsm_1 == ap_CS_fsm)) begin
        i_V_reg_394 <= i_V_fu_155_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it5) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_399_pp0_it4))) begin
        r_V_10_reg_447 <= r_V_10_fu_201_p2;
        r_V_13_reg_452 <= r_V_13_fu_218_p2;
        r_V_16_reg_457 <= r_V_16_fu_240_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_399_pp0_it5))) begin
        r_V_11_reg_462 <= r_V_11_fu_246_p2;
        ret_V_cast_reg_467 <= ret_V_cast_fu_269_p1;
        ret_V_reg_478 <= ret_V_fu_285_p2;
        tmp_2_reg_483 <= tmp_2_fu_291_p2;
        tmp_4_reg_473 <= r_V_17_fu_254_p2[ap_const_lv32_E];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it4) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_399_pp0_it3))) begin
        r_V_14_reg_442 <= grp_fu_184_p2;
        r_V_9_reg_437 <= grp_fu_178_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (exitcond_reg_399 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))))) begin
        tmp_11_reg_408 <= rgb_data_stream_0_V_dout;
        tmp_12_reg_414 <= rgb_data_stream_1_V_dout;
        tmp_13_reg_419 <= rgb_data_stream_2_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it7) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_399_pp0_it6))) begin
        tmp_6_reg_488 <= tmp_6_fu_338_p2;
        tmp_7_reg_493 <= tmp_7_fu_344_p2;
        tmp_8_reg_498 <= tmp_8_fu_350_p2;
        tmp_9_reg_503 <= tmp_9_fu_356_p2;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_CS_fsm or exitcond3_fu_150_p2)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(ap_const_lv1_0 == exitcond3_fu_150_p2)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_CS_fsm)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_ST_st1_fsm_0 == ap_CS_fsm))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_CS_fsm or exitcond3_fu_150_p2)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(ap_const_lv1_0 == exitcond3_fu_150_p2))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// grp_fu_178_ce assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_71 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_91 or ap_reg_ppiten_pp0_it8 or ap_reg_ppstg_exitcond_reg_399_pp0_it1 or ap_reg_ppstg_exitcond_reg_399_pp0_it2 or ap_reg_ppstg_exitcond_reg_399_pp0_it3)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))) & ((ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_399_pp0_it1) | (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_399_pp0_it3) | (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_399_pp0_it2)))) begin
        grp_fu_178_ce = ap_const_logic_1;
    end else begin
        grp_fu_178_ce = ap_const_logic_0;
    end
end

/// grp_fu_184_ce assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_71 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_91 or ap_reg_ppiten_pp0_it8 or ap_reg_ppstg_exitcond_reg_399_pp0_it1 or ap_reg_ppstg_exitcond_reg_399_pp0_it2 or ap_reg_ppstg_exitcond_reg_399_pp0_it3)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))) & ((ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_399_pp0_it1) | (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_399_pp0_it3) | (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_399_pp0_it2)))) begin
        grp_fu_184_ce = ap_const_logic_1;
    end else begin
        grp_fu_184_ce = ap_const_logic_0;
    end
end

/// grp_fu_190_ce assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_71 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_91 or ap_reg_ppiten_pp0_it8 or ap_reg_ppstg_exitcond_reg_399_pp0_it3 or ap_reg_ppstg_exitcond_reg_399_pp0_it4 or ap_reg_ppstg_exitcond_reg_399_pp0_it5)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))) & ((ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_399_pp0_it3) | (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_399_pp0_it4) | (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_399_pp0_it5)))) begin
        grp_fu_190_ce = ap_const_logic_1;
    end else begin
        grp_fu_190_ce = ap_const_logic_0;
    end
end

/// rgb_data_stream_0_V_read assign process. ///
always @ (ap_CS_fsm or exitcond_reg_399 or ap_sig_bdd_71 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_91 or ap_reg_ppiten_pp0_it8)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (exitcond_reg_399 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))))) begin
        rgb_data_stream_0_V_read = ap_const_logic_1;
    end else begin
        rgb_data_stream_0_V_read = ap_const_logic_0;
    end
end

/// rgb_data_stream_1_V_read assign process. ///
always @ (ap_CS_fsm or exitcond_reg_399 or ap_sig_bdd_71 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_91 or ap_reg_ppiten_pp0_it8)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (exitcond_reg_399 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))))) begin
        rgb_data_stream_1_V_read = ap_const_logic_1;
    end else begin
        rgb_data_stream_1_V_read = ap_const_logic_0;
    end
end

/// rgb_data_stream_2_V_read assign process. ///
always @ (ap_CS_fsm or exitcond_reg_399 or ap_sig_bdd_71 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_91 or ap_reg_ppiten_pp0_it8)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (exitcond_reg_399 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))))) begin
        rgb_data_stream_2_V_read = ap_const_logic_1;
    end else begin
        rgb_data_stream_2_V_read = ap_const_logic_0;
    end
end

/// ycbcr_data_stream_0_V_write assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_71 or ap_reg_ppiten_pp0_it1 or ap_reg_ppstg_exitcond_reg_399_pp0_it7 or ap_sig_bdd_91 or ap_reg_ppiten_pp0_it8)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_399_pp0_it7) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))))) begin
        ycbcr_data_stream_0_V_write = ap_const_logic_1;
    end else begin
        ycbcr_data_stream_0_V_write = ap_const_logic_0;
    end
end
always @ (ap_CS_fsm or ap_sig_bdd_47 or exitcond_fu_161_p2 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_71 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it7 or ap_sig_bdd_91 or ap_reg_ppiten_pp0_it8 or exitcond3_fu_150_p2)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
            if (~ap_sig_bdd_47) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        ap_ST_st2_fsm_1 : 
            if (~(ap_const_lv1_0 == exitcond3_fu_150_p2)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        ap_ST_pp0_stg0_fsm_2 : 
            if ((~((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it7)) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))) & ~(exitcond_fu_161_p2 == ap_const_lv1_0) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else if ((((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it7)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_71 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_91 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it8))) & ~(exitcond_fu_161_p2 == ap_const_lv1_0) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        default : 
            ap_NS_fsm = 'bx;
    endcase
end
assign OP2_V_1_cast_fu_172_p1 = $unsigned(tmp_12_reg_414);
assign OP2_V_cast1_fu_195_p1 = $unsigned(ap_reg_ppstg_tmp_13_reg_419_pp0_it4);

/// ap_sig_bdd_47 assign process. ///
always @ (ap_start or ap_done_reg)
begin
    ap_sig_bdd_47 = ((ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_71 assign process. ///
always @ (rgb_data_stream_0_V_empty_n or rgb_data_stream_1_V_empty_n or rgb_data_stream_2_V_empty_n or exitcond_reg_399)
begin
    ap_sig_bdd_71 = (((rgb_data_stream_0_V_empty_n == ap_const_logic_0) & (exitcond_reg_399 == ap_const_lv1_0)) | ((exitcond_reg_399 == ap_const_lv1_0) & (rgb_data_stream_1_V_empty_n == ap_const_logic_0)) | ((exitcond_reg_399 == ap_const_lv1_0) & (rgb_data_stream_2_V_empty_n == ap_const_logic_0)));
end

/// ap_sig_bdd_91 assign process. ///
always @ (ycbcr_data_stream_0_V_full_n or ap_reg_ppstg_exitcond_reg_399_pp0_it7)
begin
    ap_sig_bdd_91 = ((ycbcr_data_stream_0_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_399_pp0_it7));
end
assign exitcond3_fu_150_p2 = (t_V_2_reg_127 == rgb_rows_V_read? 1'b1: 1'b0);
assign exitcond_fu_161_p2 = (t_V_reg_138 == rgb_cols_V_read? 1'b1: 1'b0);
assign grp_fu_178_p0 = grp_fu_178_p00;
assign grp_fu_178_p00 = $unsigned(tmp_11_reg_408);
assign grp_fu_178_p1 = ap_const_lv13_B;
assign grp_fu_184_p0 = grp_fu_184_p00;
assign grp_fu_184_p00 = $unsigned(tmp_12_reg_414);
assign grp_fu_184_p1 = ap_const_lv14_1B;
assign grp_fu_190_p0 = ap_reg_ppstg_OP2_V_1_cast_reg_426_pp0_it3;
assign grp_fu_190_p1 = ap_const_lv14_15;
assign i_V_fu_155_p2 = (t_V_2_reg_127 + ap_const_lv12_1);
assign j_V_fu_166_p2 = (t_V_reg_138 + ap_const_lv12_1);
assign lhs_V_2_cast_fu_233_p1 = $unsigned(r_V_15_fu_224_p4);
assign or_cond7_fu_370_p2 = (tmp3_fu_366_p2 & tmp2_fu_362_p2);
assign out_pixel_val_1_fu_313_p4 = {{r_V_12_fu_308_p2[ap_const_lv32_D : ap_const_lv32_6]}};
assign out_pixel_val_2_fu_334_p1 = ret_V_1_fu_328_p3[7:0];
assign p_2_fu_323_p3 = ((tmp_2_reg_483)? ret_V_cast_reg_467: ret_V_reg_478);
assign p_shl8_cast_fu_214_p1 = $unsigned(p_shl8_fu_207_p3);
assign p_shl8_fu_207_p3 = {{ap_reg_ppstg_tmp_13_reg_419_pp0_it4}, {ap_const_lv2_0}};
assign r_V_10_fu_201_p2 = (ap_const_lv14_2000 - rhs_V_cast_fu_198_p1);
assign r_V_11_fu_246_p2 = (r_V_10_reg_447 - grp_fu_190_p2);
assign r_V_12_fu_308_p2 = (r_V_11_reg_462 + rhs_V_2_cast_fu_304_p1);
assign r_V_13_fu_218_p2 = (p_shl8_cast_fu_214_p1 + OP2_V_cast1_fu_195_p1);
assign r_V_15_fu_224_p4 = {{{{ap_const_lv1_1}, {ap_reg_ppstg_tmp_11_reg_408_pp0_it4}}}, {ap_const_lv5_0}};
assign r_V_16_fu_240_p2 = (lhs_V_2_cast_fu_233_p1 - rhs_V_4_cast_fu_237_p1);
assign r_V_17_fu_254_p2 = (r_V_16_reg_457 - rhs_V_5_cast_fu_251_p1);
assign r_V_fu_297_p3 = {{ap_reg_ppstg_tmp_13_reg_419_pp0_it6}, {ap_const_lv5_0}};
assign ret_V_1_fu_328_p3 = ((tmp_4_reg_473)? p_2_fu_323_p3: ret_V_cast_reg_467);
assign ret_V_cast_fu_269_p1 = $signed(tmp_fu_259_p4);
assign ret_V_fu_285_p0 = $signed(tmp_fu_259_p4);
assign ret_V_fu_285_p2 = (ret_V_fu_285_p0 + ap_const_lv10_1);
assign rhs_V_2_cast_fu_304_p1 = $unsigned(r_V_fu_297_p3);
assign rhs_V_4_cast_fu_237_p1 = $unsigned(r_V_14_reg_442);
assign rhs_V_5_cast_fu_251_p1 = $unsigned(r_V_13_reg_452);
assign rhs_V_cast_fu_198_p1 = $unsigned(r_V_9_reg_437);
assign tmp2_fu_362_p2 = (tmp_6_reg_488 & tmp_7_reg_493);
assign tmp3_fu_366_p2 = (tmp_8_reg_498 & tmp_9_reg_503);
assign tmp_2_fu_291_p2 = (tmp_5_fu_281_p1 == ap_const_lv6_0? 1'b1: 1'b0);
assign tmp_5_fu_281_p1 = r_V_17_fu_254_p2[5:0];
assign tmp_6_fu_338_p2 = (out_pixel_val_2_fu_334_p1 > ap_const_lv8_55? 1'b1: 1'b0);
assign tmp_7_fu_344_p2 = (out_pixel_val_2_fu_334_p1 < ap_const_lv8_8F? 1'b1: 1'b0);
assign tmp_8_fu_350_p2 = (out_pixel_val_1_fu_313_p4 > ap_const_lv8_87? 1'b1: 1'b0);
assign tmp_9_fu_356_p2 = (out_pixel_val_1_fu_313_p4 < ap_const_lv8_BE? 1'b1: 1'b0);
assign tmp_fu_259_p4 = {{r_V_17_fu_254_p2[ap_const_lv32_E : ap_const_lv32_6]}};
assign ycbcr_data_stream_0_V_din = $signed(or_cond7_fu_370_p2);
always @ (posedge ap_clk)
begin
    OP2_V_1_cast_reg_426[13:8] <= 6'b000000;
    ap_reg_ppstg_OP2_V_1_cast_reg_426_pp0_it3[13:8] <= 6'b000000;
end



endmodule //Rgb2ycbcr

