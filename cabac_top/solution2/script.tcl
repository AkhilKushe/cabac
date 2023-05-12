############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cabac_top
set_top cabac_top
add_files TODO.txt
add_files src/arith_dec.cpp
add_files src/arith_dec.h
add_files src/deBin.cpp
add_files src/deBin.h
add_files src/init_tables.h
add_files src/initializer.cpp
add_files src/initializer.h
add_files src/intra_se.cpp
add_files src/intra_se.h
add_files src/quad_tree.cpp
add_files src/quad_tree.h
add_files src/top.cpp
add_files src/top.h
add_files src/typedef.h
add_files src/utils.cpp
add_files src/utils.h
add_files -tb tb_src/typedef.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb tb_src/test_1.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution2" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512
config_rtl -register_reset_num 3
config_export -format ip_catalog -output /home/akhilkushe/Desktop/Projects/Vivado_proj/cls_incr/kernel_exp -rtl verilog
source "./cabac_top/solution2/directives.tcl"
csim_design -clean
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog -output /home/akhilkushe/Desktop/Projects/Vivado_proj/cls_incr/kernel_exp
