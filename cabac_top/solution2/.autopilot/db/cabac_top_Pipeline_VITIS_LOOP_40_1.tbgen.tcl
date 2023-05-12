set moduleName cabac_top_Pipeline_VITIS_LOOP_40_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {cabac_top_Pipeline_VITIS_LOOP_40_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ icmp_ln79 int 1 regular  }
	{ icmp_ln79_1 int 1 regular  }
	{ zext_ln40 int 6 regular  }
	{ streamCtxRAM int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "icmp_ln79", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln79_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln40", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "streamCtxRAM", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ streamCtxRAM_din sc_out sc_lv 8 signal 3 } 
	{ streamCtxRAM_full_n sc_in sc_logic 1 signal 3 } 
	{ streamCtxRAM_write sc_out sc_logic 1 signal 3 } 
	{ icmp_ln79 sc_in sc_lv 1 signal 0 } 
	{ icmp_ln79_1 sc_in sc_lv 1 signal 1 } 
	{ zext_ln40 sc_in sc_lv 6 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "streamCtxRAM_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "streamCtxRAM", "role": "din" }} , 
 	{ "name": "streamCtxRAM_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "streamCtxRAM", "role": "full_n" }} , 
 	{ "name": "streamCtxRAM_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "streamCtxRAM", "role": "write" }} , 
 	{ "name": "icmp_ln79", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln79", "role": "default" }} , 
 	{ "name": "icmp_ln79_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln79_1", "role": "default" }} , 
 	{ "name": "zext_ln40", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln40", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "cabac_top_Pipeline_VITIS_LOOP_40_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "icmp_ln79", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln79_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln40", "Type" : "None", "Direction" : "I"},
			{"Name" : "streamCtxRAM", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "streamCtxRAM_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_FRAME_INIT_VALS", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P_FRAME_INIT_VALS", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "I_FRAME_INIT_VALS", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_FRAME_INIT_VALS_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P_FRAME_INIT_VALS_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.I_FRAME_INIT_VALS_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_6ns_13_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cabac_top_Pipeline_VITIS_LOOP_40_1 {
		icmp_ln79 {Type I LastRead 0 FirstWrite -1}
		icmp_ln79_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		streamCtxRAM {Type O LastRead -1 FirstWrite 5}
		B_FRAME_INIT_VALS {Type I LastRead -1 FirstWrite -1}
		P_FRAME_INIT_VALS {Type I LastRead -1 FirstWrite -1}
		I_FRAME_INIT_VALS {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "11"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	icmp_ln79 { ap_none {  { icmp_ln79 in_data 0 1 } } }
	icmp_ln79_1 { ap_none {  { icmp_ln79_1 in_data 0 1 } } }
	zext_ln40 { ap_none {  { zext_ln40 in_data 0 6 } } }
	streamCtxRAM { ap_fifo {  { streamCtxRAM_din fifo_data 1 8 }  { streamCtxRAM_full_n fifo_status 0 1 }  { streamCtxRAM_write fifo_update 1 1 } } }
}
