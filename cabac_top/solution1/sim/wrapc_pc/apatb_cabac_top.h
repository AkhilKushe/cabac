// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_cabac_top (
volatile void* globalCtx,
hls::stream<int > bitStream,
int bitOut,
hls::stream<int > data_in_s,
hls::stream<int > data_out_s);
