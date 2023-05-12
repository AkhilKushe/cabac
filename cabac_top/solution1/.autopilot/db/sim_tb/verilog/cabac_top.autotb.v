// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      cabac_top
`define AUTOTB_DUT_INST AESL_inst_cabac_top
`define AUTOTB_TOP      apatb_cabac_top_top
`define AUTOTB_LAT_RESULT_FILE "cabac_top.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "cabac_top.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_cabac_top_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_ctx 1
`define AESL_DEPTH_globalCtx 1
`define AESL_DEPTH_bitStream 1
`define AESL_DEPTH_bitOut 1
`define AESL_DEPTH_data_in_s 1
`define AESL_DEPTH_data_out_s 1
`define AESL_DEPTH_ap_local_deadlock 1
`define AUTOTB_TVIN_ctx  "./c.cabac_top.autotvin_ctx.dat"
`define AUTOTB_TVIN_globalCtx  "./c.cabac_top.autotvin_globalCtx.dat"
`define AUTOTB_TVIN_bitStream  "./c.cabac_top.autotvin_bitStream.dat"
`define AUTOTB_TVIN_data_in_s  "./c.cabac_top.autotvin_data_in_s.dat"
`define AUTOTB_TVIN_ctx_out_wrapc  "./rtl.cabac_top.autotvin_ctx.dat"
`define AUTOTB_TVIN_globalCtx_out_wrapc  "./rtl.cabac_top.autotvin_globalCtx.dat"
`define AUTOTB_TVIN_bitStream_out_wrapc  "./rtl.cabac_top.autotvin_bitStream.dat"
`define AUTOTB_TVIN_data_in_s_out_wrapc  "./rtl.cabac_top.autotvin_data_in_s.dat"
`define AUTOTB_TVOUT_ctx  "./c.cabac_top.autotvout_ctx.dat"
`define AUTOTB_TVOUT_data_out_s  "./c.cabac_top.autotvout_data_out_s.dat"
`define AUTOTB_TVOUT_ctx_out_wrapc  "./impl_rtl.cabac_top.autotvout_ctx.dat"
`define AUTOTB_TVOUT_data_out_s_out_wrapc  "./impl_rtl.cabac_top.autotvout_data_out_s.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_ctx = 512;
parameter LENGTH_globalCtx = 1;
parameter LENGTH_bitStream = 7;
parameter LENGTH_bitOut = 0;
parameter LENGTH_data_in_s = 1;
parameter LENGTH_data_out_s = 1;

task read_token;
    input integer fp;
    output reg [8215 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

task post_check;
    input integer fp1;
    input integer fp2;
    reg [8215 : 0] token1;
    reg [8215 : 0] token2;
    reg [8215 : 0] golden;
    reg [8215 : 0] result;
    integer ret;
    begin
        read_token(fp1, token1);
        read_token(fp2, token2);
        if (token1 != "[[[runtime]]]" || token2 != "[[[runtime]]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
            $finish;
        end
        read_token(fp1, token1);
        read_token(fp2, token2);
        while (token1 != "[[[/runtime]]]" && token2 != "[[[/runtime]]]") begin
            if (token1 != "[[transaction]]" || token2 != "[[transaction]]") begin
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
            end
            read_token(fp1, token1);  // skip transaction number
            read_token(fp2, token2);  // skip transaction number
              read_token(fp1, token1);
              read_token(fp2, token2);
            while(token1 != "[[/transaction]]" && token2 != "[[/transaction]]") begin
                ret = $sscanf(token1, "0x%x", golden);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                ret = $sscanf(token2, "0x%x", result);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                if(golden != result) begin
                      $display("%x (expected) vs. %x (actual) - mismatch", golden, result);
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                end
                  read_token(fp1, token1);
                  read_token(fp2, token2);
            end
              read_token(fp1, token1);
              read_token(fp2, token2);
        end
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [4 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [4 : 0] control_ARADDR;
wire  control_ARVALID;
wire  control_ARREADY;
wire  control_RVALID;
wire  control_RREADY;
wire [31 : 0] control_RDATA;
wire [1 : 0] control_RRESP;
wire  control_BVALID;
wire  control_BREADY;
wire [1 : 0] control_BRESP;
wire  control_INTERRUPT;
wire  ap_local_block;
wire  ctx_AWVALID;
wire  ctx_AWREADY;
wire [63 : 0] ctx_AWADDR;
wire [0 : 0] ctx_AWID;
wire [7 : 0] ctx_AWLEN;
wire [2 : 0] ctx_AWSIZE;
wire [1 : 0] ctx_AWBURST;
wire [1 : 0] ctx_AWLOCK;
wire [3 : 0] ctx_AWCACHE;
wire [2 : 0] ctx_AWPROT;
wire [3 : 0] ctx_AWQOS;
wire [3 : 0] ctx_AWREGION;
wire [0 : 0] ctx_AWUSER;
wire  ctx_WVALID;
wire  ctx_WREADY;
wire [31 : 0] ctx_WDATA;
wire [3 : 0] ctx_WSTRB;
wire  ctx_WLAST;
wire [0 : 0] ctx_WID;
wire [0 : 0] ctx_WUSER;
wire  ctx_ARVALID;
wire  ctx_ARREADY;
wire [63 : 0] ctx_ARADDR;
wire [0 : 0] ctx_ARID;
wire [7 : 0] ctx_ARLEN;
wire [2 : 0] ctx_ARSIZE;
wire [1 : 0] ctx_ARBURST;
wire [1 : 0] ctx_ARLOCK;
wire [3 : 0] ctx_ARCACHE;
wire [2 : 0] ctx_ARPROT;
wire [3 : 0] ctx_ARQOS;
wire [3 : 0] ctx_ARREGION;
wire [0 : 0] ctx_ARUSER;
wire  ctx_RVALID;
wire  ctx_RREADY;
wire [31 : 0] ctx_RDATA;
wire  ctx_RLAST;
wire [0 : 0] ctx_RID;
wire [0 : 0] ctx_RUSER;
wire [1 : 0] ctx_RRESP;
wire  ctx_BVALID;
wire  ctx_BREADY;
wire [1 : 0] ctx_BRESP;
wire [0 : 0] ctx_BID;
wire [0 : 0] ctx_BUSER;
wire [7 : 0] bitStream_TDATA;
wire  bitStream_TVALID;
wire  bitStream_TREADY;
wire [7 : 0] bitOut_TDATA;
wire  bitOut_TVALID;
wire  bitOut_TREADY;
wire [4095 : 0] data_in_s_TDATA;
wire  data_in_s_TVALID;
wire  data_in_s_TREADY;
wire [335 : 0] data_out_s_TDATA;
wire  data_out_s_TVALID;
wire  data_out_s_TREADY;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire control_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;


wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_control_AWADDR(control_AWADDR),
    .s_axi_control_AWVALID(control_AWVALID),
    .s_axi_control_AWREADY(control_AWREADY),
    .s_axi_control_WVALID(control_WVALID),
    .s_axi_control_WREADY(control_WREADY),
    .s_axi_control_WDATA(control_WDATA),
    .s_axi_control_WSTRB(control_WSTRB),
    .s_axi_control_ARADDR(control_ARADDR),
    .s_axi_control_ARVALID(control_ARVALID),
    .s_axi_control_ARREADY(control_ARREADY),
    .s_axi_control_RVALID(control_RVALID),
    .s_axi_control_RREADY(control_RREADY),
    .s_axi_control_RDATA(control_RDATA),
    .s_axi_control_RRESP(control_RRESP),
    .s_axi_control_BVALID(control_BVALID),
    .s_axi_control_BREADY(control_BREADY),
    .s_axi_control_BRESP(control_BRESP),
    .interrupt(control_INTERRUPT),
    .ap_local_block(ap_local_block),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_ctx_AWVALID(ctx_AWVALID),
    .m_axi_ctx_AWREADY(ctx_AWREADY),
    .m_axi_ctx_AWADDR(ctx_AWADDR),
    .m_axi_ctx_AWID(ctx_AWID),
    .m_axi_ctx_AWLEN(ctx_AWLEN),
    .m_axi_ctx_AWSIZE(ctx_AWSIZE),
    .m_axi_ctx_AWBURST(ctx_AWBURST),
    .m_axi_ctx_AWLOCK(ctx_AWLOCK),
    .m_axi_ctx_AWCACHE(ctx_AWCACHE),
    .m_axi_ctx_AWPROT(ctx_AWPROT),
    .m_axi_ctx_AWQOS(ctx_AWQOS),
    .m_axi_ctx_AWREGION(ctx_AWREGION),
    .m_axi_ctx_AWUSER(ctx_AWUSER),
    .m_axi_ctx_WVALID(ctx_WVALID),
    .m_axi_ctx_WREADY(ctx_WREADY),
    .m_axi_ctx_WDATA(ctx_WDATA),
    .m_axi_ctx_WSTRB(ctx_WSTRB),
    .m_axi_ctx_WLAST(ctx_WLAST),
    .m_axi_ctx_WID(ctx_WID),
    .m_axi_ctx_WUSER(ctx_WUSER),
    .m_axi_ctx_ARVALID(ctx_ARVALID),
    .m_axi_ctx_ARREADY(ctx_ARREADY),
    .m_axi_ctx_ARADDR(ctx_ARADDR),
    .m_axi_ctx_ARID(ctx_ARID),
    .m_axi_ctx_ARLEN(ctx_ARLEN),
    .m_axi_ctx_ARSIZE(ctx_ARSIZE),
    .m_axi_ctx_ARBURST(ctx_ARBURST),
    .m_axi_ctx_ARLOCK(ctx_ARLOCK),
    .m_axi_ctx_ARCACHE(ctx_ARCACHE),
    .m_axi_ctx_ARPROT(ctx_ARPROT),
    .m_axi_ctx_ARQOS(ctx_ARQOS),
    .m_axi_ctx_ARREGION(ctx_ARREGION),
    .m_axi_ctx_ARUSER(ctx_ARUSER),
    .m_axi_ctx_RVALID(ctx_RVALID),
    .m_axi_ctx_RREADY(ctx_RREADY),
    .m_axi_ctx_RDATA(ctx_RDATA),
    .m_axi_ctx_RLAST(ctx_RLAST),
    .m_axi_ctx_RID(ctx_RID),
    .m_axi_ctx_RUSER(ctx_RUSER),
    .m_axi_ctx_RRESP(ctx_RRESP),
    .m_axi_ctx_BVALID(ctx_BVALID),
    .m_axi_ctx_BREADY(ctx_BREADY),
    .m_axi_ctx_BRESP(ctx_BRESP),
    .m_axi_ctx_BID(ctx_BID),
    .m_axi_ctx_BUSER(ctx_BUSER),
    .bitStream_TDATA(bitStream_TDATA),
    .bitStream_TVALID(bitStream_TVALID),
    .bitStream_TREADY(bitStream_TREADY),
    .bitOut_TDATA(bitOut_TDATA),
    .bitOut_TVALID(bitOut_TVALID),
    .bitOut_TREADY(bitOut_TREADY),
    .data_in_s_TDATA(data_in_s_TDATA),
    .data_in_s_TVALID(data_in_s_TVALID),
    .data_in_s_TREADY(data_in_s_TREADY),
    .data_out_s_TDATA(data_out_s_TDATA),
    .data_out_s_TVALID(data_out_s_TVALID),
    .data_out_s_TREADY(data_out_s_TREADY));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & control_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end







reg [31:0] ap_c_n_tvin_trans_num_bitStream;

reg bitStream_ready_reg; // for self-sync

wire bitStream_ready;
wire bitStream_done;
wire [31:0] bitStream_transaction;
wire axi_s_bitStream_TVALID;
wire axi_s_bitStream_TREADY;

AESL_axi_s_bitStream AESL_AXI_S_bitStream(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_bitStream_TDATA(bitStream_TDATA),
    .TRAN_bitStream_TVALID(axi_s_bitStream_TVALID),
    .TRAN_bitStream_TREADY(axi_s_bitStream_TREADY),
    .ready(bitStream_ready),
    .done(bitStream_done),
    .transaction(bitStream_transaction));

assign bitStream_ready = bitStream_ready_reg | ready_initial;
assign bitStream_done = 0;

assign bitStream_TVALID = axi_s_bitStream_TVALID;

assign axi_s_bitStream_TREADY = bitStream_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_data_in_s;

reg data_in_s_ready_reg; // for self-sync

wire data_in_s_ready;
wire data_in_s_done;
wire [31:0] data_in_s_transaction;
wire axi_s_data_in_s_TVALID;
wire axi_s_data_in_s_TREADY;

AESL_axi_s_data_in_s AESL_AXI_S_data_in_s(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_data_in_s_TDATA(data_in_s_TDATA),
    .TRAN_data_in_s_TVALID(axi_s_data_in_s_TVALID),
    .TRAN_data_in_s_TREADY(axi_s_data_in_s_TREADY),
    .ready(data_in_s_ready),
    .done(data_in_s_done),
    .transaction(data_in_s_transaction));

assign data_in_s_ready = data_in_s_ready_reg | ready_initial;
assign data_in_s_done = 0;

assign data_in_s_TVALID = axi_s_data_in_s_TVALID;

assign axi_s_data_in_s_TREADY = data_in_s_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_data_out_s;

reg data_out_s_ready_reg; // for self-sync

wire data_out_s_ready;
wire data_out_s_done;
wire [31:0] data_out_s_transaction;
wire axi_s_data_out_s_TVALID;
wire axi_s_data_out_s_TREADY;

AESL_axi_s_data_out_s AESL_AXI_S_data_out_s(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_data_out_s_TDATA(data_out_s_TDATA),
    .TRAN_data_out_s_TVALID(axi_s_data_out_s_TVALID),
    .TRAN_data_out_s_TREADY(axi_s_data_out_s_TREADY),
    .ready(data_out_s_ready),
    .done(data_out_s_done),
    .transaction(data_out_s_transaction));

assign data_out_s_ready = 0;
assign data_out_s_done = AESL_done;

assign axi_s_data_out_s_TVALID = data_out_s_TVALID;

reg reg_data_out_s_TREADY;
initial begin : gen_reg_data_out_s_TREADY_process
    integer proc_rand;
    reg_data_out_s_TREADY = axi_s_data_out_s_TREADY;
    while(1)
    begin
        @(axi_s_data_out_s_TREADY);
        reg_data_out_s_TREADY = axi_s_data_out_s_TREADY;
    end
end


assign data_out_s_TREADY = reg_data_out_s_TREADY;

wire    AESL_axi_master_ctx_ready;
wire    AESL_axi_master_ctx_done;
AESL_axi_master_ctx AESL_AXI_MASTER_ctx(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_ctx_AWVALID (ctx_AWVALID),
    .TRAN_ctx_AWREADY (ctx_AWREADY),
    .TRAN_ctx_AWADDR (ctx_AWADDR),
    .TRAN_ctx_AWID (ctx_AWID),
    .TRAN_ctx_AWLEN (ctx_AWLEN),
    .TRAN_ctx_AWSIZE (ctx_AWSIZE),
    .TRAN_ctx_AWBURST (ctx_AWBURST),
    .TRAN_ctx_AWLOCK (ctx_AWLOCK),
    .TRAN_ctx_AWCACHE (ctx_AWCACHE),
    .TRAN_ctx_AWPROT (ctx_AWPROT),
    .TRAN_ctx_AWQOS (ctx_AWQOS),
    .TRAN_ctx_AWREGION (ctx_AWREGION),
    .TRAN_ctx_AWUSER (ctx_AWUSER),
    .TRAN_ctx_WVALID (ctx_WVALID),
    .TRAN_ctx_WREADY (ctx_WREADY),
    .TRAN_ctx_WDATA (ctx_WDATA),
    .TRAN_ctx_WSTRB (ctx_WSTRB),
    .TRAN_ctx_WLAST (ctx_WLAST),
    .TRAN_ctx_WID (ctx_WID),
    .TRAN_ctx_WUSER (ctx_WUSER),
    .TRAN_ctx_ARVALID (ctx_ARVALID),
    .TRAN_ctx_ARREADY (ctx_ARREADY),
    .TRAN_ctx_ARADDR (ctx_ARADDR),
    .TRAN_ctx_ARID (ctx_ARID),
    .TRAN_ctx_ARLEN (ctx_ARLEN),
    .TRAN_ctx_ARSIZE (ctx_ARSIZE),
    .TRAN_ctx_ARBURST (ctx_ARBURST),
    .TRAN_ctx_ARLOCK (ctx_ARLOCK),
    .TRAN_ctx_ARCACHE (ctx_ARCACHE),
    .TRAN_ctx_ARPROT (ctx_ARPROT),
    .TRAN_ctx_ARQOS (ctx_ARQOS),
    .TRAN_ctx_ARREGION (ctx_ARREGION),
    .TRAN_ctx_ARUSER (ctx_ARUSER),
    .TRAN_ctx_RVALID (ctx_RVALID),
    .TRAN_ctx_RREADY (ctx_RREADY),
    .TRAN_ctx_RDATA (ctx_RDATA),
    .TRAN_ctx_RLAST (ctx_RLAST),
    .TRAN_ctx_RID (ctx_RID),
    .TRAN_ctx_RUSER (ctx_RUSER),
    .TRAN_ctx_RRESP (ctx_RRESP),
    .TRAN_ctx_BVALID (ctx_BVALID),
    .TRAN_ctx_BREADY (ctx_BREADY),
    .TRAN_ctx_BRESP (ctx_BRESP),
    .TRAN_ctx_BID (ctx_BID),
    .TRAN_ctx_BUSER (ctx_BUSER),
    .ready (AESL_axi_master_ctx_ready),
    .done  (AESL_axi_master_ctx_done)
);
assign    AESL_axi_master_ctx_ready    =   ready;
assign    AESL_axi_master_ctx_done    =   AESL_done_delay;

AESL_axi_slave_control AESL_AXI_SLAVE_control(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_control_AWADDR (control_AWADDR),
    .TRAN_s_axi_control_AWVALID (control_AWVALID),
    .TRAN_s_axi_control_AWREADY (control_AWREADY),
    .TRAN_s_axi_control_WVALID (control_WVALID),
    .TRAN_s_axi_control_WREADY (control_WREADY),
    .TRAN_s_axi_control_WDATA (control_WDATA),
    .TRAN_s_axi_control_WSTRB (control_WSTRB),
    .TRAN_s_axi_control_ARADDR (control_ARADDR),
    .TRAN_s_axi_control_ARVALID (control_ARVALID),
    .TRAN_s_axi_control_ARREADY (control_ARREADY),
    .TRAN_s_axi_control_RVALID (control_RVALID),
    .TRAN_s_axi_control_RREADY (control_RREADY),
    .TRAN_s_axi_control_RDATA (control_RDATA),
    .TRAN_s_axi_control_RRESP (control_RRESP),
    .TRAN_s_axi_control_BVALID (control_BVALID),
    .TRAN_s_axi_control_BREADY (control_BREADY),
    .TRAN_s_axi_control_BRESP (control_BRESP),
    .TRAN_control_interrupt (control_INTERRUPT),
    .TRAN_control_write_data_finish(control_write_data_finish),
    .TRAN_control_ready_out (AESL_ready),
    .TRAN_control_ready_in (AESL_slave_ready),
    .TRAN_control_done_out (AESL_slave_output_done),
    .TRAN_control_idle_out (AESL_idle),
    .TRAN_control_write_start_in     (AESL_slave_write_start_in),
    .TRAN_control_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_control_transaction_done_in (AESL_done_delay),
    .TRAN_control_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        integer fp1;
        integer fp2;
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
    fp1 = $fopen("./rtl.cabac_top.autotvout_data_out_s.dat", "r");
    fp2 = $fopen("./impl_rtl.cabac_top.autotvout_data_out_s.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.cabac_top.autotvout_data_out_s.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.cabac_top.autotvout_data_out_s.dat\"!");
    else begin
        $display("Comparing rtl.cabac_top.autotvout_data_out_s.dat with impl_rtl.cabac_top.autotvout_data_out_s.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
        $display("Simulation Passed.");
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_ctx;
reg [31:0] size_ctx;
reg [31:0] size_ctx_backup;
reg end_globalCtx;
reg [31:0] size_globalCtx;
reg [31:0] size_globalCtx_backup;
reg end_bitStream;
reg [31:0] size_bitStream;
reg [31:0] size_bitStream_backup;
reg end_data_in_s;
reg [31:0] size_data_in_s;
reg [31:0] size_data_in_s_backup;
reg end_data_out_s;
reg [31:0] size_data_out_s;
reg [31:0] size_data_out_s_backup;
reg end_ap_local_deadlock;
reg [31:0] size_ap_local_deadlock;
reg [31:0] size_ap_local_deadlock_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(3+3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
    
    initial begin : proc_gen_axis_internal_ready_bitStream
        bitStream_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_bitStream or bitStream_transaction);
            if (ap_c_n_tvin_trans_num_bitStream > bitStream_transaction) begin
                bitStream_ready_reg = 1;
            end else begin
                bitStream_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_data_in_s
        data_in_s_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_data_in_s or data_in_s_transaction);
            if (ap_c_n_tvin_trans_num_data_in_s > data_in_s_transaction) begin
                data_in_s_ready_reg = 1;
            end else begin
                data_in_s_ready_reg = 0;
            end
        end
    end
    
    `define STREAM_SIZE_IN_bitStream "./stream_size_in_bitStream.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_bitStream
        integer fp_bitStream;
        reg [127:0] token_bitStream;
        integer ret;
        
        ap_c_n_tvin_trans_num_bitStream = 0;
        end_bitStream = 0;
        wait (AESL_reset === 1);
        
        fp_bitStream = $fopen(`STREAM_SIZE_IN_bitStream, "r");
        if(fp_bitStream == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_bitStream);
            $finish;
        end
        read_token(fp_bitStream, token_bitStream); // should be [[[runtime]]]
        if (token_bitStream != "[[[runtime]]]") begin
            $display("ERROR: token_bitStream != \"[[[runtime]]]\"");
            $finish;
        end
        size_bitStream = 0;
        size_bitStream_backup = 0;
        while (size_bitStream == 0 && end_bitStream == 0) begin
            ap_c_n_tvin_trans_num_bitStream = ap_c_n_tvin_trans_num_bitStream + 1;
            read_token(fp_bitStream, token_bitStream); // should be [[transaction]] or [[[/runtime]]]
            if (token_bitStream == "[[transaction]]") begin
                read_token(fp_bitStream, token_bitStream); // should be transaction number
                read_token(fp_bitStream, token_bitStream); // should be size for hls::stream
                ret = $sscanf(token_bitStream, "%d", size_bitStream);
                if (size_bitStream > 0) begin
                    size_bitStream_backup = size_bitStream;
                end
                read_token(fp_bitStream, token_bitStream); // should be [[/transaction]]
            end else if (token_bitStream == "[[[/runtime]]]") begin
                $fclose(fp_bitStream);
                end_bitStream = 1;
            end else begin
                $display("ERROR: unknown token_bitStream");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_bitStream == 0) begin
                if ((bitStream_TREADY & bitStream_TVALID) == 1) begin
                    if (size_bitStream > 0) begin
                        size_bitStream = size_bitStream - 1;
                        while (size_bitStream == 0 && end_bitStream == 0) begin
                            ap_c_n_tvin_trans_num_bitStream = ap_c_n_tvin_trans_num_bitStream + 1;
                            read_token(fp_bitStream, token_bitStream); // should be [[transaction]] or [[[/runtime]]]
                            if (token_bitStream == "[[transaction]]") begin
                                read_token(fp_bitStream, token_bitStream); // should be transaction number
                                read_token(fp_bitStream, token_bitStream); // should be size for hls::stream
                                ret = $sscanf(token_bitStream, "%d", size_bitStream);
                                if (size_bitStream > 0) begin
                                    size_bitStream_backup = size_bitStream;
                                end
                                read_token(fp_bitStream, token_bitStream); // should be [[/transaction]]
                            end else if (token_bitStream == "[[[/runtime]]]") begin
                                size_bitStream = size_bitStream_backup;
                                $fclose(fp_bitStream);
                                end_bitStream = 1;
                            end else begin
                                $display("ERROR: unknown token_bitStream");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((bitStream_TREADY & bitStream_TVALID) == 1) begin
                    if (size_bitStream > 0) begin
                        size_bitStream = size_bitStream - 1;
                        if (size_bitStream == 0) begin
                            ap_c_n_tvin_trans_num_bitStream = ap_c_n_tvin_trans_num_bitStream + 1;
                            size_bitStream = size_bitStream_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_data_in_s "./stream_size_in_data_in_s.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_data_in_s
        integer fp_data_in_s;
        reg [127:0] token_data_in_s;
        integer ret;
        
        ap_c_n_tvin_trans_num_data_in_s = 0;
        end_data_in_s = 0;
        wait (AESL_reset === 1);
        
        fp_data_in_s = $fopen(`STREAM_SIZE_IN_data_in_s, "r");
        if(fp_data_in_s == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_data_in_s);
            $finish;
        end
        read_token(fp_data_in_s, token_data_in_s); // should be [[[runtime]]]
        if (token_data_in_s != "[[[runtime]]]") begin
            $display("ERROR: token_data_in_s != \"[[[runtime]]]\"");
            $finish;
        end
        size_data_in_s = 0;
        size_data_in_s_backup = 0;
        while (size_data_in_s == 0 && end_data_in_s == 0) begin
            ap_c_n_tvin_trans_num_data_in_s = ap_c_n_tvin_trans_num_data_in_s + 1;
            read_token(fp_data_in_s, token_data_in_s); // should be [[transaction]] or [[[/runtime]]]
            if (token_data_in_s == "[[transaction]]") begin
                read_token(fp_data_in_s, token_data_in_s); // should be transaction number
                read_token(fp_data_in_s, token_data_in_s); // should be size for hls::stream
                ret = $sscanf(token_data_in_s, "%d", size_data_in_s);
                if (size_data_in_s > 0) begin
                    size_data_in_s_backup = size_data_in_s;
                end
                read_token(fp_data_in_s, token_data_in_s); // should be [[/transaction]]
            end else if (token_data_in_s == "[[[/runtime]]]") begin
                $fclose(fp_data_in_s);
                end_data_in_s = 1;
            end else begin
                $display("ERROR: unknown token_data_in_s");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_data_in_s == 0) begin
                if ((data_in_s_TREADY & data_in_s_TVALID) == 1) begin
                    if (size_data_in_s > 0) begin
                        size_data_in_s = size_data_in_s - 1;
                        while (size_data_in_s == 0 && end_data_in_s == 0) begin
                            ap_c_n_tvin_trans_num_data_in_s = ap_c_n_tvin_trans_num_data_in_s + 1;
                            read_token(fp_data_in_s, token_data_in_s); // should be [[transaction]] or [[[/runtime]]]
                            if (token_data_in_s == "[[transaction]]") begin
                                read_token(fp_data_in_s, token_data_in_s); // should be transaction number
                                read_token(fp_data_in_s, token_data_in_s); // should be size for hls::stream
                                ret = $sscanf(token_data_in_s, "%d", size_data_in_s);
                                if (size_data_in_s > 0) begin
                                    size_data_in_s_backup = size_data_in_s;
                                end
                                read_token(fp_data_in_s, token_data_in_s); // should be [[/transaction]]
                            end else if (token_data_in_s == "[[[/runtime]]]") begin
                                size_data_in_s = size_data_in_s_backup;
                                $fclose(fp_data_in_s);
                                end_data_in_s = 1;
                            end else begin
                                $display("ERROR: unknown token_data_in_s");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((data_in_s_TREADY & data_in_s_TVALID) == 1) begin
                    if (size_data_in_s > 0) begin
                        size_data_in_s = size_data_in_s - 1;
                        if (size_data_in_s == 0) begin
                            ap_c_n_tvin_trans_num_data_in_s = ap_c_n_tvin_trans_num_data_in_s + 1;
                            size_data_in_s = size_data_in_s_backup;
                        end
                    end
                end
            end
        end
    end
    
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_ctx;

initial begin : dump_tvout_runtime_sign_ctx
    integer fp;
    dump_tvout_finish_ctx = 0;
    fp = $fopen(`AUTOTB_TVOUT_ctx_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ctx_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_ctx_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ctx_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_ctx = 1;
end


reg dump_tvout_finish_data_out_s;

initial begin : dump_tvout_runtime_sign_data_out_s
    integer fp;
    dump_tvout_finish_data_out_s = 0;
    fp = $fopen(`AUTOTB_TVOUT_data_out_s_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data_out_s_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_data_out_s_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data_out_s_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_data_out_s = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

AESL_deadlock_kernel_monitor_top kernel_monitor_top(
    .kernel_monitor_reset(~AESL_reset),
    .kernel_monitor_clock(AESL_clock));

///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
