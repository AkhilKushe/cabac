set moduleName decode_decision_Pipeline_VITIS_LOOP_53_1
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
set C_modelName {decode_decision_Pipeline_VITIS_LOOP_53_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ state_bstate_n_bits_held_read_assign int 8 regular  }
	{ state_bstate_held_aligned_word_read_assign int 8 regular  }
	{ state_bstate_currIdx_read_assign int 32 regular  }
	{ select_ln1076_2 int 32 regular  }
	{ select_ln1076 int 32 regular  }
	{ bStream_load_2 int 8 regular  }
	{ bStream1_load_2 int 8 regular  }
	{ p_read int 8 regular  }
	{ p_read1 int 8 regular  }
	{ state_bstate_n_bits_held_0_i_out int 8 regular {pointer 1}  }
	{ state_bstate_held_aligned_word_0_i_out int 8 regular {pointer 1}  }
	{ state_bstate_currIdx_0_i_out int 32 regular {pointer 1}  }
	{ phi_ln59_out int 32 regular {pointer 1}  }
	{ state_ivlCurrRange_1_i_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state_bstate_n_bits_held_read_assign", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "state_bstate_held_aligned_word_read_assign", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "state_bstate_currIdx_read_assign", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln1076_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln1076", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bStream_load_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bStream1_load_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "state_bstate_n_bits_held_0_i_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "state_bstate_held_aligned_word_0_i_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "state_bstate_currIdx_0_i_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "phi_ln59_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "state_ivlCurrRange_1_i_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ state_bstate_n_bits_held_read_assign sc_in sc_lv 8 signal 0 } 
	{ state_bstate_held_aligned_word_read_assign sc_in sc_lv 8 signal 1 } 
	{ state_bstate_currIdx_read_assign sc_in sc_lv 32 signal 2 } 
	{ select_ln1076_2 sc_in sc_lv 32 signal 3 } 
	{ select_ln1076 sc_in sc_lv 32 signal 4 } 
	{ bStream_load_2 sc_in sc_lv 8 signal 5 } 
	{ bStream1_load_2 sc_in sc_lv 8 signal 6 } 
	{ p_read sc_in sc_lv 8 signal 7 } 
	{ p_read1 sc_in sc_lv 8 signal 8 } 
	{ state_bstate_n_bits_held_0_i_out sc_out sc_lv 8 signal 9 } 
	{ state_bstate_n_bits_held_0_i_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ state_bstate_held_aligned_word_0_i_out sc_out sc_lv 8 signal 10 } 
	{ state_bstate_held_aligned_word_0_i_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ state_bstate_currIdx_0_i_out sc_out sc_lv 32 signal 11 } 
	{ state_bstate_currIdx_0_i_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ phi_ln59_out sc_out sc_lv 32 signal 12 } 
	{ phi_ln59_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ state_ivlCurrRange_1_i_out sc_out sc_lv 32 signal 13 } 
	{ state_ivlCurrRange_1_i_out_ap_vld sc_out sc_logic 1 outvld 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "state_bstate_n_bits_held_read_assign", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_bstate_n_bits_held_read_assign", "role": "default" }} , 
 	{ "name": "state_bstate_held_aligned_word_read_assign", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_bstate_held_aligned_word_read_assign", "role": "default" }} , 
 	{ "name": "state_bstate_currIdx_read_assign", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_bstate_currIdx_read_assign", "role": "default" }} , 
 	{ "name": "select_ln1076_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln1076_2", "role": "default" }} , 
 	{ "name": "select_ln1076", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln1076", "role": "default" }} , 
 	{ "name": "bStream_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bStream_load_2", "role": "default" }} , 
 	{ "name": "bStream1_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bStream1_load_2", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "state_bstate_n_bits_held_0_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_bstate_n_bits_held_0_i_out", "role": "default" }} , 
 	{ "name": "state_bstate_n_bits_held_0_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_bstate_n_bits_held_0_i_out", "role": "ap_vld" }} , 
 	{ "name": "state_bstate_held_aligned_word_0_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_bstate_held_aligned_word_0_i_out", "role": "default" }} , 
 	{ "name": "state_bstate_held_aligned_word_0_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_bstate_held_aligned_word_0_i_out", "role": "ap_vld" }} , 
 	{ "name": "state_bstate_currIdx_0_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_bstate_currIdx_0_i_out", "role": "default" }} , 
 	{ "name": "state_bstate_currIdx_0_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_bstate_currIdx_0_i_out", "role": "ap_vld" }} , 
 	{ "name": "phi_ln59_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "phi_ln59_out", "role": "default" }} , 
 	{ "name": "phi_ln59_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "phi_ln59_out", "role": "ap_vld" }} , 
 	{ "name": "state_ivlCurrRange_1_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_ivlCurrRange_1_i_out", "role": "default" }} , 
 	{ "name": "state_ivlCurrRange_1_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_ivlCurrRange_1_i_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "decode_decision_Pipeline_VITIS_LOOP_53_1",
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
			{"Name" : "state_bstate_n_bits_held_read_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_bstate_held_aligned_word_read_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_bstate_currIdx_read_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln1076_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln1076", "Type" : "None", "Direction" : "I"},
			{"Name" : "bStream_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "bStream1_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_bstate_n_bits_held_0_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_bstate_held_aligned_word_0_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_bstate_currIdx_0_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "phi_ln59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_ivlCurrRange_1_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U21", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	decode_decision_Pipeline_VITIS_LOOP_53_1 {
		state_bstate_n_bits_held_read_assign {Type I LastRead 0 FirstWrite -1}
		state_bstate_held_aligned_word_read_assign {Type I LastRead 0 FirstWrite -1}
		state_bstate_currIdx_read_assign {Type I LastRead 0 FirstWrite -1}
		select_ln1076_2 {Type I LastRead 0 FirstWrite -1}
		select_ln1076 {Type I LastRead 0 FirstWrite -1}
		bStream_load_2 {Type I LastRead 0 FirstWrite -1}
		bStream1_load_2 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		state_bstate_n_bits_held_0_i_out {Type O LastRead -1 FirstWrite 1}
		state_bstate_held_aligned_word_0_i_out {Type O LastRead -1 FirstWrite 1}
		state_bstate_currIdx_0_i_out {Type O LastRead -1 FirstWrite 1}
		phi_ln59_out {Type O LastRead -1 FirstWrite 1}
		state_ivlCurrRange_1_i_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	state_bstate_n_bits_held_read_assign { ap_none {  { state_bstate_n_bits_held_read_assign in_data 0 8 } } }
	state_bstate_held_aligned_word_read_assign { ap_none {  { state_bstate_held_aligned_word_read_assign in_data 0 8 } } }
	state_bstate_currIdx_read_assign { ap_none {  { state_bstate_currIdx_read_assign in_data 0 32 } } }
	select_ln1076_2 { ap_none {  { select_ln1076_2 in_data 0 32 } } }
	select_ln1076 { ap_none {  { select_ln1076 in_data 0 32 } } }
	bStream_load_2 { ap_none {  { bStream_load_2 in_data 0 8 } } }
	bStream1_load_2 { ap_none {  { bStream1_load_2 in_data 0 8 } } }
	p_read { ap_none {  { p_read in_data 0 8 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 8 } } }
	state_bstate_n_bits_held_0_i_out { ap_vld {  { state_bstate_n_bits_held_0_i_out out_data 1 8 }  { state_bstate_n_bits_held_0_i_out_ap_vld out_vld 1 1 } } }
	state_bstate_held_aligned_word_0_i_out { ap_vld {  { state_bstate_held_aligned_word_0_i_out out_data 1 8 }  { state_bstate_held_aligned_word_0_i_out_ap_vld out_vld 1 1 } } }
	state_bstate_currIdx_0_i_out { ap_vld {  { state_bstate_currIdx_0_i_out out_data 1 32 }  { state_bstate_currIdx_0_i_out_ap_vld out_vld 1 1 } } }
	phi_ln59_out { ap_vld {  { phi_ln59_out out_data 1 32 }  { phi_ln59_out_ap_vld out_vld 1 1 } } }
	state_ivlCurrRange_1_i_out { ap_vld {  { state_ivlCurrRange_1_i_out out_data 1 32 }  { state_ivlCurrRange_1_i_out_ap_vld out_vld 1 1 } } }
}
