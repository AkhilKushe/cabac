// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_data_in_s_TDATA "../tv/cdatafile/c.cabac_top.autotvin_data_in_s.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_data_in_s (
    input clk,
    input reset,
    output [4096 - 1:0] TRAN_data_in_s_TDATA,
    output TRAN_data_in_s_TVALID,
    input TRAN_data_in_s_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_data_in_s_TVALID_temp;
    wire data_in_s_TDATA_full;
    wire data_in_s_TDATA_empty;
    reg data_in_s_TDATA_write_en;
    reg [4096 - 1:0] data_in_s_TDATA_write_data;
    reg data_in_s_TDATA_read_en;
    wire [4096 - 1:0] data_in_s_TDATA_read_data;
    
    fifo #(1, 4096) fifo_data_in_s_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(data_in_s_TDATA_write_en),
        .write_data(data_in_s_TDATA_write_data),
        .read_clock(clk),
        .read_en(data_in_s_TDATA_read_en),
        .read_data(data_in_s_TDATA_read_data),
        .full(data_in_s_TDATA_full),
        .empty(data_in_s_TDATA_empty));
    
    always @ (*) begin
        data_in_s_TDATA_write_en <= 0;
        data_in_s_TDATA_read_en <= TRAN_data_in_s_TREADY & TRAN_data_in_s_TVALID;
    end
    
    assign TRAN_data_in_s_TDATA = data_in_s_TDATA_read_data;
    assign TRAN_data_in_s_TVALID = TRAN_data_in_s_TVALID_temp;

    
    assign TRAN_data_in_s_TVALID_temp = ~(data_in_s_TDATA_empty);
    
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
    
    reg [31:0] transaction_load_data_in_s_TDATA;
    
    assign transaction = transaction_load_data_in_s_TDATA;
    
    initial begin : AXI_stream_driver_data_in_s_TDATA
        integer fp;
        reg [8215:0] token;
        reg [4096 - 1:0] data;
        reg [8215:0] data_integer;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_data_in_s_TDATA = 0;
        fifo_data_in_s_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_data_in_s_TDATA, "r");
        if (fp == 0) begin
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_data_in_s_TDATA);
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
                    fifo_data_in_s_TDATA.clear();
                    token = read_token(fp);
                    while (token != "[[/transaction]]") begin
                        if (fifo_data_in_s_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_data_in_s_TDATA.push(data);
                        token = read_token(fp);
                    end
                    token = read_token(fp);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                end
                transaction_load_data_in_s_TDATA = transaction_load_data_in_s_TDATA + 1;
            end
        end
    end

endmodule
