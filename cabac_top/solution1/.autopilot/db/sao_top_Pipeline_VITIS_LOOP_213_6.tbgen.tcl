set moduleName sao_top_Pipeline_VITIS_LOOP_213_6
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
set C_modelName {sao_top_Pipeline_VITIS_LOOP_213_6}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_SaoTypeIdx_5 int 8 regular  }
	{ out_SaoTypeIdx33_5 int 8 regular  }
	{ out_SaoTypeIdx34_5 int 8 regular  }
	{ out_SaoEOClass35_5 int 8 regular  }
	{ out_SaoEOClass36_5 int 8 regular  }
	{ out_sao_band_position_5 int 8 regular  }
	{ out_SaoEOClass_5 int 8 regular  }
	{ out_sao_band_position37_5 int 8 regular  }
	{ out_sao_band_position38_5 int 8 regular  }
	{ p_read30 int 16 regular  }
	{ p_read31 int 16 regular  }
	{ p_read32 int 16 regular  }
	{ p_read33 int 16 regular  }
	{ p_read34 int 16 regular  }
	{ p_read35 int 16 regular  }
	{ p_read36 int 16 regular  }
	{ p_read37 int 16 regular  }
	{ p_read38 int 16 regular  }
	{ p_read39 int 16 regular  }
	{ p_read40 int 16 regular  }
	{ p_read41 int 16 regular  }
	{ p_read42 int 16 regular  }
	{ p_read43 int 16 regular  }
	{ p_read44 int 16 regular  }
	{ p_read48 int 8 regular  }
	{ p_read49 int 8 regular  }
	{ p_read50 int 8 regular  }
	{ p_read45 int 8 regular  }
	{ p_read46 int 8 regular  }
	{ p_read47 int 8 regular  }
	{ out_SaoOffsetVal int 16 regular {array 15 { 0 0 } 0 1 }  }
	{ p_read27 int 8 regular  }
	{ p_read28 int 8 regular  }
	{ p_read29 int 8 regular  }
	{ out_SaoTypeIdx_6_out int 8 regular {pointer 1}  }
	{ out_SaoTypeIdx33_6_out int 8 regular {pointer 1}  }
	{ out_SaoTypeIdx34_6_out int 8 regular {pointer 1}  }
	{ out_SaoEOClass35_6_out int 8 regular {pointer 1}  }
	{ out_SaoEOClass36_6_out int 8 regular {pointer 1}  }
	{ out_sao_band_position_6_out int 8 regular {pointer 1}  }
	{ out_SaoEOClass_6_out int 8 regular {pointer 1}  }
	{ out_sao_band_position37_6_out int 8 regular {pointer 1}  }
	{ out_sao_band_position38_6_out int 8 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_SaoTypeIdx_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_SaoTypeIdx33_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_SaoTypeIdx34_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_SaoEOClass35_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_SaoEOClass36_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_sao_band_position_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_SaoEOClass_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_sao_band_position37_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_sao_band_position38_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read30", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read31", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read32", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read33", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read34", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read35", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read36", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read37", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read38", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read39", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read40", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read41", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read42", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read43", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read44", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read48", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read49", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read50", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read45", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read46", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read47", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_SaoOffsetVal", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read27", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read28", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read29", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_SaoTypeIdx_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_SaoTypeIdx33_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_SaoTypeIdx34_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_SaoEOClass35_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_SaoEOClass36_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_sao_band_position_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_SaoEOClass_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_sao_band_position37_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_sao_band_position38_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_SaoTypeIdx_5 sc_in sc_lv 8 signal 0 } 
	{ out_SaoTypeIdx33_5 sc_in sc_lv 8 signal 1 } 
	{ out_SaoTypeIdx34_5 sc_in sc_lv 8 signal 2 } 
	{ out_SaoEOClass35_5 sc_in sc_lv 8 signal 3 } 
	{ out_SaoEOClass36_5 sc_in sc_lv 8 signal 4 } 
	{ out_sao_band_position_5 sc_in sc_lv 8 signal 5 } 
	{ out_SaoEOClass_5 sc_in sc_lv 8 signal 6 } 
	{ out_sao_band_position37_5 sc_in sc_lv 8 signal 7 } 
	{ out_sao_band_position38_5 sc_in sc_lv 8 signal 8 } 
	{ p_read30 sc_in sc_lv 16 signal 9 } 
	{ p_read31 sc_in sc_lv 16 signal 10 } 
	{ p_read32 sc_in sc_lv 16 signal 11 } 
	{ p_read33 sc_in sc_lv 16 signal 12 } 
	{ p_read34 sc_in sc_lv 16 signal 13 } 
	{ p_read35 sc_in sc_lv 16 signal 14 } 
	{ p_read36 sc_in sc_lv 16 signal 15 } 
	{ p_read37 sc_in sc_lv 16 signal 16 } 
	{ p_read38 sc_in sc_lv 16 signal 17 } 
	{ p_read39 sc_in sc_lv 16 signal 18 } 
	{ p_read40 sc_in sc_lv 16 signal 19 } 
	{ p_read41 sc_in sc_lv 16 signal 20 } 
	{ p_read42 sc_in sc_lv 16 signal 21 } 
	{ p_read43 sc_in sc_lv 16 signal 22 } 
	{ p_read44 sc_in sc_lv 16 signal 23 } 
	{ p_read48 sc_in sc_lv 8 signal 24 } 
	{ p_read49 sc_in sc_lv 8 signal 25 } 
	{ p_read50 sc_in sc_lv 8 signal 26 } 
	{ p_read45 sc_in sc_lv 8 signal 27 } 
	{ p_read46 sc_in sc_lv 8 signal 28 } 
	{ p_read47 sc_in sc_lv 8 signal 29 } 
	{ out_SaoOffsetVal_address0 sc_out sc_lv 4 signal 30 } 
	{ out_SaoOffsetVal_ce0 sc_out sc_logic 1 signal 30 } 
	{ out_SaoOffsetVal_we0 sc_out sc_logic 1 signal 30 } 
	{ out_SaoOffsetVal_d0 sc_out sc_lv 16 signal 30 } 
	{ out_SaoOffsetVal_address1 sc_out sc_lv 4 signal 30 } 
	{ out_SaoOffsetVal_ce1 sc_out sc_logic 1 signal 30 } 
	{ out_SaoOffsetVal_we1 sc_out sc_logic 1 signal 30 } 
	{ out_SaoOffsetVal_d1 sc_out sc_lv 16 signal 30 } 
	{ p_read27 sc_in sc_lv 8 signal 31 } 
	{ p_read28 sc_in sc_lv 8 signal 32 } 
	{ p_read29 sc_in sc_lv 8 signal 33 } 
	{ out_SaoTypeIdx_6_out sc_out sc_lv 8 signal 34 } 
	{ out_SaoTypeIdx_6_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ out_SaoTypeIdx33_6_out sc_out sc_lv 8 signal 35 } 
	{ out_SaoTypeIdx33_6_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ out_SaoTypeIdx34_6_out sc_out sc_lv 8 signal 36 } 
	{ out_SaoTypeIdx34_6_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ out_SaoEOClass35_6_out sc_out sc_lv 8 signal 37 } 
	{ out_SaoEOClass35_6_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ out_SaoEOClass36_6_out sc_out sc_lv 8 signal 38 } 
	{ out_SaoEOClass36_6_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ out_sao_band_position_6_out sc_out sc_lv 8 signal 39 } 
	{ out_sao_band_position_6_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ out_SaoEOClass_6_out sc_out sc_lv 8 signal 40 } 
	{ out_SaoEOClass_6_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ out_sao_band_position37_6_out sc_out sc_lv 8 signal 41 } 
	{ out_sao_band_position37_6_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ out_sao_band_position38_6_out sc_out sc_lv 8 signal 42 } 
	{ out_sao_band_position38_6_out_ap_vld sc_out sc_logic 1 outvld 42 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_SaoTypeIdx_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoTypeIdx_5", "role": "default" }} , 
 	{ "name": "out_SaoTypeIdx33_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoTypeIdx33_5", "role": "default" }} , 
 	{ "name": "out_SaoTypeIdx34_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoTypeIdx34_5", "role": "default" }} , 
 	{ "name": "out_SaoEOClass35_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoEOClass35_5", "role": "default" }} , 
 	{ "name": "out_SaoEOClass36_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoEOClass36_5", "role": "default" }} , 
 	{ "name": "out_sao_band_position_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_sao_band_position_5", "role": "default" }} , 
 	{ "name": "out_SaoEOClass_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoEOClass_5", "role": "default" }} , 
 	{ "name": "out_sao_band_position37_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_sao_band_position37_5", "role": "default" }} , 
 	{ "name": "out_sao_band_position38_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_sao_band_position38_5", "role": "default" }} , 
 	{ "name": "p_read30", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read30", "role": "default" }} , 
 	{ "name": "p_read31", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read31", "role": "default" }} , 
 	{ "name": "p_read32", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read32", "role": "default" }} , 
 	{ "name": "p_read33", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read33", "role": "default" }} , 
 	{ "name": "p_read34", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read34", "role": "default" }} , 
 	{ "name": "p_read35", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read35", "role": "default" }} , 
 	{ "name": "p_read36", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read36", "role": "default" }} , 
 	{ "name": "p_read37", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read37", "role": "default" }} , 
 	{ "name": "p_read38", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read38", "role": "default" }} , 
 	{ "name": "p_read39", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read39", "role": "default" }} , 
 	{ "name": "p_read40", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read40", "role": "default" }} , 
 	{ "name": "p_read41", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read41", "role": "default" }} , 
 	{ "name": "p_read42", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read42", "role": "default" }} , 
 	{ "name": "p_read43", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read43", "role": "default" }} , 
 	{ "name": "p_read44", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read44", "role": "default" }} , 
 	{ "name": "p_read48", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read48", "role": "default" }} , 
 	{ "name": "p_read49", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read49", "role": "default" }} , 
 	{ "name": "p_read50", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read50", "role": "default" }} , 
 	{ "name": "p_read45", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read45", "role": "default" }} , 
 	{ "name": "p_read46", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read46", "role": "default" }} , 
 	{ "name": "p_read47", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read47", "role": "default" }} , 
 	{ "name": "out_SaoOffsetVal_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "address0" }} , 
 	{ "name": "out_SaoOffsetVal_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "ce0" }} , 
 	{ "name": "out_SaoOffsetVal_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "we0" }} , 
 	{ "name": "out_SaoOffsetVal_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "d0" }} , 
 	{ "name": "out_SaoOffsetVal_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "address1" }} , 
 	{ "name": "out_SaoOffsetVal_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "ce1" }} , 
 	{ "name": "out_SaoOffsetVal_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "we1" }} , 
 	{ "name": "out_SaoOffsetVal_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_SaoOffsetVal", "role": "d1" }} , 
 	{ "name": "p_read27", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read27", "role": "default" }} , 
 	{ "name": "p_read28", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read28", "role": "default" }} , 
 	{ "name": "p_read29", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read29", "role": "default" }} , 
 	{ "name": "out_SaoTypeIdx_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoTypeIdx_6_out", "role": "default" }} , 
 	{ "name": "out_SaoTypeIdx_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_SaoTypeIdx_6_out", "role": "ap_vld" }} , 
 	{ "name": "out_SaoTypeIdx33_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoTypeIdx33_6_out", "role": "default" }} , 
 	{ "name": "out_SaoTypeIdx33_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_SaoTypeIdx33_6_out", "role": "ap_vld" }} , 
 	{ "name": "out_SaoTypeIdx34_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoTypeIdx34_6_out", "role": "default" }} , 
 	{ "name": "out_SaoTypeIdx34_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_SaoTypeIdx34_6_out", "role": "ap_vld" }} , 
 	{ "name": "out_SaoEOClass35_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoEOClass35_6_out", "role": "default" }} , 
 	{ "name": "out_SaoEOClass35_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_SaoEOClass35_6_out", "role": "ap_vld" }} , 
 	{ "name": "out_SaoEOClass36_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoEOClass36_6_out", "role": "default" }} , 
 	{ "name": "out_SaoEOClass36_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_SaoEOClass36_6_out", "role": "ap_vld" }} , 
 	{ "name": "out_sao_band_position_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_sao_band_position_6_out", "role": "default" }} , 
 	{ "name": "out_sao_band_position_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_sao_band_position_6_out", "role": "ap_vld" }} , 
 	{ "name": "out_SaoEOClass_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_SaoEOClass_6_out", "role": "default" }} , 
 	{ "name": "out_SaoEOClass_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_SaoEOClass_6_out", "role": "ap_vld" }} , 
 	{ "name": "out_sao_band_position37_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_sao_band_position37_6_out", "role": "default" }} , 
 	{ "name": "out_sao_band_position37_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_sao_band_position37_6_out", "role": "ap_vld" }} , 
 	{ "name": "out_sao_band_position38_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_sao_band_position38_6_out", "role": "default" }} , 
 	{ "name": "out_sao_band_position38_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_sao_band_position38_6_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "sao_top_Pipeline_VITIS_LOOP_213_6",
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
			{"Name" : "out_SaoTypeIdx_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_SaoTypeIdx33_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_SaoTypeIdx34_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_SaoEOClass35_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_SaoEOClass36_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_sao_band_position_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_SaoEOClass_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_sao_band_position37_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_sao_band_position38_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_SaoOffsetVal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_SaoTypeIdx_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_SaoTypeIdx33_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_SaoTypeIdx34_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_SaoEOClass35_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_SaoEOClass36_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_sao_band_position_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_SaoEOClass_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_sao_band_position37_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_sao_band_position38_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_213_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U154", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U155", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U156", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U157", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U158", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U159", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U160", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U161", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sao_top_Pipeline_VITIS_LOOP_213_6 {
		out_SaoTypeIdx_5 {Type I LastRead 0 FirstWrite -1}
		out_SaoTypeIdx33_5 {Type I LastRead 0 FirstWrite -1}
		out_SaoTypeIdx34_5 {Type I LastRead 0 FirstWrite -1}
		out_SaoEOClass35_5 {Type I LastRead 0 FirstWrite -1}
		out_SaoEOClass36_5 {Type I LastRead 0 FirstWrite -1}
		out_sao_band_position_5 {Type I LastRead 0 FirstWrite -1}
		out_SaoEOClass_5 {Type I LastRead 0 FirstWrite -1}
		out_sao_band_position37_5 {Type I LastRead 0 FirstWrite -1}
		out_sao_band_position38_5 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		out_SaoOffsetVal {Type O LastRead -1 FirstWrite 0}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		out_SaoTypeIdx_6_out {Type O LastRead -1 FirstWrite 0}
		out_SaoTypeIdx33_6_out {Type O LastRead -1 FirstWrite 0}
		out_SaoTypeIdx34_6_out {Type O LastRead -1 FirstWrite 0}
		out_SaoEOClass35_6_out {Type O LastRead -1 FirstWrite 0}
		out_SaoEOClass36_6_out {Type O LastRead -1 FirstWrite 0}
		out_sao_band_position_6_out {Type O LastRead -1 FirstWrite 0}
		out_SaoEOClass_6_out {Type O LastRead -1 FirstWrite 0}
		out_sao_band_position37_6_out {Type O LastRead -1 FirstWrite 0}
		out_sao_band_position38_6_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "11"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	out_SaoTypeIdx_5 { ap_none {  { out_SaoTypeIdx_5 in_data 0 8 } } }
	out_SaoTypeIdx33_5 { ap_none {  { out_SaoTypeIdx33_5 in_data 0 8 } } }
	out_SaoTypeIdx34_5 { ap_none {  { out_SaoTypeIdx34_5 in_data 0 8 } } }
	out_SaoEOClass35_5 { ap_none {  { out_SaoEOClass35_5 in_data 0 8 } } }
	out_SaoEOClass36_5 { ap_none {  { out_SaoEOClass36_5 in_data 0 8 } } }
	out_sao_band_position_5 { ap_none {  { out_sao_band_position_5 in_data 0 8 } } }
	out_SaoEOClass_5 { ap_none {  { out_SaoEOClass_5 in_data 0 8 } } }
	out_sao_band_position37_5 { ap_none {  { out_sao_band_position37_5 in_data 0 8 } } }
	out_sao_band_position38_5 { ap_none {  { out_sao_band_position38_5 in_data 0 8 } } }
	p_read30 { ap_none {  { p_read30 in_data 0 16 } } }
	p_read31 { ap_none {  { p_read31 in_data 0 16 } } }
	p_read32 { ap_none {  { p_read32 in_data 0 16 } } }
	p_read33 { ap_none {  { p_read33 in_data 0 16 } } }
	p_read34 { ap_none {  { p_read34 in_data 0 16 } } }
	p_read35 { ap_none {  { p_read35 in_data 0 16 } } }
	p_read36 { ap_none {  { p_read36 in_data 0 16 } } }
	p_read37 { ap_none {  { p_read37 in_data 0 16 } } }
	p_read38 { ap_none {  { p_read38 in_data 0 16 } } }
	p_read39 { ap_none {  { p_read39 in_data 0 16 } } }
	p_read40 { ap_none {  { p_read40 in_data 0 16 } } }
	p_read41 { ap_none {  { p_read41 in_data 0 16 } } }
	p_read42 { ap_none {  { p_read42 in_data 0 16 } } }
	p_read43 { ap_none {  { p_read43 in_data 0 16 } } }
	p_read44 { ap_none {  { p_read44 in_data 0 16 } } }
	p_read48 { ap_none {  { p_read48 in_data 0 8 } } }
	p_read49 { ap_none {  { p_read49 in_data 0 8 } } }
	p_read50 { ap_none {  { p_read50 in_data 0 8 } } }
	p_read45 { ap_none {  { p_read45 in_data 0 8 } } }
	p_read46 { ap_none {  { p_read46 in_data 0 8 } } }
	p_read47 { ap_none {  { p_read47 in_data 0 8 } } }
	out_SaoOffsetVal { ap_memory {  { out_SaoOffsetVal_address0 mem_address 1 4 }  { out_SaoOffsetVal_ce0 mem_ce 1 1 }  { out_SaoOffsetVal_we0 mem_we 1 1 }  { out_SaoOffsetVal_d0 mem_din 1 16 }  { out_SaoOffsetVal_address1 MemPortADDR2 1 4 }  { out_SaoOffsetVal_ce1 MemPortCE2 1 1 }  { out_SaoOffsetVal_we1 MemPortWE2 1 1 }  { out_SaoOffsetVal_d1 MemPortDIN2 1 16 } } }
	p_read27 { ap_none {  { p_read27 in_data 0 8 } } }
	p_read28 { ap_none {  { p_read28 in_data 0 8 } } }
	p_read29 { ap_none {  { p_read29 in_data 0 8 } } }
	out_SaoTypeIdx_6_out { ap_vld {  { out_SaoTypeIdx_6_out out_data 1 8 }  { out_SaoTypeIdx_6_out_ap_vld out_vld 1 1 } } }
	out_SaoTypeIdx33_6_out { ap_vld {  { out_SaoTypeIdx33_6_out out_data 1 8 }  { out_SaoTypeIdx33_6_out_ap_vld out_vld 1 1 } } }
	out_SaoTypeIdx34_6_out { ap_vld {  { out_SaoTypeIdx34_6_out out_data 1 8 }  { out_SaoTypeIdx34_6_out_ap_vld out_vld 1 1 } } }
	out_SaoEOClass35_6_out { ap_vld {  { out_SaoEOClass35_6_out out_data 1 8 }  { out_SaoEOClass35_6_out_ap_vld out_vld 1 1 } } }
	out_SaoEOClass36_6_out { ap_vld {  { out_SaoEOClass36_6_out out_data 1 8 }  { out_SaoEOClass36_6_out_ap_vld out_vld 1 1 } } }
	out_sao_band_position_6_out { ap_vld {  { out_sao_band_position_6_out out_data 1 8 }  { out_sao_band_position_6_out_ap_vld out_vld 1 1 } } }
	out_SaoEOClass_6_out { ap_vld {  { out_SaoEOClass_6_out out_data 1 8 }  { out_SaoEOClass_6_out_ap_vld out_vld 1 1 } } }
	out_sao_band_position37_6_out { ap_vld {  { out_sao_band_position37_6_out out_data 1 8 }  { out_sao_band_position37_6_out_ap_vld out_vld 1 1 } } }
	out_sao_band_position38_6_out { ap_vld {  { out_sao_band_position38_6_out out_data 1 8 }  { out_sao_band_position38_6_out_ap_vld out_vld 1 1 } } }
}
