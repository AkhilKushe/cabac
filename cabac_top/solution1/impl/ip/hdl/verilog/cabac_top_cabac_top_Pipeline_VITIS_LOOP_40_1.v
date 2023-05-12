// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        streamCtxRAM_din,
        streamCtxRAM_full_n,
        streamCtxRAM_write,
        icmp_ln79,
        icmp_ln79_1,
        zext_ln40
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] streamCtxRAM_din;
input   streamCtxRAM_full_n;
output   streamCtxRAM_write;
input  [0:0] icmp_ln79;
input  [0:0] icmp_ln79_1;
input  [5:0] zext_ln40;

reg ap_idle;
reg streamCtxRAM_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
reg    ap_block_state6_pp0_stage0_iter5;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln40_fu_168_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [2:0] B_FRAME_INIT_VALS_address0;
reg    B_FRAME_INIT_VALS_ce0;
wire   [7:0] B_FRAME_INIT_VALS_q0;
wire   [2:0] P_FRAME_INIT_VALS_address0;
reg    P_FRAME_INIT_VALS_ce0;
wire   [7:0] P_FRAME_INIT_VALS_q0;
wire   [2:0] I_FRAME_INIT_VALS_address0;
reg    I_FRAME_INIT_VALS_ce0;
wire   [7:0] I_FRAME_INIT_VALS_q0;
reg    streamCtxRAM_blk_n;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire   [12:0] zext_ln40_cast_fu_156_p1;
reg   [12:0] zext_ln40_cast_reg_372;
wire   [6:0] slope_fu_238_p2;
reg  signed [6:0] slope_reg_396;
wire   [3:0] trunc_ln12_fu_244_p1;
reg   [3:0] trunc_ln12_reg_401;
reg   [3:0] trunc_ln12_reg_401_pp0_iter2_reg;
reg   [8:0] trunc_ln2_reg_406;
wire   [9:0] add_ln14_1_fu_286_p2;
reg   [9:0] add_ln14_1_reg_411;
wire   [6:0] initState_fu_314_p3;
reg   [6:0] initState_reg_417;
reg   [0:0] tmp_reg_423;
wire   [63:0] i_1_cast_fu_180_p1;
reg   [2:0] i_1_fu_88;
wire   [2:0] add_ln40_fu_174_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i;
reg    ap_block_pp0_stage0_01001;
wire   [7:0] select_ln41_fu_192_p3;
wire   [7:0] select_ln41_1_fu_199_p3;
wire   [3:0] trunc_ln1_fu_206_p4;
wire   [5:0] and_ln_fu_220_p3;
wire   [6:0] zext_ln11_fu_216_p1;
wire   [6:0] add_ln11_fu_232_p2;
wire   [6:0] zext_ln11_2_fu_228_p1;
wire   [5:0] mul_ln14_fu_251_p1;
wire   [12:0] mul_ln14_fu_251_p2;
wire   [6:0] shl_ln_fu_266_p3;
wire  signed [9:0] sext_ln14_fu_277_p1;
wire   [9:0] add_ln14_fu_280_p2;
wire   [9:0] zext_ln14_fu_273_p1;
wire   [0:0] icmp_ln8_fu_292_p2;
wire   [9:0] select_ln8_fu_297_p3;
wire   [0:0] icmp_ln14_fu_308_p2;
wire   [6:0] trunc_ln13_fu_304_p1;
wire   [6:0] xor_ln16_fu_330_p2;
wire   [6:0] sub_ln16_fu_335_p2;
wire   [6:0] select_ln16_fu_340_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_done_reg = 1'b0;
end

cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_B_FRAME_INIT_VALS_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 5 ),
    .AddressWidth( 3 ))
B_FRAME_INIT_VALS_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(B_FRAME_INIT_VALS_address0),
    .ce0(B_FRAME_INIT_VALS_ce0),
    .q0(B_FRAME_INIT_VALS_q0)
);

cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_P_FRAME_INIT_VALS_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 5 ),
    .AddressWidth( 3 ))
P_FRAME_INIT_VALS_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(P_FRAME_INIT_VALS_address0),
    .ce0(P_FRAME_INIT_VALS_ce0),
    .q0(P_FRAME_INIT_VALS_q0)
);

cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_I_FRAME_INIT_VALS_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 5 ),
    .AddressWidth( 3 ))
I_FRAME_INIT_VALS_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(I_FRAME_INIT_VALS_address0),
    .ce0(I_FRAME_INIT_VALS_ce0),
    .q0(I_FRAME_INIT_VALS_q0)
);

cabac_top_mul_7s_6ns_13_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 7 ),
    .din1_WIDTH( 6 ),
    .dout_WIDTH( 13 ))
mul_7s_6ns_13_1_1_U4(
    .din0(slope_reg_396),
    .din1(mul_ln14_fu_251_p1),
    .dout(mul_ln14_fu_251_p2)
);

cabac_top_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln40_fu_168_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_1_fu_88 <= add_ln40_fu_174_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_88 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln14_1_reg_411 <= add_ln14_1_fu_286_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        initState_reg_417 <= initState_fu_314_p3;
        tmp_reg_423 <= initState_fu_314_p3[32'd6];
        trunc_ln12_reg_401_pp0_iter2_reg <= trunc_ln12_reg_401;
        trunc_ln2_reg_406 <= {{mul_ln14_fu_251_p2[12:4]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        slope_reg_396 <= slope_fu_238_p2;
        trunc_ln12_reg_401 <= trunc_ln12_fu_244_p1;
        zext_ln40_cast_reg_372[5 : 0] <= zext_ln40_cast_fu_156_p1[5 : 0];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_FRAME_INIT_VALS_ce0 = 1'b1;
    end else begin
        B_FRAME_INIT_VALS_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        I_FRAME_INIT_VALS_ce0 = 1'b1;
    end else begin
        I_FRAME_INIT_VALS_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        P_FRAME_INIT_VALS_ce0 = 1'b1;
    end else begin
        P_FRAME_INIT_VALS_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln40_fu_168_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i = 3'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_88;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        streamCtxRAM_blk_n = streamCtxRAM_full_n;
    end else begin
        streamCtxRAM_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        streamCtxRAM_write = 1'b1;
    end else begin
        streamCtxRAM_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign B_FRAME_INIT_VALS_address0 = i_1_cast_fu_180_p1;

assign I_FRAME_INIT_VALS_address0 = i_1_cast_fu_180_p1;

assign P_FRAME_INIT_VALS_address0 = i_1_cast_fu_180_p1;

assign add_ln11_fu_232_p2 = ($signed(zext_ln11_fu_216_p1) + $signed(7'd83));

assign add_ln14_1_fu_286_p2 = (add_ln14_fu_280_p2 + zext_ln14_fu_273_p1);

assign add_ln14_fu_280_p2 = ($signed(sext_ln14_fu_277_p1) + $signed(10'd1008));

assign add_ln40_fu_174_p2 = (ap_sig_allocacmp_i + 3'd1);

assign and_ln_fu_220_p3 = {{trunc_ln1_fu_206_p4}, {2'd0}};

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((streamCtxRAM_full_n == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((streamCtxRAM_full_n == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((streamCtxRAM_full_n == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp0_stage0_iter5 = (streamCtxRAM_full_n == 1'b0);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_1_cast_fu_180_p1 = ap_sig_allocacmp_i;

assign icmp_ln14_fu_308_p2 = ((select_ln8_fu_297_p3 < 10'd126) ? 1'b1 : 1'b0);

assign icmp_ln40_fu_168_p2 = ((ap_sig_allocacmp_i == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln8_fu_292_p2 = (($signed(add_ln14_1_reg_411) < $signed(10'd1)) ? 1'b1 : 1'b0);

assign initState_fu_314_p3 = ((icmp_ln14_fu_308_p2[0:0] == 1'b1) ? trunc_ln13_fu_304_p1 : 7'd126);

assign mul_ln14_fu_251_p1 = zext_ln40_cast_reg_372;

assign select_ln16_fu_340_p3 = ((tmp_reg_423[0:0] == 1'b1) ? xor_ln16_fu_330_p2 : sub_ln16_fu_335_p2);

assign select_ln41_1_fu_199_p3 = ((icmp_ln79_1[0:0] == 1'b1) ? B_FRAME_INIT_VALS_q0 : select_ln41_fu_192_p3);

assign select_ln41_fu_192_p3 = ((icmp_ln79[0:0] == 1'b1) ? P_FRAME_INIT_VALS_q0 : I_FRAME_INIT_VALS_q0);

assign select_ln8_fu_297_p3 = ((icmp_ln8_fu_292_p2[0:0] == 1'b1) ? 10'd1 : add_ln14_1_reg_411);

assign sext_ln14_fu_277_p1 = $signed(trunc_ln2_reg_406);

assign shl_ln_fu_266_p3 = {{trunc_ln12_reg_401_pp0_iter2_reg}, {3'd0}};

assign slope_fu_238_p2 = (add_ln11_fu_232_p2 + zext_ln11_2_fu_228_p1);

assign streamCtxRAM_din = {{select_ln16_fu_340_p3}, {tmp_reg_423}};

assign sub_ln16_fu_335_p2 = (7'd63 - initState_reg_417);

assign trunc_ln12_fu_244_p1 = select_ln41_1_fu_199_p3[3:0];

assign trunc_ln13_fu_304_p1 = select_ln8_fu_297_p3[6:0];

assign trunc_ln1_fu_206_p4 = {{select_ln41_1_fu_199_p3[7:4]}};

assign xor_ln16_fu_330_p2 = (initState_reg_417 ^ 7'd64);

assign zext_ln11_2_fu_228_p1 = and_ln_fu_220_p3;

assign zext_ln11_fu_216_p1 = trunc_ln1_fu_206_p4;

assign zext_ln14_fu_273_p1 = shl_ln_fu_266_p3;

assign zext_ln40_cast_fu_156_p1 = zext_ln40;

always @ (posedge ap_clk) begin
    zext_ln40_cast_reg_372[12:6] <= 7'b0000000;
end

endmodule //cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1
