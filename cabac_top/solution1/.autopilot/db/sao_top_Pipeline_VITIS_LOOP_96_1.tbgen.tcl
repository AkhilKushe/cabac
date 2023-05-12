set moduleName sao_top_Pipeline_VITIS_LOOP_96_1
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
set C_modelName {sao_top_Pipeline_VITIS_LOOP_96_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ state_bstate_currIdx_8_reload int 32 regular  }
	{ state_bstate_n_bits_held_8_reload int 8 regular  }
	{ state_bstate_held_aligned_word_8_reload int 8 regular  }
	{ state_ivlOffset_6_reload int 32 regular  }
	{ p_reload7 int 8 regular  }
	{ p_reload8 int 8 regular  }
	{ p_reload9 int 31 regular  }
	{ baeState_0_constprop_load int 32 regular  }
	{ bStream int 8 regular {array 7 { 1 3 } 1 1 }  }
	{ state_bstate_currIdx_11_out int 32 regular {pointer 1}  }
	{ state_bstate_n_bits_held_11_out int 8 regular {pointer 1}  }
	{ state_bstate_held_aligned_word_11_out int 8 regular {pointer 1}  }
	{ state_ivlOffset_8_out int 32 regular {pointer 1}  }
	{ symbolVal_4_out int 8 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state_bstate_currIdx_8_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_bstate_n_bits_held_8_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "state_bstate_held_aligned_word_8_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "state_ivlOffset_6_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload9", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "baeState_0_constprop_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bStream", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "state_bstate_currIdx_11_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "state_bstate_n_bits_held_11_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "state_bstate_held_aligned_word_11_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "state_ivlOffset_8_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "symbolVal_4_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ state_bstate_currIdx_8_reload sc_in sc_lv 32 signal 0 } 
	{ state_bstate_n_bits_held_8_reload sc_in sc_lv 8 signal 1 } 
	{ state_bstate_held_aligned_word_8_reload sc_in sc_lv 8 signal 2 } 
	{ state_ivlOffset_6_reload sc_in sc_lv 32 signal 3 } 
	{ p_reload7 sc_in sc_lv 8 signal 4 } 
	{ p_reload8 sc_in sc_lv 8 signal 5 } 
	{ p_reload9 sc_in sc_lv 31 signal 6 } 
	{ baeState_0_constprop_load sc_in sc_lv 32 signal 7 } 
	{ bStream_address0 sc_out sc_lv 3 signal 8 } 
	{ bStream_ce0 sc_out sc_logic 1 signal 8 } 
	{ bStream_q0 sc_in sc_lv 8 signal 8 } 
	{ state_bstate_currIdx_11_out sc_out sc_lv 32 signal 9 } 
	{ state_bstate_currIdx_11_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ state_bstate_n_bits_held_11_out sc_out sc_lv 8 signal 10 } 
	{ state_bstate_n_bits_held_11_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ state_bstate_held_aligned_word_11_out sc_out sc_lv 8 signal 11 } 
	{ state_bstate_held_aligned_word_11_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ state_ivlOffset_8_out sc_out sc_lv 32 signal 12 } 
	{ state_ivlOffset_8_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ symbolVal_4_out sc_out sc_lv 8 signal 13 } 
	{ symbolVal_4_out_ap_vld sc_out sc_logic 1 outvld 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "state_bstate_currIdx_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_bstate_currIdx_8_reload", "role": "default" }} , 
 	{ "name": "state_bstate_n_bits_held_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_bstate_n_bits_held_8_reload", "role": "default" }} , 
 	{ "name": "state_bstate_held_aligned_word_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_bstate_held_aligned_word_8_reload", "role": "default" }} , 
 	{ "name": "state_ivlOffset_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_ivlOffset_6_reload", "role": "default" }} , 
 	{ "name": "p_reload7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_reload7", "role": "default" }} , 
 	{ "name": "p_reload8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_reload8", "role": "default" }} , 
 	{ "name": "p_reload9", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "p_reload9", "role": "default" }} , 
 	{ "name": "baeState_0_constprop_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "baeState_0_constprop_load", "role": "default" }} , 
 	{ "name": "bStream_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bStream", "role": "address0" }} , 
 	{ "name": "bStream_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bStream", "role": "ce0" }} , 
 	{ "name": "bStream_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bStream", "role": "q0" }} , 
 	{ "name": "state_bstate_currIdx_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_bstate_currIdx_11_out", "role": "default" }} , 
 	{ "name": "state_bstate_currIdx_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_bstate_currIdx_11_out", "role": "ap_vld" }} , 
 	{ "name": "state_bstate_n_bits_held_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_bstate_n_bits_held_11_out", "role": "default" }} , 
 	{ "name": "state_bstate_n_bits_held_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_bstate_n_bits_held_11_out", "role": "ap_vld" }} , 
 	{ "name": "state_bstate_held_aligned_word_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_bstate_held_aligned_word_11_out", "role": "default" }} , 
 	{ "name": "state_bstate_held_aligned_word_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_bstate_held_aligned_word_11_out", "role": "ap_vld" }} , 
 	{ "name": "state_ivlOffset_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_ivlOffset_8_out", "role": "default" }} , 
 	{ "name": "state_ivlOffset_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_ivlOffset_8_out", "role": "ap_vld" }} , 
 	{ "name": "symbolVal_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "symbolVal_4_out", "role": "default" }} , 
 	{ "name": "symbolVal_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "symbolVal_4_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sao_top_Pipeline_VITIS_LOOP_96_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state_bstate_currIdx_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_bstate_n_bits_held_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_bstate_held_aligned_word_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_ivlOffset_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload9", "Type" : "None", "Direction" : "I"},
			{"Name" : "baeState_0_constprop_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "bStream", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "state_bstate_currIdx_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_bstate_n_bits_held_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_bstate_held_aligned_word_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_ivlOffset_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "symbolVal_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_96_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sao_top_Pipeline_VITIS_LOOP_96_1 {
		state_bstate_currIdx_8_reload {Type I LastRead 0 FirstWrite -1}
		state_bstate_n_bits_held_8_reload {Type I LastRead 0 FirstWrite -1}
		state_bstate_held_aligned_word_8_reload {Type I LastRead 0 FirstWrite -1}
		state_ivlOffset_6_reload {Type I LastRead 0 FirstWrite -1}
		p_reload7 {Type I LastRead 0 FirstWrite -1}
		p_reload8 {Type I LastRead 0 FirstWrite -1}
		p_reload9 {Type I LastRead 0 FirstWrite -1}
		baeState_0_constprop_load {Type I LastRead 0 FirstWrite -1}
		bStream {Type I LastRead 1 FirstWrite -1}
		state_bstate_currIdx_11_out {Type O LastRead -1 FirstWrite 3}
		state_bstate_n_bits_held_11_out {Type O LastRead -1 FirstWrite 3}
		state_bstate_held_aligned_word_11_out {Type O LastRead -1 FirstWrite 3}
		state_ivlOffset_8_out {Type O LastRead -1 FirstWrite 3}
		symbolVal_4_out {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	state_bstate_currIdx_8_reload { ap_none {  { state_bstate_currIdx_8_reload in_data 0 32 } } }
	state_bstate_n_bits_held_8_reload { ap_none {  { state_bstate_n_bits_held_8_reload in_data 0 8 } } }
	state_bstate_held_aligned_word_8_reload { ap_none {  { state_bstate_held_aligned_word_8_reload in_data 0 8 } } }
	state_ivlOffset_6_reload { ap_none {  { state_ivlOffset_6_reload in_data 0 32 } } }
	p_reload7 { ap_none {  { p_reload7 in_data 0 8 } } }
	p_reload8 { ap_none {  { p_reload8 in_data 0 8 } } }
	p_reload9 { ap_none {  { p_reload9 in_data 0 31 } } }
	baeState_0_constprop_load { ap_none {  { baeState_0_constprop_load in_data 0 32 } } }
	bStream { ap_memory {  { bStream_address0 mem_address 1 3 }  { bStream_ce0 mem_ce 1 1 }  { bStream_q0 in_data 0 8 } } }
	state_bstate_currIdx_11_out { ap_vld {  { state_bstate_currIdx_11_out out_data 1 32 }  { state_bstate_currIdx_11_out_ap_vld out_vld 1 1 } } }
	state_bstate_n_bits_held_11_out { ap_vld {  { state_bstate_n_bits_held_11_out out_data 1 8 }  { state_bstate_n_bits_held_11_out_ap_vld out_vld 1 1 } } }
	state_bstate_held_aligned_word_11_out { ap_vld {  { state_bstate_held_aligned_word_11_out out_data 1 8 }  { state_bstate_held_aligned_word_11_out_ap_vld out_vld 1 1 } } }
	state_ivlOffset_8_out { ap_vld {  { state_ivlOffset_8_out out_data 1 32 }  { state_ivlOffset_8_out_ap_vld out_vld 1 1 } } }
	symbolVal_4_out { ap_vld {  { symbolVal_4_out out_data 1 8 }  { symbolVal_4_out_ap_vld out_vld 1 1 } } }
}
