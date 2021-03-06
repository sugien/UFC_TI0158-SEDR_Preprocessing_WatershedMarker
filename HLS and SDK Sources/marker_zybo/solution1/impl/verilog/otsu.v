// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module otsu (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        histData_address0,
        histData_ce0,
        histData_q0,
        ap_return
);

parameter    ap_ST_fsm_state1 = 65'd1;
parameter    ap_ST_fsm_state2 = 65'd2;
parameter    ap_ST_fsm_state3 = 65'd4;
parameter    ap_ST_fsm_state4 = 65'd8;
parameter    ap_ST_fsm_state5 = 65'd16;
parameter    ap_ST_fsm_state6 = 65'd32;
parameter    ap_ST_fsm_state7 = 65'd64;
parameter    ap_ST_fsm_state8 = 65'd128;
parameter    ap_ST_fsm_state9 = 65'd256;
parameter    ap_ST_fsm_state10 = 65'd512;
parameter    ap_ST_fsm_state11 = 65'd1024;
parameter    ap_ST_fsm_state12 = 65'd2048;
parameter    ap_ST_fsm_state13 = 65'd4096;
parameter    ap_ST_fsm_state14 = 65'd8192;
parameter    ap_ST_fsm_state15 = 65'd16384;
parameter    ap_ST_fsm_state16 = 65'd32768;
parameter    ap_ST_fsm_state17 = 65'd65536;
parameter    ap_ST_fsm_state18 = 65'd131072;
parameter    ap_ST_fsm_state19 = 65'd262144;
parameter    ap_ST_fsm_state20 = 65'd524288;
parameter    ap_ST_fsm_state21 = 65'd1048576;
parameter    ap_ST_fsm_state22 = 65'd2097152;
parameter    ap_ST_fsm_state23 = 65'd4194304;
parameter    ap_ST_fsm_state24 = 65'd8388608;
parameter    ap_ST_fsm_state25 = 65'd16777216;
parameter    ap_ST_fsm_state26 = 65'd33554432;
parameter    ap_ST_fsm_state27 = 65'd67108864;
parameter    ap_ST_fsm_state28 = 65'd134217728;
parameter    ap_ST_fsm_state29 = 65'd268435456;
parameter    ap_ST_fsm_state30 = 65'd536870912;
parameter    ap_ST_fsm_state31 = 65'd1073741824;
parameter    ap_ST_fsm_state32 = 65'd2147483648;
parameter    ap_ST_fsm_state33 = 65'd4294967296;
parameter    ap_ST_fsm_state34 = 65'd8589934592;
parameter    ap_ST_fsm_state35 = 65'd17179869184;
parameter    ap_ST_fsm_state36 = 65'd34359738368;
parameter    ap_ST_fsm_state37 = 65'd68719476736;
parameter    ap_ST_fsm_state38 = 65'd137438953472;
parameter    ap_ST_fsm_state39 = 65'd274877906944;
parameter    ap_ST_fsm_state40 = 65'd549755813888;
parameter    ap_ST_fsm_state41 = 65'd1099511627776;
parameter    ap_ST_fsm_state42 = 65'd2199023255552;
parameter    ap_ST_fsm_state43 = 65'd4398046511104;
parameter    ap_ST_fsm_state44 = 65'd8796093022208;
parameter    ap_ST_fsm_state45 = 65'd17592186044416;
parameter    ap_ST_fsm_state46 = 65'd35184372088832;
parameter    ap_ST_fsm_state47 = 65'd70368744177664;
parameter    ap_ST_fsm_state48 = 65'd140737488355328;
parameter    ap_ST_fsm_state49 = 65'd281474976710656;
parameter    ap_ST_fsm_state50 = 65'd562949953421312;
parameter    ap_ST_fsm_state51 = 65'd1125899906842624;
parameter    ap_ST_fsm_state52 = 65'd2251799813685248;
parameter    ap_ST_fsm_state53 = 65'd4503599627370496;
parameter    ap_ST_fsm_state54 = 65'd9007199254740992;
parameter    ap_ST_fsm_state55 = 65'd18014398509481984;
parameter    ap_ST_fsm_state56 = 65'd36028797018963968;
parameter    ap_ST_fsm_state57 = 65'd72057594037927936;
parameter    ap_ST_fsm_state58 = 65'd144115188075855872;
parameter    ap_ST_fsm_state59 = 65'd288230376151711744;
parameter    ap_ST_fsm_state60 = 65'd576460752303423488;
parameter    ap_ST_fsm_state61 = 65'd1152921504606846976;
parameter    ap_ST_fsm_state62 = 65'd2305843009213693952;
parameter    ap_ST_fsm_state63 = 65'd4611686018427387904;
parameter    ap_ST_fsm_state64 = 65'd9223372036854775808;
parameter    ap_ST_fsm_state65 = 65'd18446744073709551616;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] histData_address0;
output   histData_ce0;
input  [31:0] histData_q0;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] histData_address0;
reg histData_ce0;

(* fsm_encoding = "none" *) reg   [64:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg  signed [31:0] reg_148;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state17;
reg   [0:0] tmp_5_reg_436;
wire   [31:0] grp_fu_135_p1;
reg   [31:0] reg_152;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state34;
wire   [31:0] grp_fu_118_p2;
reg   [31:0] reg_159;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state55;
wire   [31:0] grp_fu_123_p2;
reg   [31:0] reg_167;
wire    ap_CS_fsm_state38;
wire    ap_CS_fsm_state59;
wire    ap_CS_fsm_state63;
wire   [31:0] t_cast2_fu_173_p1;
reg   [31:0] t_cast2_reg_386;
wire    ap_CS_fsm_state2;
wire   [8:0] t_1_fu_183_p2;
reg   [8:0] t_1_reg_394;
wire   [0:0] exitcond_fu_177_p2;
wire   [31:0] tmp_1_fu_209_p2;
reg   [31:0] tmp_1_reg_425;
wire    ap_CS_fsm_state4;
wire   [31:0] threshold_3_cast1_fu_214_p1;
reg   [31:0] threshold_3_cast1_reg_430;
wire    ap_CS_fsm_state16;
wire   [8:0] t_2_fu_226_p2;
reg   [8:0] t_2_reg_440;
wire   [31:0] wB_1_fu_237_p2;
reg   [31:0] wB_1_reg_450;
wire   [0:0] tmp_8_fu_243_p2;
reg   [0:0] tmp_8_reg_456;
wire   [31:0] wF_fu_249_p2;
reg   [31:0] wF_reg_460;
wire   [31:0] tmp_3_fu_261_p2;
reg   [31:0] tmp_3_reg_468;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state25;
reg   [31:0] tmp_9_reg_478;
wire   [31:0] grp_fu_138_p1;
reg   [31:0] tmp_10_reg_483;
wire   [31:0] grp_fu_127_p2;
reg   [31:0] mB_reg_489;
wire    ap_CS_fsm_state50;
wire   [31:0] grp_fu_131_p2;
reg   [31:0] mF_reg_494;
wire   [31:0] varMax_1_fu_363_p3;
reg   [31:0] varMax_1_reg_499;
wire    ap_CS_fsm_state64;
wire   [31:0] threshold_1_fu_371_p3;
reg   [31:0] threshold_1_reg_504;
reg   [8:0] t_reg_72;
reg   [31:0] sum_reg_83;
reg   [31:0] wB_reg_95;
wire    ap_CS_fsm_state65;
reg   [8:0] threshold_2_reg_107;
wire   [63:0] tmp_fu_189_p1;
wire   [63:0] tmp_6_fu_232_p1;
reg   [31:0] threshold_fu_40;
wire   [0:0] tmp_s_fu_255_p2;
reg   [31:0] sumB_fu_44;
wire    ap_CS_fsm_state30;
reg   [31:0] varMax_fu_48;
reg   [31:0] grp_fu_118_p0;
reg   [31:0] grp_fu_118_p1;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state51;
reg   [31:0] grp_fu_123_p0;
reg   [31:0] grp_fu_123_p1;
wire    ap_CS_fsm_state35;
wire    ap_CS_fsm_state56;
wire    ap_CS_fsm_state60;
reg   [31:0] grp_fu_135_p0;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state19;
wire   [8:0] tmp_1_fu_209_p1;
wire  signed [31:0] wB_1_fu_237_p0;
wire   [8:0] tmp_3_fu_261_p1;
wire   [31:0] varBetween_to_int_fu_279_p1;
wire   [31:0] varMax_to_int_fu_297_p1;
wire   [7:0] tmp_14_fu_283_p4;
wire   [22:0] tmp_15_fu_293_p1;
wire   [0:0] notrhs_fu_321_p2;
wire   [0:0] notlhs_fu_315_p2;
wire   [7:0] tmp_16_fu_301_p4;
wire   [22:0] tmp_17_fu_311_p1;
wire   [0:0] notrhs4_fu_339_p2;
wire   [0:0] notlhs3_fu_333_p2;
wire   [0:0] tmp_18_fu_327_p2;
wire   [0:0] tmp_19_fu_345_p2;
wire   [0:0] tmp_20_fu_351_p2;
wire   [0:0] tmp_21_fu_141_p2;
wire   [0:0] tmp_22_fu_357_p2;
reg   [1:0] grp_fu_118_opcode;
reg   [64:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 65'd1;
end

make_marker_faddfbkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
make_marker_faddfbkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_118_p0),
    .din1(grp_fu_118_p1),
    .opcode(grp_fu_118_opcode),
    .ce(1'b1),
    .dout(grp_fu_118_p2)
);

make_marker_fmul_cud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
make_marker_fmul_cud_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_123_p0),
    .din1(grp_fu_123_p1),
    .ce(1'b1),
    .dout(grp_fu_123_p2)
);

make_marker_fdiv_dEe #(
    .ID( 1 ),
    .NUM_STAGE( 16 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
make_marker_fdiv_dEe_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(reg_159),
    .din1(reg_152),
    .ce(1'b1),
    .dout(grp_fu_127_p2)
);

make_marker_fdiv_dEe #(
    .ID( 1 ),
    .NUM_STAGE( 16 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
make_marker_fdiv_dEe_U4(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_9_reg_478),
    .din1(tmp_10_reg_483),
    .ce(1'b1),
    .dout(grp_fu_131_p2)
);

make_marker_sitofeOg #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
make_marker_sitofeOg_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_135_p0),
    .ce(1'b1),
    .dout(grp_fu_135_p1)
);

make_marker_sitofeOg #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
make_marker_sitofeOg_U6(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(wF_reg_460),
    .ce(1'b1),
    .dout(grp_fu_138_p1)
);

make_marker_fcmp_fYi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
make_marker_fcmp_fYi_U7(
    .din0(reg_167),
    .din1(varMax_fu_48),
    .opcode(5'd2),
    .dout(tmp_21_fu_141_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        sumB_fu_44 <= reg_159;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond_fu_177_p2 == 1'd1))) begin
        sumB_fu_44 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        sum_reg_83 <= grp_fu_118_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_reg_83 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        t_reg_72 <= t_1_reg_394;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_reg_72 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        threshold_2_reg_107 <= t_2_reg_440;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond_fu_177_p2 == 1'd1))) begin
        threshold_2_reg_107 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state65) & (tmp_8_reg_456 == 1'd0))) begin
        threshold_fu_40 <= threshold_1_reg_504;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond_fu_177_p2 == 1'd1))) begin
        threshold_fu_40 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state65) & (tmp_8_reg_456 == 1'd0))) begin
        varMax_fu_48 <= varMax_1_reg_499;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond_fu_177_p2 == 1'd1))) begin
        varMax_fu_48 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        wB_reg_95 <= wB_1_reg_450;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond_fu_177_p2 == 1'd1))) begin
        wB_reg_95 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        mB_reg_489 <= grp_fu_127_p2;
        mF_reg_494 <= grp_fu_131_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state17) & (tmp_5_reg_436 == 1'd0)))) begin
        reg_148 <= histData_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_152 <= grp_fu_135_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_159 <= grp_fu_118_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state38))) begin
        reg_167 <= grp_fu_123_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        t_1_reg_394 <= t_1_fu_183_p2;
        t_cast2_reg_386[8 : 0] <= t_cast2_fu_173_p1[8 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        t_2_reg_440 <= t_2_fu_226_p2;
        threshold_3_cast1_reg_430[8 : 0] <= threshold_3_cast1_fu_214_p1[8 : 0];
        tmp_5_reg_436 <= threshold_2_reg_107[32'd8];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state64)) begin
        threshold_1_reg_504 <= threshold_1_fu_371_p3;
        varMax_1_reg_499 <= varMax_1_fu_363_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        tmp_10_reg_483 <= grp_fu_138_p1;
        tmp_9_reg_478 <= grp_fu_118_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_1_reg_425 <= tmp_1_fu_209_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        tmp_3_reg_468 <= tmp_3_fu_261_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state17) & (tmp_5_reg_436 == 1'd0))) begin
        tmp_8_reg_456 <= tmp_8_fu_243_p2;
        wB_1_reg_450 <= wB_1_fu_237_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state17) & (tmp_8_fu_243_p2 == 1'd0) & (tmp_5_reg_436 == 1'd0))) begin
        wF_reg_460 <= wF_fu_249_p2;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state17) & ((tmp_5_reg_436 == 1'd1) | ((tmp_s_fu_255_p2 == 1'd1) & (tmp_8_fu_243_p2 == 1'd0)))))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) & ((tmp_5_reg_436 == 1'd1) | ((tmp_s_fu_255_p2 == 1'd1) & (tmp_8_fu_243_p2 == 1'd0))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state30))) begin
        grp_fu_118_opcode = 2'd1;
    end else if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_118_opcode = 2'd0;
    end else begin
        grp_fu_118_opcode = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_118_p0 = mB_reg_489;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_118_p0 = sumB_fu_44;
    end else if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state30))) begin
        grp_fu_118_p0 = sum_reg_83;
    end else begin
        grp_fu_118_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_118_p1 = mF_reg_494;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_118_p1 = reg_159;
    end else if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_118_p1 = reg_152;
    end else begin
        grp_fu_118_p1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state56))) begin
        grp_fu_123_p0 = reg_167;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_123_p0 = reg_152;
    end else begin
        grp_fu_123_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state56))) begin
        grp_fu_123_p1 = reg_159;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_123_p1 = tmp_10_reg_483;
    end else begin
        grp_fu_123_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_135_p0 = wB_1_reg_450;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_135_p0 = tmp_3_reg_468;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_135_p0 = tmp_1_reg_425;
    end else begin
        grp_fu_135_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        histData_address0 = tmp_6_fu_232_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        histData_address0 = tmp_fu_189_p1;
    end else begin
        histData_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state2))) begin
        histData_ce0 = 1'b1;
    end else begin
        histData_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond_fu_177_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((1'b1 == ap_CS_fsm_state17) & ((tmp_5_reg_436 == 1'd1) | ((tmp_s_fu_255_p2 == 1'd1) & (tmp_8_fu_243_p2 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b1 == ap_CS_fsm_state17) & (tmp_s_fu_255_p2 == 1'd0) & (tmp_8_fu_243_p2 == 1'd0) & (tmp_5_reg_436 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state65;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            ap_NS_fsm = ap_ST_fsm_state52;
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            ap_NS_fsm = ap_ST_fsm_state54;
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            ap_NS_fsm = ap_ST_fsm_state56;
        end
        ap_ST_fsm_state56 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        ap_ST_fsm_state57 : begin
            ap_NS_fsm = ap_ST_fsm_state58;
        end
        ap_ST_fsm_state58 : begin
            ap_NS_fsm = ap_ST_fsm_state59;
        end
        ap_ST_fsm_state59 : begin
            ap_NS_fsm = ap_ST_fsm_state60;
        end
        ap_ST_fsm_state60 : begin
            ap_NS_fsm = ap_ST_fsm_state61;
        end
        ap_ST_fsm_state61 : begin
            ap_NS_fsm = ap_ST_fsm_state62;
        end
        ap_ST_fsm_state62 : begin
            ap_NS_fsm = ap_ST_fsm_state63;
        end
        ap_ST_fsm_state63 : begin
            ap_NS_fsm = ap_ST_fsm_state64;
        end
        ap_ST_fsm_state64 : begin
            ap_NS_fsm = ap_ST_fsm_state65;
        end
        ap_ST_fsm_state65 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];

assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];

assign ap_CS_fsm_state35 = ap_CS_fsm[32'd34];

assign ap_CS_fsm_state38 = ap_CS_fsm[32'd37];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state50 = ap_CS_fsm[32'd49];

assign ap_CS_fsm_state51 = ap_CS_fsm[32'd50];

assign ap_CS_fsm_state55 = ap_CS_fsm[32'd54];

assign ap_CS_fsm_state56 = ap_CS_fsm[32'd55];

assign ap_CS_fsm_state59 = ap_CS_fsm[32'd58];

assign ap_CS_fsm_state60 = ap_CS_fsm[32'd59];

assign ap_CS_fsm_state63 = ap_CS_fsm[32'd62];

assign ap_CS_fsm_state64 = ap_CS_fsm[32'd63];

assign ap_CS_fsm_state65 = ap_CS_fsm[32'd64];

assign ap_return = threshold_fu_40;

assign exitcond_fu_177_p2 = ((t_reg_72 == 9'd256) ? 1'b1 : 1'b0);

assign notlhs3_fu_333_p2 = ((tmp_16_fu_301_p4 != 8'd255) ? 1'b1 : 1'b0);

assign notlhs_fu_315_p2 = ((tmp_14_fu_283_p4 != 8'd255) ? 1'b1 : 1'b0);

assign notrhs4_fu_339_p2 = ((tmp_17_fu_311_p1 == 23'd0) ? 1'b1 : 1'b0);

assign notrhs_fu_321_p2 = ((tmp_15_fu_293_p1 == 23'd0) ? 1'b1 : 1'b0);

assign t_1_fu_183_p2 = (t_reg_72 + 9'd1);

assign t_2_fu_226_p2 = (threshold_2_reg_107 + 9'd1);

assign t_cast2_fu_173_p1 = t_reg_72;

assign threshold_1_fu_371_p3 = ((tmp_22_fu_357_p2[0:0] === 1'b1) ? threshold_3_cast1_reg_430 : threshold_fu_40);

assign threshold_3_cast1_fu_214_p1 = threshold_2_reg_107;

assign tmp_14_fu_283_p4 = {{varBetween_to_int_fu_279_p1[30:23]}};

assign tmp_15_fu_293_p1 = varBetween_to_int_fu_279_p1[22:0];

assign tmp_16_fu_301_p4 = {{varMax_to_int_fu_297_p1[30:23]}};

assign tmp_17_fu_311_p1 = varMax_to_int_fu_297_p1[22:0];

assign tmp_18_fu_327_p2 = (notrhs_fu_321_p2 | notlhs_fu_315_p2);

assign tmp_19_fu_345_p2 = (notrhs4_fu_339_p2 | notlhs3_fu_333_p2);

assign tmp_1_fu_209_p1 = t_cast2_reg_386;

assign tmp_1_fu_209_p2 = ($signed(reg_148) * $signed({{1'b0}, {tmp_1_fu_209_p1}}));

assign tmp_20_fu_351_p2 = (tmp_19_fu_345_p2 & tmp_18_fu_327_p2);

assign tmp_22_fu_357_p2 = (tmp_21_fu_141_p2 & tmp_20_fu_351_p2);

assign tmp_3_fu_261_p1 = threshold_3_cast1_reg_430;

assign tmp_3_fu_261_p2 = ($signed(reg_148) * $signed({{1'b0}, {tmp_3_fu_261_p1}}));

assign tmp_6_fu_232_p1 = threshold_2_reg_107;

assign tmp_8_fu_243_p2 = ((wB_1_fu_237_p2 == 32'd0) ? 1'b1 : 1'b0);

assign tmp_fu_189_p1 = t_reg_72;

assign tmp_s_fu_255_p2 = ((wB_1_fu_237_p2 == 32'd64170) ? 1'b1 : 1'b0);

assign varBetween_to_int_fu_279_p1 = reg_167;

assign varMax_1_fu_363_p3 = ((tmp_22_fu_357_p2[0:0] === 1'b1) ? reg_167 : varMax_fu_48);

assign varMax_to_int_fu_297_p1 = varMax_fu_48;

assign wB_1_fu_237_p0 = histData_q0;

assign wB_1_fu_237_p2 = ($signed(wB_1_fu_237_p0) + $signed(wB_reg_95));

assign wF_fu_249_p2 = (32'd64170 - wB_1_fu_237_p2);

always @ (posedge ap_clk) begin
    t_cast2_reg_386[31:9] <= 23'b00000000000000000000000;
    threshold_3_cast1_reg_430[31:9] <= 23'b00000000000000000000000;
end

endmodule //otsu
