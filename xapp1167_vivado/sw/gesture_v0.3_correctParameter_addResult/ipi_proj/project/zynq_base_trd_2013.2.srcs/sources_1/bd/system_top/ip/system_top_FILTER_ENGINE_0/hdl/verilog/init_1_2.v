// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.2
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module init_1_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_rows,
        p_cols,
        ap_return_0,
        ap_return_1
);

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] p_rows;
input  [31:0] p_cols;
output  [11:0] ap_return_0;
output  [11:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[11:0] ap_return_0;
reg[11:0] ap_return_1;
reg    ap_done_reg = 1'b0;
reg   [0:0] ap_CS_fsm = 1'b0;
reg    ap_sig_bdd_29;
wire   [11:0] tmp_fu_29_p1;
wire   [11:0] tmp_20_fu_33_p1;
reg   [11:0] ap_return_0_preg = 12'b000000000000;
reg   [11:0] ap_return_1_preg = 12'b000000000000;
reg   [0:0] ap_NS_fsm;
parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 1'b0;
parameter    ap_const_lv12_0 = 12'b000000000000;
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
        end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_29)) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_return_0_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_return_0_preg
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= ap_const_lv12_0;
    end else begin
        if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_29)) begin
            ap_return_0_preg <= tmp_fu_29_p1;
        end
    end
end

/// ap_return_1_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_return_1_preg
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= ap_const_lv12_0;
    end else begin
        if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_29)) begin
            ap_return_1_preg <= tmp_20_fu_33_p1;
        end
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_CS_fsm or ap_sig_bdd_29)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_29))) begin
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
always @ (ap_CS_fsm or ap_sig_bdd_29)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_29)) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_return_0 assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_29 or tmp_fu_29_p1 or ap_return_0_preg)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_29)) begin
        ap_return_0 = tmp_fu_29_p1;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

/// ap_return_1 assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_29 or tmp_20_fu_33_p1 or ap_return_1_preg)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_29)) begin
        ap_return_1 = tmp_20_fu_33_p1;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end
always @ (ap_CS_fsm or ap_sig_bdd_29)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
            ap_NS_fsm = ap_ST_st1_fsm_0;
        default : 
            ap_NS_fsm = 'bx;
    endcase
end

/// ap_sig_bdd_29 assign process. ///
always @ (ap_start or ap_done_reg)
begin
    ap_sig_bdd_29 = ((ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end
assign tmp_20_fu_33_p1 = p_cols[11:0];
assign tmp_fu_29_p1 = p_rows[11:0];


endmodule //init_1_2

