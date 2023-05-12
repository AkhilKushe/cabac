// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_OUT_data_out_s_TDATA "./impl_rtl.cabac_top.autotvout_data_out_s.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_data_out_s (
    input clk,
    input reset,
    input [336 - 1:0] TRAN_data_out_s_TDATA,
    input TRAN_data_out_s_TVALID,
    output TRAN_data_out_s_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_data_out_s_TVALID_temp;
    wire data_out_s_TDATA_full;
    wire data_out_s_TDATA_empty;
    reg data_out_s_TDATA_write_en;
    reg [336 - 1:0] data_out_s_TDATA_write_data;
    reg data_out_s_TDATA_read_en;
    wire [336 - 1:0] data_out_s_TDATA_read_data;
    
    fifo #(1, 336) fifo_data_out_s_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(data_out_s_TDATA_write_en),
        .write_data(data_out_s_TDATA_write_data),
        .read_clock(clk),
        .read_en(data_out_s_TDATA_read_en),
        .read_data(data_out_s_TDATA_read_data),
        .full(data_out_s_TDATA_full),
        .empty(data_out_s_TDATA_empty));
    
    always @ (*) begin
        data_out_s_TDATA_write_en <= TRAN_data_out_s_TVALID;
        data_out_s_TDATA_write_data <= TRAN_data_out_s_TDATA;
        data_out_s_TDATA_read_en <= 0;
    end
    assign TRAN_data_out_s_TVALID = TRAN_data_out_s_TVALID_temp;

    
    assign TRAN_data_out_s_TREADY = ~(data_out_s_TDATA_full);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [8215:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [8215:0] rm_0x(input [8215:0] token);
        reg [8215:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_data_out_s_TDATA;
    
    assign transaction = transaction_save_data_out_s_TDATA;
    
    initial begin : AXI_stream_receiver_data_out_s_TDATA
        integer fp;
        reg [336 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_data_out_s_TDATA = 0;
        fifo_data_out_s_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_data_out_s_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_data_out_s_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_data_out_s_TDATA);
                while (~fifo_data_out_s_TDATA.empty) begin
                    fifo_data_out_s_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_data_out_s_TDATA = transaction_save_data_out_s_TDATA + 1;
                fifo_data_out_s_TDATA.clear();
                $fclose(fp);
            end
        end
    end

endmodule
