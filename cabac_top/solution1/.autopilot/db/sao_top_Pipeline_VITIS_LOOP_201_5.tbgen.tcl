set moduleName sao_top_Pipeline_VITIS_LOOP_201_5
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
set C_modelName {sao_top_Pipeline_VITIS_LOOP_201_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read5 int 16 regular  }
	{ p_read6 int 16 regular  }
	{ p_read7 int 16 regular  }
	{ p_read8 int 16 regular  }
	{ p_read9 int 16 regular  }
	{ p_read10 int 16 regular  }
	{ p_read11 int 16 regular  }
	{ p_read12 int 16 regular  }
	{ p_read13 int 16 regular  }
	{ p_read14 int 16 regular  }
	{ p_read15 int 16 regular  }
	{ p_read16 int 16 regular  }
	{ p_read17 int 16 regular  }
	{ p_read18 int 16 regular  }
	{ p_read19 int 16 regular  }
	{ p_read23 int 8 regular  }
	{ p_read24 int 8 regular  }
	{ p_read25 int 8 regular  }
	{ p_read20 int 8 regular  }
	{ p_read21 int 8 regular  }
	{ p_read22 int 8 regular  }
	{ out_SaoOffsetVal int 16 regular {array 15 { 0 0 } 0 1 }  }
	{ p_read2 int 8 regular  }
	{ p_read3 int 8 regular  }
	{ p_read4 int 8 regular  }
	{ out_SaoTypeIdx_3_out int 8 regular {pointer 1}  }
	{ out_SaoTypeIdx33_3_out int 8 regular {pointer 1}  }
	{ out_SaoTypeIdx34_3_out int 8 regular {pointer 1}  }
	{ out_SaoEOClass35_3_out int 8 regular {pointer 1}  }
	{ out_SaoEOClass36_3_out int 8 regular {pointer 1}  }
	{ out_sao_band_position_3_out int 8 regular {pointer 1}  }
	{ out_SaoEOClass_3_out int 8 regular {pointer 1}  }
	{ out_sao_band_position37_3_out int 8 regular {pointer 1}  }
	{ out_sao_band_position38_3_out int 8 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read15", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read16", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read17", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read18", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read19", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read23", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read24", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read25", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read20", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read21", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read22", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_SaoOffsetVal", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_SaoTypeIdx_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_SaoTypeIdx33_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_SaoTypeIdx34_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_SaoEOClass35_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_SaoEOClass36_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_sao_band_position_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_SaoEOClass_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_sao_band_position37_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_sao_band_position38_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read5 sc_in sc_lv 16 signal 0 } 
	{ p_read6 sc_in sc_lv 16 signal 1 } 
	{ p_read7 sc_in sc_lv 16 signal 2 } 
	{ p_read8 sc_in sc_lv 16 signal 3 } 
	{ p_read9 sc_in sc_lv 16 signal 4 } 
	{ p_read10 sc_in sc_lv 16 signal 5 } 
	{ p_read11 sc_in sc_lv 16 signal 6 } 
	{ p_read12 sc_in sc_lv 16 signal 7 } 
	{ p_read13 sc_in sc_lv 16 signal 8 } 
	{ p_read14 sc_in sc_lv 16 signal 9 } 
	{ p_read15 sc_in sc_lv 16 signal 10 } 
	{ p_read16 sc_in sc_lv 16 signal 11 } 
	{ p_read17 sc_in sc_lv 16 signal 12 } 
	{ p_read18 sc_in sc_lv 16 signal 13 } 
	{ p_read19 sc_in sc_lv 16 signal 14 } 
	{ p_read23 sc_in sc_lv 8 signal 15 } 
	{ p_read24 sc_in sc_lv 8 signal 16 } 
	{ p_read25 sc_in sc_lv 8 signal 17 } 
	{ p_read20 sc_in sc_lv 8 signal 18 } 
	{ p_read21 sc_in sc_lv 8 signal 19 } 
	{ p_read22 sc_in sc_lv 8 signal 20 } 
	{ out_SaoOffsetVal_address0 sc_out sc_lv 4 signal 21 } 
	{ out_SaoOffsetVal_ce0 sc_out sc_logic 1 signal 21 } 
	{ out_SaoOffsetVal_we0 sc_out sc_logic 1 signal 21 } 
	{ out_SaoOffsetVal_d0 sc_out sc_lv 16 signal 21 } 
	{ out_SaoOffsetVal_address1 sc_out sc_lv 4 signal 21 } 
	{ out_SaoOffsetVal_ce1 sc_out sc_logic 1 signal 21 } 
	{ out_SaoOffsetVal_we1 sc_out sc_logic 1 signal 21 } 
	{ out_SaoOffsetVal_d1 sc_out sc_lv 16 signal 21 } 
	{ p_read2 sc_in sc_lv 8 signal 22 } 
	{ p_read3 sc_in sc_lv 8 signal 23 } 
	{ p_read4 sc_in sc_lv 8 signal 24 } 
	{ out_SaoTypeIdx_3_out sc_out sc_lv 8 signal 25 } 
	{ out_SaoTypeIdx_3_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ out_SaoTypeIdx33_3_out sc_out sc_lv 8 signal 26 } 
	{ out_SaoTypeIdx33_3_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ out_SaoTypeIdx34_3_out sc_out sc_lv 8 signal 27 } 
	{ out_SaoTypeIdx34_3_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ out_SaoEOClass35_3_out sc_out sc_lv 8 signal 28 } 
	{ out_SaoEOClass35_3_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ out_SaoEOClass36_3_out sc_out sc_lv 8 signal 29 } 
	{ out_SaoEOClass36_3_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ out_sao_band_position_3_out sc_out sc_lv 8 signal 30 } 
	{ out_sao_band_position_3_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ out_SaoEOClass_3_out sc_out sc_lv 8 signal 31 } 
	{ out_SaoEOClass_3_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ out_sao_band_position37_3_out sc_out sc_lv 8 signal 32 } 
	{ out_sao_band_position37_3_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ out_sao_band_position38_3_out sc_out sc_lv 8 signal 33 } 
	{ out_sao_band_position38_3_out_ap_vld sc_out sc_logic 1 outvld 33 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "p_read11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read11", "role": "default" }} , 
 	{ "name": "p_read12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read12", "role": "default" }} , 
 	{ "name": "p_read13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read13", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "p_read15", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read15", "role": "default" }} , 
 	{ "name": "p_read16", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read16", "role": "default" }} , 
 	{ "name": "p_read17", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read17", "role": "default" }} , 
 	{ "name": "p_read18", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read18", "role": "default" }} , 
 	{ "name": "p_read19", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read19", "role": "default" }} , 
 	{ "name": "p_read23", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read23", "role": "default" }} , 
 	{ "name": "p_read24", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read24", "role": "default" }} , 
 	{ "name": "p_read25", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read25", "role": "default" }} , 
 	{ "name": "p_read20", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read20", "role": "default" }} , 
 	{ "name": "p_read21", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read21", "role": "default" }} , 
 	{ "name": "p_read22", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read22", "role": "default" }} , 
 	{ "name": "out_SaoOffsetVal_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "address0" }} , 
 	{ "name": "out_SaoOffsetVal_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "ce0" }} , 
 	{ "name": "out_SaoOffsetVal_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "we0" }} , 
 	{ "name": "out_SaoOffsetVal_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "d0" }} , 
 	{ "name": "out_SaoOffsetVal_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "address1" }} , 
 	{ "name": "out_SaoOffsetVal_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "ce1" }} , 
 	{ "name": "out_SaoOffsetVal_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "we1" }} , 
 	{ "name": "out_SaoOffsetVal_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "d1" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "out_SaoTypeIdx_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoTypeIdx_3_out", "role": "default" }} , 
 	{ "name": "out_SaoTypeIdx_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_SaoTypeIdx_3_out", "role": "ap_vld" }} , 
 	{ "name": "out_SaoTypeIdx33_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoTypeIdx33_3_out", "role": "default" }} , 
 	{ "name": "out_SaoTypeIdx33_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_SaoTypeIdx33_3_out", "role": "ap_vld" }} , 
 	{ "name": "out_SaoTypeIdx34_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoTypeIdx34_3_out", "role": "default" }} , 
 	{ "name": "out_SaoTypeIdx34_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_SaoTypeIdx34_3_out", "role": "ap_vld" }} , 
 	{ "name": "out_SaoEOClass35_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoEOClass35_3_out", "role": "default" }} , 
 	{ "name": "out_SaoEOClass35_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_SaoEOClass35_3_out", "role": "ap_vld" }} , 
 	{ "name": "out_SaoEOClass36_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoEOClass36_3_out", "role": "default" }} , 
 	{ "name": "out_SaoEOClass36_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_SaoEOClass36_3_out", "role": "ap_vld" }} , 
 	{ "name": "out_sao_band_position_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_sao_band_position_3_out", "role": "default" }} , 
 	{ "name": "out_sao_band_position_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_sao_band_position_3_out", "role": "ap_vld" }} , 
 	{ "name": "out_SaoEOClass_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoEOClass_3_out", "role": "default" }} , 
 	{ "name": "out_SaoEOClass_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_SaoEOClass_3_out", "role": "ap_vld" }} , 
 	{ "name": "out_sao_band_position37_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_sao_band_position37_3_out", "role": "default" }} , 
 	{ "name": "out_sao_band_position37_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_sao_band_position37_3_out", "role": "ap_vld" }} , 
 	{ "name": "out_sao_band_position38_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_sao_band_position38_3_out", "role": "default" }} , 
 	{ "name": "out_sao_band_position38_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_sao_band_position38_3_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "sao_top_Pipeline_VITIS_LOOP_201_5",
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
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_SaoOffsetVal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_SaoTypeIdx_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_SaoTypeIdx33_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_SaoTypeIdx34_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_SaoEOClass35_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_SaoEOClass36_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_sao_band_position_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_SaoEOClass_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_sao_band_position37_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_sao_band_position38_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_201_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U110", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U111", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U112", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U113", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U114", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U115", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U116", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U117", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sao_top_Pipeline_VITIS_LOOP_201_5 {
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		out_SaoOffsetVal {Type O LastRead -1 FirstWrite 0}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		out_SaoTypeIdx_3_out {Type O LastRead -1 FirstWrite 0}
		out_SaoTypeIdx33_3_out {Type O LastRead -1 FirstWrite 0}
		out_SaoTypeIdx34_3_out {Type O LastRead -1 FirstWrite 0}
		out_SaoEOClass35_3_out {Type O LastRead -1 FirstWrite 0}
		out_SaoEOClass36_3_out {Type O LastRead -1 FirstWrite 0}
		out_sao_band_position_3_out {Type O LastRead -1 FirstWrite 0}
		out_SaoEOClass_3_out {Type O LastRead -1 FirstWrite 0}
		out_sao_band_position37_3_out {Type O LastRead -1 FirstWrite 0}
		out_sao_band_position38_3_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "11"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read5 { ap_none {  { p_read5 in_data 0 16 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 16 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 16 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 16 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 16 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 16 } } }
	p_read11 { ap_none {  { p_read11 in_data 0 16 } } }
	p_read12 { ap_none {  { p_read12 in_data 0 16 } } }
	p_read13 { ap_none {  { p_read13 in_data 0 16 } } }
	p_read14 { ap_none {  { p_read14 in_data 0 16 } } }
	p_read15 { ap_none {  { p_read15 in_data 0 16 } } }
	p_read16 { ap_none {  { p_read16 in_data 0 16 } } }
	p_read17 { ap_none {  { p_read17 in_data 0 16 } } }
	p_read18 { ap_none {  { p_read18 in_data 0 16 } } }
	p_read19 { ap_none {  { p_read19 in_data 0 16 } } }
	p_read23 { ap_none {  { p_read23 in_data 0 8 } } }
	p_read24 { ap_none {  { p_read24 in_data 0 8 } } }
	p_read25 { ap_none {  { p_read25 in_data 0 8 } } }
	p_read20 { ap_none {  { p_read20 in_data 0 8 } } }
	p_read21 { ap_none {  { p_read21 in_data 0 8 } } }
	p_read22 { ap_none {  { p_read22 in_data 0 8 } } }
	out_SaoOffsetVal { ap_memory {  { out_SaoOffsetVal_address0 mem_address 1 4 }  { out_SaoOffsetVal_ce0 mem_ce 1 1 }  { out_SaoOffsetVal_we0 mem_we 1 1 }  { out_SaoOffsetVal_d0 mem_din 1 16 }  { out_SaoOffsetVal_address1 MemPortADDR2 1 4 }  { out_SaoOffsetVal_ce1 MemPortCE2 1 1 }  { out_SaoOffsetVal_we1 MemPortWE2 1 1 }  { out_SaoOffsetVal_d1 MemPortDIN2 1 16 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 8 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 8 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 8 } } }
	out_SaoTypeIdx_3_out { ap_vld {  { out_SaoTypeIdx_3_out out_data 1 8 }  { out_SaoTypeIdx_3_out_ap_vld out_vld 1 1 } } }
	out_SaoTypeIdx33_3_out { ap_vld {  { out_SaoTypeIdx33_3_out out_data 1 8 }  { out_SaoTypeIdx33_3_out_ap_vld out_vld 1 1 } } }
	out_SaoTypeIdx34_3_out { ap_vld {  { out_SaoTypeIdx34_3_out out_data 1 8 }  { out_SaoTypeIdx34_3_out_ap_vld out_vld 1 1 } } }
	out_SaoEOClass35_3_out { ap_vld {  { out_SaoEOClass35_3_out out_data 1 8 }  { out_SaoEOClass35_3_out_ap_vld out_vld 1 1 } } }
	out_SaoEOClass36_3_out { ap_vld {  { out_SaoEOClass36_3_out out_data 1 8 }  { out_SaoEOClass36_3_out_ap_vld out_vld 1 1 } } }
	out_sao_band_position_3_out { ap_vld {  { out_sao_band_position_3_out out_data 1 8 }  { out_sao_band_position_3_out_ap_vld out_vld 1 1 } } }
	out_SaoEOClass_3_out { ap_vld {  { out_SaoEOClass_3_out out_data 1 8 }  { out_SaoEOClass_3_out_ap_vld out_vld 1 1 } } }
	out_sao_band_position37_3_out { ap_vld {  { out_sao_band_position37_3_out out_data 1 8 }  { out_sao_band_position37_3_out_ap_vld out_vld 1 1 } } }
	out_sao_band_position38_3_out { ap_vld {  { out_sao_band_position38_3_out out_data 1 8 }  { out_sao_band_position38_3_out_ap_vld out_vld 1 1 } } }
}
