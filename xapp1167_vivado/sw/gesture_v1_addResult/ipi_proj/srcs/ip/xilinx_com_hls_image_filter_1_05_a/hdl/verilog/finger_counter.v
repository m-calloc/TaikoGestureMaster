// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.2
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module finger_counter (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        src_rows_V_read,
        src_cols_V_read,
        src_data_stream_0_V_dout,
        src_data_stream_0_V_empty_n,
        src_data_stream_0_V_read,
        dst_data_stream_0_V_din,
        dst_data_stream_0_V_full_n,
        dst_data_stream_0_V_write,
        dst_data_stream_1_V_din,
        dst_data_stream_1_V_full_n,
        dst_data_stream_1_V_write,
        dst_data_stream_2_V_din,
        dst_data_stream_2_V_full_n,
        dst_data_stream_2_V_write
);

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [11:0] src_rows_V_read;
input  [11:0] src_cols_V_read;
input  [7:0] src_data_stream_0_V_dout;
input   src_data_stream_0_V_empty_n;
output   src_data_stream_0_V_read;
output  [7:0] dst_data_stream_0_V_din;
input   dst_data_stream_0_V_full_n;
output   dst_data_stream_0_V_write;
output  [7:0] dst_data_stream_1_V_din;
input   dst_data_stream_1_V_full_n;
output   dst_data_stream_1_V_write;
output  [7:0] dst_data_stream_2_V_din;
input   dst_data_stream_2_V_full_n;
output   dst_data_stream_2_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src_data_stream_0_V_read;
reg dst_data_stream_0_V_write;
reg dst_data_stream_1_V_write;
reg dst_data_stream_2_V_write;
reg    ap_done_reg = 1'b0;
reg   [1:0] ap_CS_fsm = 2'b00;
reg   [11:0] t_V_reg_112;
reg    ap_sig_bdd_47;
wire   [12:0] op2_assign_fu_128_p2;
reg   [12:0] op2_assign_reg_239;
wire   [12:0] op2_assign_3_fu_138_p2;
reg   [12:0] op2_assign_3_reg_244;
wire   [11:0] i_V_fu_158_p2;
reg   [11:0] i_V_reg_252;
wire   [0:0] not_fu_164_p2;
reg   [0:0] not_reg_257;
wire   [0:0] tmp_s_fu_153_p2;
wire   [0:0] notrhs_fu_169_p2;
reg   [0:0] notrhs_reg_262;
wire   [0:0] tmp_7_fu_179_p2;
reg   [0:0] tmp_7_reg_267;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg   [0:0] or_cond_reg_276;
reg    ap_sig_bdd_82;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg   [0:0] ap_reg_ppstg_tmp_7_reg_267_pp0_it1;
reg   [0:0] not_or_cond_reg_280;
reg   [0:0] ap_reg_ppstg_not_or_cond_reg_280_pp0_it1;
reg    ap_sig_bdd_102;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
wire   [11:0] j_V_fu_184_p2;
wire   [0:0] or_cond_fu_195_p2;
wire   [0:0] not_or_cond_fu_206_p2;
reg   [11:0] t_V_5_reg_101;
reg   [7:0] pixel_in_val_fu_58;
wire   [12:0] retval_i4_cast_fu_124_p1;
wire   [12:0] retval_i_cast_fu_134_p1;
wire   [12:0] tmp_cast_fu_149_p1;
wire   [12:0] tmp_9_cast_fu_175_p1;
wire   [0:0] not4_fu_190_p2;
wire   [0:0] notlhs_fu_200_p2;
reg   [1:0] ap_NS_fsm;
parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 2'b00;
parameter    ap_ST_st2_fsm_1 = 2'b1;
parameter    ap_ST_pp0_stg0_fsm_2 = 2'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv12_0 = 12'b000000000000;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv13_1 = 13'b1;
parameter    ap_const_lv12_1 = 12'b1;
parameter    ap_true = 1'b1;




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
        end else if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & (tmp_s_fu_153_p2 == ap_const_lv1_0))) begin
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
        if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & (ap_const_lv1_0 == tmp_7_fu_179_p2))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(tmp_s_fu_153_p2 == ap_const_lv1_0))) begin
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
        if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(ap_const_lv1_0 == tmp_7_fu_179_p2))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(tmp_s_fu_153_p2 == ap_const_lv1_0)) | ((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & (ap_const_lv1_0 == tmp_7_fu_179_p2)))) begin
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
        if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end else if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(tmp_s_fu_153_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~(ap_const_lv1_0 == tmp_7_reg_267) & ~(ap_const_lv1_0 == or_cond_reg_276) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        pixel_in_val_fu_58 <= src_data_stream_0_V_dout;
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_47)) begin
        pixel_in_val_fu_58 <= ap_const_lv8_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & (ap_const_lv1_0 == tmp_7_fu_179_p2))) begin
        t_V_5_reg_101 <= i_V_reg_252;
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_47)) begin
        t_V_5_reg_101 <= ap_const_lv12_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(tmp_s_fu_153_p2 == ap_const_lv1_0))) begin
        t_V_reg_112 <= ap_const_lv12_0;
    end else if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(ap_const_lv1_0 == tmp_7_fu_179_p2))) begin
        t_V_reg_112 <= j_V_fu_184_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        ap_reg_ppstg_not_or_cond_reg_280_pp0_it1 <= not_or_cond_reg_280;
        ap_reg_ppstg_tmp_7_reg_267_pp0_it1 <= tmp_7_reg_267;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st2_fsm_1 == ap_CS_fsm)) begin
        i_V_reg_252 <= i_V_fu_158_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(ap_const_lv1_0 == tmp_7_fu_179_p2))) begin
        not_or_cond_reg_280 <= not_or_cond_fu_206_p2;
        or_cond_reg_276 <= or_cond_fu_195_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(tmp_s_fu_153_p2 == ap_const_lv1_0))) begin
        not_reg_257 <= not_fu_164_p2;
        notrhs_reg_262 <= notrhs_fu_169_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_47)) begin
        op2_assign_3_reg_244 <= op2_assign_3_fu_138_p2;
        op2_assign_reg_239 <= op2_assign_fu_128_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        tmp_7_reg_267 <= tmp_7_fu_179_p2;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_CS_fsm or tmp_s_fu_153_p2)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_ST_st2_fsm_1 == ap_CS_fsm) & (tmp_s_fu_153_p2 == ap_const_lv1_0)))) begin
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
always @ (ap_CS_fsm or tmp_s_fu_153_p2)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & (tmp_s_fu_153_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// dst_data_stream_0_V_write assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_82 or ap_reg_ppiten_pp0_it1 or ap_reg_ppstg_tmp_7_reg_267_pp0_it1 or ap_reg_ppstg_not_or_cond_reg_280_pp0_it1 or ap_sig_bdd_102 or ap_reg_ppiten_pp0_it2)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_7_reg_267_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_not_or_cond_reg_280_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        dst_data_stream_0_V_write = ap_const_logic_1;
    end else begin
        dst_data_stream_0_V_write = ap_const_logic_0;
    end
end

/// dst_data_stream_1_V_write assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_82 or ap_reg_ppiten_pp0_it1 or ap_reg_ppstg_tmp_7_reg_267_pp0_it1 or ap_reg_ppstg_not_or_cond_reg_280_pp0_it1 or ap_sig_bdd_102 or ap_reg_ppiten_pp0_it2)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_7_reg_267_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_not_or_cond_reg_280_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        dst_data_stream_1_V_write = ap_const_logic_1;
    end else begin
        dst_data_stream_1_V_write = ap_const_logic_0;
    end
end

/// dst_data_stream_2_V_write assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_82 or ap_reg_ppiten_pp0_it1 or ap_reg_ppstg_tmp_7_reg_267_pp0_it1 or ap_reg_ppstg_not_or_cond_reg_280_pp0_it1 or ap_sig_bdd_102 or ap_reg_ppiten_pp0_it2)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_7_reg_267_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_not_or_cond_reg_280_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        dst_data_stream_2_V_write = ap_const_logic_1;
    end else begin
        dst_data_stream_2_V_write = ap_const_logic_0;
    end
end

/// src_data_stream_0_V_read assign process. ///
always @ (ap_CS_fsm or tmp_7_reg_267 or or_cond_reg_276 or ap_sig_bdd_82 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_102 or ap_reg_ppiten_pp0_it2)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~(ap_const_lv1_0 == tmp_7_reg_267) & ~(ap_const_lv1_0 == or_cond_reg_276) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        src_data_stream_0_V_read = ap_const_logic_1;
    end else begin
        src_data_stream_0_V_read = ap_const_logic_0;
    end
end
always @ (ap_CS_fsm or ap_sig_bdd_47 or tmp_s_fu_153_p2 or tmp_7_fu_179_p2 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_82 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_102 or ap_reg_ppiten_pp0_it2)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
            if (~ap_sig_bdd_47) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        ap_ST_st2_fsm_1 : 
            if ((tmp_s_fu_153_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        ap_ST_pp0_stg0_fsm_2 : 
            if ((~((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & (ap_const_lv1_0 == tmp_7_fu_179_p2) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else if ((((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & (ap_const_lv1_0 == tmp_7_fu_179_p2) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        default : 
            ap_NS_fsm = 'bx;
    endcase
end

/// ap_sig_bdd_102 assign process. ///
always @ (dst_data_stream_0_V_full_n or dst_data_stream_1_V_full_n or dst_data_stream_2_V_full_n or ap_reg_ppstg_tmp_7_reg_267_pp0_it1 or ap_reg_ppstg_not_or_cond_reg_280_pp0_it1)
begin
    ap_sig_bdd_102 = (((dst_data_stream_0_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_7_reg_267_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_not_or_cond_reg_280_pp0_it1)) | (~(ap_const_lv1_0 == ap_reg_ppstg_tmp_7_reg_267_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_not_or_cond_reg_280_pp0_it1) & (dst_data_stream_1_V_full_n == ap_const_logic_0)) | (~(ap_const_lv1_0 == ap_reg_ppstg_tmp_7_reg_267_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_not_or_cond_reg_280_pp0_it1) & (dst_data_stream_2_V_full_n == ap_const_logic_0)));
end

/// ap_sig_bdd_47 assign process. ///
always @ (ap_start or ap_done_reg)
begin
    ap_sig_bdd_47 = ((ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_82 assign process. ///
always @ (src_data_stream_0_V_empty_n or tmp_7_reg_267 or or_cond_reg_276)
begin
    ap_sig_bdd_82 = ((src_data_stream_0_V_empty_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_7_reg_267) & ~(ap_const_lv1_0 == or_cond_reg_276));
end
assign dst_data_stream_0_V_din = pixel_in_val_fu_58;
assign dst_data_stream_1_V_din = pixel_in_val_fu_58;
assign dst_data_stream_2_V_din = pixel_in_val_fu_58;
assign i_V_fu_158_p2 = (t_V_5_reg_101 + ap_const_lv12_1);
assign j_V_fu_184_p2 = (t_V_reg_112 + ap_const_lv12_1);
assign not4_fu_190_p2 = (t_V_reg_112 < src_cols_V_read? 1'b1: 1'b0);
assign not_fu_164_p2 = (t_V_5_reg_101 < src_rows_V_read? 1'b1: 1'b0);
assign not_or_cond_fu_206_p2 = (notrhs_reg_262 & notlhs_fu_200_p2);
assign notlhs_fu_200_p2 = (t_V_reg_112 != ap_const_lv12_0? 1'b1: 1'b0);
assign notrhs_fu_169_p2 = (t_V_5_reg_101 != ap_const_lv12_0? 1'b1: 1'b0);
assign op2_assign_3_fu_138_p2 = (retval_i_cast_fu_134_p1 + ap_const_lv13_1);
assign op2_assign_fu_128_p2 = (retval_i4_cast_fu_124_p1 + ap_const_lv13_1);
assign or_cond_fu_195_p2 = (not_reg_257 & not4_fu_190_p2);
assign retval_i4_cast_fu_124_p1 = $unsigned(src_rows_V_read);
assign retval_i_cast_fu_134_p1 = $unsigned(src_cols_V_read);
assign tmp_7_fu_179_p2 = (tmp_9_cast_fu_175_p1 < op2_assign_3_reg_244? 1'b1: 1'b0);
assign tmp_9_cast_fu_175_p1 = $unsigned(t_V_reg_112);
assign tmp_cast_fu_149_p1 = $unsigned(t_V_5_reg_101);
assign tmp_s_fu_153_p2 = (tmp_cast_fu_149_p1 < op2_assign_reg_239? 1'b1: 1'b0);


endmodule //finger_counter

