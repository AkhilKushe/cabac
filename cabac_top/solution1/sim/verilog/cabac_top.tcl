
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set globalCtx_group [add_wave_group globalCtx(axi_master) -into $cinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $globalCtx_group]
set wdata_group [add_wave_group "Write Channel" -into $globalCtx_group]
set ctrl_group [add_wave_group "Handshakes" -into $globalCtx_group]
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_BUSER -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_BID -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_BRESP -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_RRESP -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_RUSER -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_RID -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_RDATA -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_ARUSER -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_ARREGION -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_ARQOS -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_ARPROT -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_ARBURST -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_ARLEN -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_ARID -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_ARADDR -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_WUSER -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_WID -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_WSTRB -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_WDATA -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_AWUSER -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_AWREGION -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_AWQOS -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_AWPROT -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_AWBURST -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_AWLEN -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_AWID -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_AWADDR -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/m_axi_ctx_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set globalCtx__ap_local_deadlock__return_group [add_wave_group globalCtx__ap_local_deadlock__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/interrupt -into $globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/s_axi_control_BRESP -into $globalCtx__ap_local_deadlock__return_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/s_axi_control_BREADY -into $globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/s_axi_control_BVALID -into $globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/s_axi_control_RRESP -into $globalCtx__ap_local_deadlock__return_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/s_axi_control_RDATA -into $globalCtx__ap_local_deadlock__return_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/s_axi_control_RREADY -into $globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/s_axi_control_RVALID -into $globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/s_axi_control_ARREADY -into $globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/s_axi_control_ARVALID -into $globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/s_axi_control_ARADDR -into $globalCtx__ap_local_deadlock__return_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/s_axi_control_WSTRB -into $globalCtx__ap_local_deadlock__return_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/s_axi_control_WDATA -into $globalCtx__ap_local_deadlock__return_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/s_axi_control_WREADY -into $globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/s_axi_control_WVALID -into $globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/s_axi_control_AWREADY -into $globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/s_axi_control_AWVALID -into $globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/s_axi_control_AWADDR -into $globalCtx__ap_local_deadlock__return_group -radix hex
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(axi_slave) -into $coutputgroup]
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/data_out_s_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/data_out_s_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/data_out_s_TDATA -into $return_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/ap_local_block -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(axis) -into $cinputgroup]
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/data_in_s_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/data_in_s_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/data_in_s_TDATA -into $return_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/bitOut_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/bitOut_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/bitOut_TDATA -into $return_group -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/bitStream_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/bitStream_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/bitStream_TDATA -into $return_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_cabac_top_top/AESL_inst_cabac_top/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_cabac_top_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_cabac_top_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_cabac_top_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_cabac_top_top/LENGTH_ctx -into $tb_portdepth_group -radix hex
add_wave /apatb_cabac_top_top/LENGTH_globalCtx -into $tb_portdepth_group -radix hex
add_wave /apatb_cabac_top_top/LENGTH_bitStream -into $tb_portdepth_group -radix hex
add_wave /apatb_cabac_top_top/LENGTH_bitOut -into $tb_portdepth_group -radix hex
add_wave /apatb_cabac_top_top/LENGTH_data_in_s -into $tb_portdepth_group -radix hex
add_wave /apatb_cabac_top_top/LENGTH_data_out_s -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_globalCtx_group [add_wave_group globalCtx(axi_master) -into $tbcinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_globalCtx_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_globalCtx_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_globalCtx_group]
add_wave /apatb_cabac_top_top/ctx_BUSER -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_BID -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_BRESP -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/ctx_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/ctx_RRESP -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_RUSER -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_RID -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/ctx_RDATA -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/ctx_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/ctx_ARUSER -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_ARREGION -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_ARQOS -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_ARPROT -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_ARBURST -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_ARLEN -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_ARID -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_ARADDR -into $rdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/ctx_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/ctx_WUSER -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_WID -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/ctx_WSTRB -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_WDATA -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/ctx_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/ctx_AWUSER -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_AWREGION -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_AWQOS -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_AWPROT -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_AWBURST -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_AWLEN -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_AWID -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_AWADDR -into $wdata_group -radix hex
add_wave /apatb_cabac_top_top/ctx_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/ctx_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_globalCtx__ap_local_deadlock__return_group [add_wave_group globalCtx__ap_local_deadlock__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_cabac_top_top/control_INTERRUPT -into $tb_globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/control_BRESP -into $tb_globalCtx__ap_local_deadlock__return_group -radix hex
add_wave /apatb_cabac_top_top/control_BREADY -into $tb_globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/control_BVALID -into $tb_globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/control_RRESP -into $tb_globalCtx__ap_local_deadlock__return_group -radix hex
add_wave /apatb_cabac_top_top/control_RDATA -into $tb_globalCtx__ap_local_deadlock__return_group -radix hex
add_wave /apatb_cabac_top_top/control_RREADY -into $tb_globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/control_RVALID -into $tb_globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/control_ARREADY -into $tb_globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/control_ARVALID -into $tb_globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/control_ARADDR -into $tb_globalCtx__ap_local_deadlock__return_group -radix hex
add_wave /apatb_cabac_top_top/control_WSTRB -into $tb_globalCtx__ap_local_deadlock__return_group -radix hex
add_wave /apatb_cabac_top_top/control_WDATA -into $tb_globalCtx__ap_local_deadlock__return_group -radix hex
add_wave /apatb_cabac_top_top/control_WREADY -into $tb_globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/control_WVALID -into $tb_globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/control_AWREADY -into $tb_globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/control_AWVALID -into $tb_globalCtx__ap_local_deadlock__return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/control_AWADDR -into $tb_globalCtx__ap_local_deadlock__return_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axi_slave) -into $tbcoutputgroup]
add_wave /apatb_cabac_top_top/data_out_s_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/data_out_s_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/data_out_s_TDATA -into $tb_return_group -radix hex
add_wave /apatb_cabac_top_top/ap_local_block -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axis) -into $tbcinputgroup]
add_wave /apatb_cabac_top_top/data_in_s_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/data_in_s_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/data_in_s_TDATA -into $tb_return_group -radix hex
add_wave /apatb_cabac_top_top/bitOut_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/bitOut_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/bitOut_TDATA -into $tb_return_group -radix hex
add_wave /apatb_cabac_top_top/bitStream_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/bitStream_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_cabac_top_top/bitStream_TDATA -into $tb_return_group -radix hex
save_wave_config cabac_top.wcfg
run all
quit

