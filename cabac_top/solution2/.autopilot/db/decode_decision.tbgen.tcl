set moduleName decode_decision
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
set C_modelName {decode_decision}
set C_modelType { int 113 }
set C_modelArgList {
	{ init_offset uint 1 regular  }
	{ mode_offset int 1 regular  }
	{ state_ivlCurrRange_V_read int 32 regular  }
	{ state_ivlOffset_V_read int 32 regular  }
	{ state_bstate_currIdx_read int 32 regular  }
	{ state_bstate_n_bits_held_read int 8 regular  }
	{ state_bstate_held_aligned_word_read int 8 regular  }
	{ bStream int 8 regular {pointer 0 volatile }  }
	{ bStream1 int 8 regular {pointer 0 volatile }  }
	{ p_read int 8 regular  }
	{ p_read1 int 8 regular  }
	{ ctxAddr_offset int 1 regular  }
	{ ctxTables int 8 regular {array 512 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "init_offset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "mode_offset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "state_ivlCurrRange_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_ivlOffset_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_bstate_currIdx_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_bstate_n_bits_held_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "state_bstate_held_aligned_word_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bStream", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bStream1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ctxAddr_offset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ctxTables", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 113} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ init_offset sc_in sc_logic 1 signal 0 } 
	{ mode_offset sc_in sc_lv 1 signal 1 } 
	{ state_ivlCurrRange_V_read sc_in sc_lv 32 signal 2 } 
	{ state_ivlOffset_V_read sc_in sc_lv 32 signal 3 } 
	{ state_bstate_currIdx_read sc_in sc_lv 32 signal 4 } 
	{ state_bstate_n_bits_held_read sc_in sc_lv 8 signal 5 } 
	{ state_bstate_held_aligned_word_read sc_in sc_lv 8 signal 6 } 
	{ bStream sc_in sc_lv 8 signal 7 } 
	{ bStream1 sc_in sc_lv 8 signal 8 } 
	{ p_read sc_in sc_lv 8 signal 9 } 
	{ p_read1 sc_in sc_lv 8 signal 10 } 
	{ ctxAddr_offset sc_in sc_lv 1 signal 11 } 
	{ ctxTables_address0 sc_out sc_lv 9 signal 12 } 
	{ ctxTables_ce0 sc_out sc_logic 1 signal 12 } 
	{ ctxTables_we0 sc_out sc_logic 1 signal 12 } 
	{ ctxTables_d0 sc_out sc_lv 8 signal 12 } 
	{ ctxTables_q0 sc_in sc_lv 8 signal 12 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 8 signal -1 } 
	{ ap_return_3 sc_out sc_lv 8 signal -1 } 
	{ ap_return_4 sc_out sc_lv 1 signal -1 } 
	{ ap_return_5 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "init_offset", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_offset", "role": "default" }} , 
 	{ "name": "mode_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mode_offset", "role": "default" }} , 
 	{ "name": "state_ivlCurrRange_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_ivlCurrRange_V_read", "role": "default" }} , 
 	{ "name": "state_ivlOffset_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_ivlOffset_V_read", "role": "default" }} , 
 	{ "name": "state_bstate_currIdx_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_bstate_currIdx_read", "role": "default" }} , 
 	{ "name": "state_bstate_n_bits_held_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_bstate_n_bits_held_read", "role": "default" }} , 
 	{ "name": "state_bstate_held_aligned_word_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_bstate_held_aligned_word_read", "role": "default" }} , 
 	{ "name": "bStream", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bStream", "role": "default" }} , 
 	{ "name": "bStream1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bStream1", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "ctxAddr_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctxAddr_offset", "role": "default" }} , 
 	{ "name": "ctxTables_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ctxTables", "role": "address0" }} , 
 	{ "name": "ctxTables_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctxTables", "role": "ce0" }} , 
 	{ "name": "ctxTables_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctxTables", "role": "we0" }} , 
 	{ "name": "ctxTables_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctxTables", "role": "d0" }} , 
 	{ "name": "ctxTables_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctxTables", "role": "q0" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "7"],
		"CDFG" : "decode_decision",
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
			{"Name" : "init_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mode_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_ivlCurrRange_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_ivlOffset_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_bstate_currIdx_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_bstate_n_bits_held_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_bstate_held_aligned_word_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bStream", "Type" : "None", "Direction" : "I"},
			{"Name" : "bStream1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctxAddr_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctxTables", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lpsTable", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "transMPS", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "transLPS", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lpsTable_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.transMPS_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.transLPS_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_decode_decision_Pipeline_VITIS_LOOP_53_1_fu_354", "Parent" : "0", "Child" : ["5", "6"],
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decode_decision_Pipeline_VITIS_LOOP_53_1_fu_354.mux_42_8_1_1_U21", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decode_decision_Pipeline_VITIS_LOOP_53_1_fu_354.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U37", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	decode_decision {
		init_offset {Type I LastRead 0 FirstWrite -1}
		mode_offset {Type I LastRead 0 FirstWrite -1}
		state_ivlCurrRange_V_read {Type I LastRead 0 FirstWrite -1}
		state_ivlOffset_V_read {Type I LastRead 0 FirstWrite -1}
		state_bstate_currIdx_read {Type I LastRead 0 FirstWrite -1}
		state_bstate_n_bits_held_read {Type I LastRead 0 FirstWrite -1}
		state_bstate_held_aligned_word_read {Type I LastRead 0 FirstWrite -1}
		bStream {Type I LastRead 3 FirstWrite -1}
		bStream1 {Type I LastRead 3 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ctxAddr_offset {Type I LastRead 0 FirstWrite -1}
		ctxTables {Type IO LastRead 0 FirstWrite 3}
		lpsTable {Type I LastRead -1 FirstWrite -1}
		transMPS {Type I LastRead -1 FirstWrite -1}
		transLPS {Type I LastRead -1 FirstWrite -1}}
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
]}

set Spec2ImplPortList { 
	init_offset { ap_none {  { init_offset in_data 0 1 } } }
	mode_offset { ap_none {  { mode_offset in_data 0 1 } } }
	state_ivlCurrRange_V_read { ap_none {  { state_ivlCurrRange_V_read in_data 0 32 } } }
	state_ivlOffset_V_read { ap_none {  { state_ivlOffset_V_read in_data 0 32 } } }
	state_bstate_currIdx_read { ap_none {  { state_bstate_currIdx_read in_data 0 32 } } }
	state_bstate_n_bits_held_read { ap_none {  { state_bstate_n_bits_held_read in_data 0 8 } } }
	state_bstate_held_aligned_word_read { ap_none {  { state_bstate_held_aligned_word_read in_data 0 8 } } }
	bStream { ap_none {  { bStream in_data 0 8 } } }
	bStream1 { ap_none {  { bStream1 in_data 0 8 } } }
	p_read { ap_none {  { p_read in_data 0 8 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 8 } } }
	ctxAddr_offset { ap_none {  { ctxAddr_offset in_data 0 1 } } }
	ctxTables { ap_memory {  { ctxTables_address0 mem_address 1 9 }  { ctxTables_ce0 mem_ce 1 1 }  { ctxTables_we0 mem_we 1 1 }  { ctxTables_d0 mem_din 1 8 }  { ctxTables_q0 in_data 0 8 } } }
}
