set moduleName parseSAOEO
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {parseSAOEO}
set C_modelType { int 112 }
set C_modelArgList {
	{ state_ivlOffset_V_read int 32 regular  }
	{ state_bstate_currIdx_read int 32 regular  }
	{ state_bstate_n_bits_held_read int 8 regular  }
	{ state_bstate_held_aligned_word_read int 8 regular  }
	{ bStream int 8 regular {array 7 { 1 3 } 1 1 }  }
	{ baeState_0_constprop int 32 regular {pointer 0} {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state_ivlOffset_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_bstate_currIdx_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_bstate_n_bits_held_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "state_bstate_held_aligned_word_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bStream", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "baeState_0_constprop", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 112} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ state_ivlOffset_V_read sc_in sc_lv 32 signal 0 } 
	{ state_bstate_currIdx_read sc_in sc_lv 32 signal 1 } 
	{ state_bstate_n_bits_held_read sc_in sc_lv 8 signal 2 } 
	{ state_bstate_held_aligned_word_read sc_in sc_lv 8 signal 3 } 
	{ bStream_address0 sc_out sc_lv 3 signal 4 } 
	{ bStream_ce0 sc_out sc_logic 1 signal 4 } 
	{ bStream_q0 sc_in sc_lv 8 signal 4 } 
	{ baeState_0_constprop sc_in sc_lv 32 signal 5 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 8 signal -1 } 
	{ ap_return_3 sc_out sc_lv 8 signal -1 } 
	{ ap_return_4 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "state_ivlOffset_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_ivlOffset_V_read", "role": "default" }} , 
 	{ "name": "state_bstate_currIdx_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_bstate_currIdx_read", "role": "default" }} , 
 	{ "name": "state_bstate_n_bits_held_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_bstate_n_bits_held_read", "role": "default" }} , 
 	{ "name": "state_bstate_held_aligned_word_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_bstate_held_aligned_word_read", "role": "default" }} , 
 	{ "name": "bStream_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bStream", "role": "address0" }} , 
 	{ "name": "bStream_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bStream", "role": "ce0" }} , 
 	{ "name": "bStream_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bStream", "role": "q0" }} , 
 	{ "name": "baeState_0_constprop", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "baeState_0_constprop", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "parseSAOEO",
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
			{"Name" : "state_ivlOffset_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_bstate_currIdx_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_bstate_n_bits_held_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_bstate_held_aligned_word_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bStream", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "baeState_0_constprop", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_80_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]}]}


set ArgLastReadFirstWriteLatency {
	parseSAOEO {
		state_ivlOffset_V_read {Type I LastRead 0 FirstWrite -1}
		state_bstate_currIdx_read {Type I LastRead 0 FirstWrite -1}
		state_bstate_n_bits_held_read {Type I LastRead 0 FirstWrite -1}
		state_bstate_held_aligned_word_read {Type I LastRead 0 FirstWrite -1}
		bStream {Type I LastRead 1 FirstWrite -1}
		baeState_0_constprop {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "7"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	state_ivlOffset_V_read { ap_none {  { state_ivlOffset_V_read in_data 0 32 } } }
	state_bstate_currIdx_read { ap_none {  { state_bstate_currIdx_read in_data 0 32 } } }
	state_bstate_n_bits_held_read { ap_none {  { state_bstate_n_bits_held_read in_data 0 8 } } }
	state_bstate_held_aligned_word_read { ap_none {  { state_bstate_held_aligned_word_read in_data 0 8 } } }
	bStream { ap_memory {  { bStream_address0 mem_address 1 3 }  { bStream_ce0 mem_ce 1 1 }  { bStream_q0 in_data 0 8 } } }
	baeState_0_constprop { ap_none {  { baeState_0_constprop in_data 0 32 } } }
}
