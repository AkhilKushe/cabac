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
set C_modelType { int 81 }
set C_modelArgList {
	{ mode_offset int 1 regular  }
	{ p_read int 32 regular  }
	{ p_read1 int 32 regular  }
	{ p_read2 int 8 regular  }
	{ p_read3 int 8 regular  }
	{ bStream int 8 regular {array 7 { 1 3 } 1 1 }  }
	{ ctxTables int 8 regular {array 512 { 2 3 } 1 1 }  }
	{ baeState_0_constprop int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mode_offset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bStream", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ctxTables", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "baeState_0_constprop", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 81} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mode_offset sc_in sc_lv 1 signal 0 } 
	{ p_read sc_in sc_lv 32 signal 1 } 
	{ p_read1 sc_in sc_lv 32 signal 2 } 
	{ p_read2 sc_in sc_lv 8 signal 3 } 
	{ p_read3 sc_in sc_lv 8 signal 4 } 
	{ bStream_address0 sc_out sc_lv 3 signal 5 } 
	{ bStream_ce0 sc_out sc_logic 1 signal 5 } 
	{ bStream_q0 sc_in sc_lv 8 signal 5 } 
	{ ctxTables_address0 sc_out sc_lv 9 signal 6 } 
	{ ctxTables_ce0 sc_out sc_logic 1 signal 6 } 
	{ ctxTables_we0 sc_out sc_logic 1 signal 6 } 
	{ ctxTables_d0 sc_out sc_lv 8 signal 6 } 
	{ ctxTables_q0 sc_in sc_lv 8 signal 6 } 
	{ baeState_0_constprop_i sc_in sc_lv 32 signal 7 } 
	{ baeState_0_constprop_o sc_out sc_lv 32 signal 7 } 
	{ baeState_0_constprop_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 8 signal -1 } 
	{ ap_return_2 sc_out sc_lv 8 signal -1 } 
	{ ap_return_3 sc_out sc_lv 1 signal -1 } 
	{ ap_return_4 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mode_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mode_offset", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "bStream_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bStream", "role": "address0" }} , 
 	{ "name": "bStream_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bStream", "role": "ce0" }} , 
 	{ "name": "bStream_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bStream", "role": "q0" }} , 
 	{ "name": "ctxTables_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ctxTables", "role": "address0" }} , 
 	{ "name": "ctxTables_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctxTables", "role": "ce0" }} , 
 	{ "name": "ctxTables_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctxTables", "role": "we0" }} , 
 	{ "name": "ctxTables_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctxTables", "role": "d0" }} , 
 	{ "name": "ctxTables_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctxTables", "role": "q0" }} , 
 	{ "name": "baeState_0_constprop_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "baeState_0_constprop", "role": "i" }} , 
 	{ "name": "baeState_0_constprop_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "baeState_0_constprop", "role": "o" }} , 
 	{ "name": "baeState_0_constprop_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "baeState_0_constprop", "role": "o_ap_vld" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"Name" : "mode_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "bStream", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_decode_regular_fu_193", "Port" : "bStream", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ctxTables", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_decode_regular_fu_193", "Port" : "ctxTables", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "baeState_0_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_decode_regular_fu_193", "Port" : "baeState_0_constprop", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "lpsTable", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_decode_regular_fu_193", "Port" : "lpsTable", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "transMPS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_decode_regular_fu_193", "Port" : "transMPS", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "transLPS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_decode_regular_fu_193", "Port" : "transLPS", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_decode_regular_fu_193", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
		"CDFG" : "decode_regular",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "bStream", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_decode_regular_Pipeline_VITIS_LOOP_53_1_fu_196", "Port" : "bStream", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "ctxTables", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "baeState_0_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_decode_regular_Pipeline_VITIS_LOOP_53_1_fu_196", "Port" : "baeState_0_constprop", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "lpsTable", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "transMPS", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "transLPS", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decode_regular_fu_193.lpsTable_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decode_regular_fu_193.transMPS_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decode_regular_fu_193.transLPS_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decode_regular_fu_193.grp_decode_regular_Pipeline_VITIS_LOOP_53_1_fu_196", "Parent" : "1", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_decode_regular_fu_193.grp_decode_regular_Pipeline_VITIS_LOOP_53_1_fu_196.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"}]}


set ArgLastReadFirstWriteLatency {
	decode_decision {
		mode_offset {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		bStream {Type I LastRead 1 FirstWrite -1}
		ctxTables {Type IO LastRead 0 FirstWrite 5}
		baeState_0_constprop {Type IO LastRead 2 FirstWrite 1}
		lpsTable {Type I LastRead -1 FirstWrite -1}
		transMPS {Type I LastRead -1 FirstWrite -1}
		transLPS {Type I LastRead -1 FirstWrite -1}}
	decode_regular {
		p_read {Type I LastRead 3 FirstWrite -1}
		p_read1 {Type I LastRead 3 FirstWrite -1}
		p_read4 {Type I LastRead 3 FirstWrite -1}
		p_read5 {Type I LastRead 3 FirstWrite -1}
		bStream {Type I LastRead 1 FirstWrite -1}
		ctxTables {Type IO LastRead 0 FirstWrite 5}
		baeState_0_constprop {Type IO LastRead 1 FirstWrite 1}
		lpsTable {Type I LastRead -1 FirstWrite -1}
		transMPS {Type I LastRead -1 FirstWrite -1}
		transLPS {Type I LastRead -1 FirstWrite -1}}
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
]}

set Spec2ImplPortList { 
	mode_offset { ap_none {  { mode_offset in_data 0 1 } } }
	p_read { ap_none {  { p_read in_data 0 32 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 8 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 8 } } }
	bStream { ap_memory {  { bStream_address0 mem_address 1 3 }  { bStream_ce0 mem_ce 1 1 }  { bStream_q0 in_data 0 8 } } }
	ctxTables { ap_memory {  { ctxTables_address0 mem_address 1 9 }  { ctxTables_ce0 mem_ce 1 1 }  { ctxTables_we0 mem_we 1 1 }  { ctxTables_d0 mem_din 1 8 }  { ctxTables_q0 mem_dout 0 8 } } }
	baeState_0_constprop { ap_ovld {  { baeState_0_constprop_i in_data 0 32 }  { baeState_0_constprop_o out_data 1 32 }  { baeState_0_constprop_o_ap_vld out_vld 1 1 } } }
}
