
/home/akhilkushe/Xilinx/Vivado/2021.2/bin/xelab xil_defaultlib.apatb_cabac_top_top glbl -Oenable_linking_all_libraries  -prj cabac_top.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_19 -L floating_point_v7_1_13 --lib "ieee_proposed=./ieee_proposed" -s cabac_top -debug wave
/home/akhilkushe/Xilinx/Vivado/2021.2/bin/xsim --noieeewarnings cabac_top -tclbatch cabac_top.tcl -view cabac_top_dataflow_ana.wcfg -protoinst cabac_top.protoinst

