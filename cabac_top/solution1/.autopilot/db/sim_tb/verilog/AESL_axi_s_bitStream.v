// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_bitStream_TDATA "./c.cabac_top.autotvin_bitStream.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_bitStream (
    input clk,
    input reset,
    output [8 - 1:0] TRAN_bitStream_TDATA,
    output TRAN_bitStream_TVALID,
    input TRAN_bitStream_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_bitStream_TVALID_temp;
    wire bitStream_TDATA_full;
    wire bitStream_TDATA_empty;
    reg bitStream_TDATA_write_en;
    reg [8 - 1:0] bitStream_TDATA_write_data;
    reg bitStream_TDATA_read_en;
    wire [8 - 1:0] bitStream_TDATA_read_data;
    
    fifo #(7, 8) fifo_bitStream_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(bitStream_TDATA_write_en),
        .write_data(bitStream_TDATA_write_data),
        .read_clock(clk),
        .read_en(bitStream_TDATA_read_en),
        .read_data(bitStream_TDATA_read_data),
        .full(bitStream_TDATA_full),
        .empty(bitStream_TDATA_empty));
    
    always @ (*) begin
        bitStream_TDATA_write_en <= 0;
        bitStream_TDATA_read_en <= TRAN_bitStream_TREADY & TRAN_bitStream_TVALID;
    end
    
    assign TRAN_bitStream_TDATA = bitStream_TDATA_read_data;
    assign TRAN_bitStream_TVALID = TRAN_bitStream_TVALID_temp;

    
    assign TRAN_bitStream_TVALID_temp = ~(bitStream_TDATA_empty);
    
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
    
    reg [31:0] transaction_load_bitStream_TDATA;
    
    assign transaction = transaction_load_bitStream_TDATA;
    
    initial begin : AXI_stream_driver_bitStream_TDATA
        integer fp;
        reg [8215:0] token;
        reg [8 - 1:0] data;
        reg [8215:0] data_integer;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_bitStream_TDATA = 0;
        fifo_bitStream_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_bitStream_TDATA, "r");
        if (fp == 0) begin
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_bitStream_TDATA);
            $finish;
        end
        token = read_token(fp);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    fifo_bitStream_TDATA.clear();
                    token = read_token(fp);
                    while (token != "[[/transaction]]") begin
                        if (fifo_bitStream_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_bitStream_TDATA.push(data);
                        token = read_token(fp);
                    end
                    token = read_token(fp);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                end
                transaction_load_bitStream_TDATA = transaction_load_bitStream_TDATA + 1;
            end
        end
    end

endmodule
