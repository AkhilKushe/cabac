set moduleName sao_top_Pipeline_VITIS_LOOP_189_4
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
set C_modelName {sao_top_Pipeline_VITIS_LOOP_189_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln188 int 4 regular  }
	{ sao_offset_abs int 8 regular {array 12 { 1 3 } 1 1 }  }
	{ sao_offset_sign int 1 regular {array 12 { 1 3 } 1 1 }  }
	{ add_ln188 int 4 regular  }
	{ out_SaoOffsetVal int 16 regular {array 15 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln188", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "sao_offset_abs", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sao_offset_sign", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln188", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "out_SaoOffsetVal", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln188 sc_in sc_lv 4 signal 0 } 
	{ sao_offset_abs_address0 sc_out sc_lv 4 signal 1 } 
	{ sao_offset_abs_ce0 sc_out sc_logic 1 signal 1 } 
	{ sao_offset_abs_q0 sc_in sc_lv 8 signal 1 } 
	{ sao_offset_sign_address0 sc_out sc_lv 4 signal 2 } 
	{ sao_offset_sign_ce0 sc_out sc_logic 1 signal 2 } 
	{ sao_offset_sign_q0 sc_in sc_lv 1 signal 2 } 
	{ add_ln188 sc_in sc_lv 4 signal 3 } 
	{ out_SaoOffsetVal_address0 sc_out sc_lv 4 signal 4 } 
	{ out_SaoOffsetVal_ce0 sc_out sc_logic 1 signal 4 } 
	{ out_SaoOffsetVal_we0 sc_out sc_logic 1 signal 4 } 
	{ out_SaoOffsetVal_d0 sc_out sc_lv 16 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln188", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln188", "role": "default" }} , 
 	{ "name": "sao_offset_abs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sao_offset_abs", "role": "address0" }} , 
 	{ "name": "sao_offset_abs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sao_offset_abs", "role": "ce0" }} , 
 	{ "name": "sao_offset_abs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sao_offset_abs", "role": "q0" }} , 
 	{ "name": "sao_offset_sign_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sao_offset_sign", "role": "address0" }} , 
 	{ "name": "sao_offset_sign_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sao_offset_sign", "role": "ce0" }} , 
 	{ "name": "sao_offset_sign_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sao_offset_sign", "role": "q0" }} , 
 	{ "name": "add_ln188", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "add_ln188", "role": "default" }} , 
 	{ "name": "out_SaoOffsetVal_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "address0" }} , 
 	{ "name": "out_SaoOffsetVal_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "ce0" }} , 
 	{ "name": "out_SaoOffsetVal_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "we0" }} , 
 	{ "name": "out_SaoOffsetVal_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sao_top_Pipeline_VITIS_LOOP_189_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln188", "Type" : "None", "Direction" : "I"},
			{"Name" : "sao_offset_abs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sao_offset_sign", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln188", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_SaoOffsetVal", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sao_top_Pipeline_VITIS_LOOP_189_4 {
		zext_ln188 {Type I LastRead 0 FirstWrite -1}
		sao_offset_abs {Type I LastRead 0 FirstWrite -1}
		sao_offset_sign {Type I LastRead 1 FirstWrite -1}
		add_ln188 {Type I LastRead 0 FirstWrite -1}
		out_SaoOffsetVal {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "7"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln188 { ap_none {  { zext_ln188 in_data 0 4 } } }
	sao_offset_abs { ap_memory {  { sao_offset_abs_address0 mem_address 1 4 }  { sao_offset_abs_ce0 mem_ce 1 1 }  { sao_offset_abs_q0 mem_dout 0 8 } } }
	sao_offset_sign { ap_memory {  { sao_offset_sign_address0 mem_address 1 4 }  { sao_offset_sign_ce0 mem_ce 1 1 }  { sao_offset_sign_q0 in_data 0 1 } } }
	add_ln188 { ap_none {  { add_ln188 in_data 0 4 } } }
	out_SaoOffsetVal { ap_memory {  { out_SaoOffsetVal_address0 mem_address 1 4 }  { out_SaoOffsetVal_ce0 mem_ce 1 1 }  { out_SaoOffsetVal_we0 mem_we 1 1 }  { out_SaoOffsetVal_d0 mem_din 1 16 } } }
}
