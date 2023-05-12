set moduleName decode_regular_Pipeline_VITIS_LOOP_53_1
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
set C_modelName {decode_regular_Pipeline_VITIS_LOOP_53_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read5 int 8 regular  }
	{ p_read4 int 8 regular  }
	{ write_flag2_0 int 1 regular  }
	{ p_read1 int 32 regular  }
	{ empty_41 int 32 regular  }
	{ empty int 32 regular  }
	{ bStream int 8 regular {array 7 { 1 3 } 1 1 }  }
	{ state_bstate_held_aligned_word_0_out int 8 regular {pointer 1}  }
	{ state_bstate_n_bits_held_0_out int 8 regular {pointer 1}  }
	{ write_flag2_1_out int 1 regular {pointer 1}  }
	{ state_bstate_currIdx_0_out int 32 regular {pointer 1}  }
	{ state_ivlOffset_1_out int 32 regular {pointer 1}  }
	{ baeState_0_constprop int 32 regular {pointer 1} {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "write_flag2_0", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_41", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bStream", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "state_bstate_held_aligned_word_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "state_bstate_n_bits_held_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "write_flag2_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "state_bstate_currIdx_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "state_ivlOffset_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "baeState_0_constprop", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read5 sc_in sc_lv 8 signal 0 } 
	{ p_read4 sc_in sc_lv 8 signal 1 } 
	{ write_flag2_0 sc_in sc_lv 1 signal 2 } 
	{ p_read1 sc_in sc_lv 32 signal 3 } 
	{ empty_41 sc_in sc_lv 32 signal 4 } 
	{ empty sc_in sc_lv 32 signal 5 } 
	{ bStream_address0 sc_out sc_lv 3 signal 6 } 
	{ bStream_ce0 sc_out sc_logic 1 signal 6 } 
	{ bStream_q0 sc_in sc_lv 8 signal 6 } 
	{ state_bstate_held_aligned_word_0_out sc_out sc_lv 8 signal 7 } 
	{ state_bstate_held_aligned_word_0_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ state_bstate_n_bits_held_0_out sc_out sc_lv 8 signal 8 } 
	{ state_bstate_n_bits_held_0_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ write_flag2_1_out sc_out sc_lv 1 signal 9 } 
	{ write_flag2_1_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ state_bstate_currIdx_0_out sc_out sc_lv 32 signal 10 } 
	{ state_bstate_currIdx_0_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ state_ivlOffset_1_out sc_out sc_lv 32 signal 11 } 
	{ state_ivlOffset_1_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ baeState_0_constprop sc_out sc_lv 32 signal 12 } 
	{ baeState_0_constprop_ap_vld sc_out sc_logic 1 outvld 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "write_flag2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "write_flag2_0", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "empty_41", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_41", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "bStream_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bStream", "role": "address0" }} , 
 	{ "name": "bStream_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bStream", "role": "ce0" }} , 
 	{ "name": "bStream_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bStream", "role": "q0" }} , 
 	{ "name": "state_bstate_held_aligned_word_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_bstate_held_aligned_word_0_out", "role": "default" }} , 
 	{ "name": "state_bstate_held_aligned_word_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_bstate_held_aligned_word_0_out", "role": "ap_vld" }} , 
 	{ "name": "state_bstate_n_bits_held_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_bstate_n_bits_held_0_out", "role": "default" }} , 
 	{ "name": "state_bstate_n_bits_held_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_bstate_n_bits_held_0_out", "role": "ap_vld" }} , 
 	{ "name": "write_flag2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "write_flag2_1_out", "role": "default" }} , 
 	{ "name": "write_flag2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "write_flag2_1_out", "role": "ap_vld" }} , 
 	{ "name": "state_bstate_currIdx_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_bstate_currIdx_0_out", "role": "default" }} , 
 	{ "name": "state_bstate_currIdx_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_bstate_currIdx_0_out", "role": "ap_vld" }} , 
 	{ "name": "state_ivlOffset_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_ivlOffset_1_out", "role": "default" }} , 
 	{ "name": "state_ivlOffset_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_ivlOffset_1_out", "role": "ap_vld" }} , 
 	{ "name": "baeState_0_constprop", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "baeState_0_constprop", "role": "default" }} , 
 	{ "name": "baeState_0_constprop_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "baeState_0_constprop", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "decode_regular_Pipeline_VITIS_LOOP_53_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "write_flag2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "bStream", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "state_bstate_held_aligned_word_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_bstate_n_bits_held_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "write_flag2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_bstate_currIdx_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_ivlOffset_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "baeState_0_constprop", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	decode_regular_Pipeline_VITIS_LOOP_53_1 {
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		write_flag2_0 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		bStream {Type I LastRead 1 FirstWrite -1}
		state_bstate_held_aligned_word_0_out {Type O LastRead -1 FirstWrite 2}
		state_bstate_n_bits_held_0_out {Type O LastRead -1 FirstWrite 2}
		write_flag2_1_out {Type O LastRead -1 FirstWrite 2}
		state_bstate_currIdx_0_out {Type O LastRead -1 FirstWrite 2}
		state_ivlOffset_1_out {Type O LastRead -1 FirstWrite 2}
		baeState_0_constprop {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_read5 { ap_none {  { p_read5 in_data 0 8 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 8 } } }
	write_flag2_0 { ap_none {  { write_flag2_0 in_data 0 1 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 } } }
	empty_41 { ap_none {  { empty_41 in_data 0 32 } } }
	empty { ap_none {  { empty in_data 0 32 } } }
	bStream { ap_memory {  { bStream_address0 mem_address 1 3 }  { bStream_ce0 mem_ce 1 1 }  { bStream_q0 in_data 0 8 } } }
	state_bstate_held_aligned_word_0_out { ap_vld {  { state_bstate_held_aligned_word_0_out out_data 1 8 }  { state_bstate_held_aligned_word_0_out_ap_vld out_vld 1 1 } } }
	state_bstate_n_bits_held_0_out { ap_vld {  { state_bstate_n_bits_held_0_out out_data 1 8 }  { state_bstate_n_bits_held_0_out_ap_vld out_vld 1 1 } } }
	write_flag2_1_out { ap_vld {  { write_flag2_1_out out_data 1 1 }  { write_flag2_1_out_ap_vld out_vld 1 1 } } }
	state_bstate_currIdx_0_out { ap_vld {  { state_bstate_currIdx_0_out out_data 1 32 }  { state_bstate_currIdx_0_out_ap_vld out_vld 1 1 } } }
	state_ivlOffset_1_out { ap_vld {  { state_ivlOffset_1_out out_data 1 32 }  { state_ivlOffset_1_out_ap_vld out_vld 1 1 } } }
	baeState_0_constprop { ap_vld {  { baeState_0_constprop out_data 1 32 }  { baeState_0_constprop_ap_vld out_vld 1 1 } } }
}
