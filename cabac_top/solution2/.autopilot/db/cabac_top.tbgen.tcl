set moduleName cabac_top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {cabac_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx int 8 regular {axi_master 2}  }
	{ globalCtx int 64 regular {axi_slave 0}  }
	{ bitStream int 8 regular {fifo 0 volatile }  }
	{ bitOut int 32 regular {fifo 1 volatile }  }
	{ initd int 128 regular  }
	{ ap_local_deadlock int 1 unused {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "globalCtx","offset": { "type": "dynamic","port_name": "globalCtx","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "globalCtx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "bitStream", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bitOut", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "initd", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "ap_local_deadlock", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "WRITEONLY", "offset" : {"out":0}, "offset_end" : {"out":4294967295}} ]}
# RTL Port declarations: 
set portNum 76
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_ctx_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_ctx_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_ctx_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ctx_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ctx_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ctx_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ctx_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_ctx_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_ctx_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_ctx_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ctx_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ctx_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ctx_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ctx_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_ctx_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ctx_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_ctx_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ctx_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ctx_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ctx_BUSER sc_in sc_lv 1 signal 0 } 
	{ bitStream_dout sc_in sc_lv 8 signal 2 } 
	{ bitStream_empty_n sc_in sc_logic 1 signal 2 } 
	{ bitStream_read sc_out sc_logic 1 signal 2 } 
	{ bitOut_din sc_out sc_lv 32 signal 3 } 
	{ bitOut_full_n sc_in sc_logic 1 signal 3 } 
	{ bitOut_write sc_out sc_logic 1 signal 3 } 
	{ initd sc_in sc_lv 128 signal 4 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"globalCtx","role":"data","value":"16"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"ap_local_deadlock","role":"data","value":"0"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_ctx_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ctx_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ctx_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ctx", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ctx_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "AWID" }} , 
 	{ "name": "m_axi_ctx_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ctx_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ctx_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ctx_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ctx_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ctx_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ctx_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ctx_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ctx_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ctx_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WVALID" }} , 
 	{ "name": "m_axi_ctx_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WREADY" }} , 
 	{ "name": "m_axi_ctx_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx", "role": "WDATA" }} , 
 	{ "name": "m_axi_ctx_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ctx_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WLAST" }} , 
 	{ "name": "m_axi_ctx_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WID" }} , 
 	{ "name": "m_axi_ctx_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WUSER" }} , 
 	{ "name": "m_axi_ctx_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ctx_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ctx_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ctx", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ctx_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "ARID" }} , 
 	{ "name": "m_axi_ctx_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ctx_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ctx_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ctx_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ctx_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ctx_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ctx_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ctx_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ctx_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ctx_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RVALID" }} , 
 	{ "name": "m_axi_ctx_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RREADY" }} , 
 	{ "name": "m_axi_ctx_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx", "role": "RDATA" }} , 
 	{ "name": "m_axi_ctx_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RLAST" }} , 
 	{ "name": "m_axi_ctx_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RID" }} , 
 	{ "name": "m_axi_ctx_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RUSER" }} , 
 	{ "name": "m_axi_ctx_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "RRESP" }} , 
 	{ "name": "m_axi_ctx_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "BVALID" }} , 
 	{ "name": "m_axi_ctx_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "BREADY" }} , 
 	{ "name": "m_axi_ctx_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "BRESP" }} , 
 	{ "name": "m_axi_ctx_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "BID" }} , 
 	{ "name": "m_axi_ctx_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "BUSER" }} , 
 	{ "name": "bitStream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bitStream", "role": "dout" }} , 
 	{ "name": "bitStream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bitStream", "role": "empty_n" }} , 
 	{ "name": "bitStream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bitStream", "role": "read" }} , 
 	{ "name": "bitOut_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitOut", "role": "din" }} , 
 	{ "name": "bitOut_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bitOut", "role": "full_n" }} , 
 	{ "name": "bitOut_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bitOut", "role": "write" }} , 
 	{ "name": "initd", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "initd", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "8", "9", "11", "13", "21", "22", "23", "24"],
		"CDFG" : "cabac_top",
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
			{"Name" : "ctx", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_cabac_top_Pipeline_VITIS_LOOP_13_1_fu_261", "Port" : "ctx", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "8", "SubInstance" : "grp_cabac_top_Pipeline_VITIS_LOOP_29_1_fu_201", "Port" : "ctx", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "globalCtx", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitStream", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_cabac_top_Pipeline_VITIS_LOOP_40_11_fu_217", "Port" : "bitStream", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "bitOut", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bitOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "initd", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_FRAME_INIT_VALS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_187", "Port" : "B_FRAME_INIT_VALS", "Inst_start_state" : "1", "Inst_end_state" : "5"}]},
			{"Name" : "P_FRAME_INIT_VALS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_187", "Port" : "P_FRAME_INIT_VALS", "Inst_start_state" : "1", "Inst_end_state" : "5"}]},
			{"Name" : "I_FRAME_INIT_VALS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_187", "Port" : "I_FRAME_INIT_VALS", "Inst_start_state" : "1", "Inst_end_state" : "5"}]},
			{"Name" : "lpsTable", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_decode_decision_fu_227", "Port" : "lpsTable", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "transMPS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_decode_decision_fu_227", "Port" : "transMPS", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "transLPS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_decode_decision_fu_227", "Port" : "transLPS", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "ap_local_deadlock", "Type" : "None", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctxTables_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_187", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_187.B_FRAME_INIT_VALS_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_187.P_FRAME_INIT_VALS_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_187.I_FRAME_INIT_VALS_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_187.mul_7s_6ns_13_1_1_U4", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_187.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_29_1_fu_201", "Parent" : "0",
		"CDFG" : "cabac_top_Pipeline_VITIS_LOOP_29_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "584", "EstimateLatencyMax" : "584",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ctx", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ctx_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "ctx_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "globalCtx", "Type" : "None", "Direction" : "I"},
			{"Name" : "streamCtxRAM", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "streamCtxRAM_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_29_1", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "72", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state70"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state74"]}}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_7_1_fu_209", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "cabac_top_Pipeline_VITIS_LOOP_7_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "514",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ctxWritten", "Type" : "None", "Direction" : "I"},
			{"Name" : "streamCtxRAM", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "streamCtxRAM_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ctxTables", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_7_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_7_1_fu_209.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_40_11_fu_217", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "cabac_top_Pipeline_VITIS_LOOP_40_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bitStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tempBst_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tempBst_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tempBst_3_025_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tempBst_2_024_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_40_11_fu_217.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_decode_decision_fu_227", "Parent" : "0", "Child" : ["14", "15", "16", "17", "20"],
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
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decode_decision_fu_227.lpsTable_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decode_decision_fu_227.transMPS_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decode_decision_fu_227.transLPS_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decode_decision_fu_227.grp_decode_decision_Pipeline_VITIS_LOOP_53_1_fu_354", "Parent" : "13", "Child" : ["18", "19"],
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_decode_decision_fu_227.grp_decode_decision_Pipeline_VITIS_LOOP_53_1_fu_354.mux_42_8_1_1_U21", "Parent" : "17"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_decode_decision_fu_227.grp_decode_decision_Pipeline_VITIS_LOOP_53_1_fu_354.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decode_decision_fu_227.mux_42_8_1_1_U37", "Parent" : "13"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_13_1_fu_261", "Parent" : "0",
		"CDFG" : "cabac_top_Pipeline_VITIS_LOOP_13_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "582",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ctx", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ctx_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "ctx_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "ctx_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "globalCtx", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctxWritten", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctxTables", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "70", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state5"]}}]},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_m_axi_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.streamCtxRAM_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cabac_top {
		ctx {Type IO LastRead 71 FirstWrite -1}
		globalCtx {Type I LastRead 0 FirstWrite -1}
		bitStream {Type I LastRead 1 FirstWrite -1}
		bitOut {Type O LastRead -1 FirstWrite 22}
		initd {Type I LastRead 0 FirstWrite -1}
		B_FRAME_INIT_VALS {Type I LastRead -1 FirstWrite -1}
		P_FRAME_INIT_VALS {Type I LastRead -1 FirstWrite -1}
		I_FRAME_INIT_VALS {Type I LastRead -1 FirstWrite -1}
		lpsTable {Type I LastRead -1 FirstWrite -1}
		transMPS {Type I LastRead -1 FirstWrite -1}
		transLPS {Type I LastRead -1 FirstWrite -1}
		ap_local_deadlock {Type O LastRead -1 FirstWrite -1}}
	cabac_top_Pipeline_VITIS_LOOP_40_1 {
		icmp_ln79 {Type I LastRead 0 FirstWrite -1}
		icmp_ln79_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln40 {Type I LastRead 0 FirstWrite -1}
		streamCtxRAM {Type O LastRead -1 FirstWrite 5}
		B_FRAME_INIT_VALS {Type I LastRead -1 FirstWrite -1}
		P_FRAME_INIT_VALS {Type I LastRead -1 FirstWrite -1}
		I_FRAME_INIT_VALS {Type I LastRead -1 FirstWrite -1}}
	cabac_top_Pipeline_VITIS_LOOP_29_1 {
		ctx {Type I LastRead 71 FirstWrite -1}
		globalCtx {Type I LastRead 0 FirstWrite -1}
		streamCtxRAM {Type O LastRead -1 FirstWrite 72}}
	cabac_top_Pipeline_VITIS_LOOP_7_1 {
		ctxWritten {Type I LastRead 0 FirstWrite -1}
		streamCtxRAM {Type I LastRead 1 FirstWrite -1}
		ctxTables {Type O LastRead -1 FirstWrite 1}}
	cabac_top_Pipeline_VITIS_LOOP_40_11 {
		bitStream {Type I LastRead 1 FirstWrite -1}
		tempBst_0 {Type O LastRead -1 FirstWrite 1}
		tempBst_1 {Type O LastRead -1 FirstWrite 1}
		tempBst_3_025_out {Type O LastRead -1 FirstWrite 0}
		tempBst_2_024_out {Type O LastRead -1 FirstWrite 0}}
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
		state_ivlCurrRange_1_i_out {Type O LastRead -1 FirstWrite 1}}
	cabac_top_Pipeline_VITIS_LOOP_13_1 {
		ctx {Type O LastRead 2 FirstWrite 3}
		globalCtx {Type I LastRead 0 FirstWrite -1}
		ctxWritten {Type I LastRead 0 FirstWrite -1}
		ctxTables {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx { m_axi {  { m_axi_ctx_AWVALID VALID 1 1 }  { m_axi_ctx_AWREADY READY 0 1 }  { m_axi_ctx_AWADDR ADDR 1 64 }  { m_axi_ctx_AWID ID 1 1 }  { m_axi_ctx_AWLEN SIZE 1 8 }  { m_axi_ctx_AWSIZE BURST 1 3 }  { m_axi_ctx_AWBURST LOCK 1 2 }  { m_axi_ctx_AWLOCK CACHE 1 2 }  { m_axi_ctx_AWCACHE PROT 1 4 }  { m_axi_ctx_AWPROT QOS 1 3 }  { m_axi_ctx_AWQOS REGION 1 4 }  { m_axi_ctx_AWREGION USER 1 4 }  { m_axi_ctx_AWUSER DATA 1 1 }  { m_axi_ctx_WVALID VALID 1 1 }  { m_axi_ctx_WREADY READY 0 1 }  { m_axi_ctx_WDATA FIFONUM 1 32 }  { m_axi_ctx_WSTRB STRB 1 4 }  { m_axi_ctx_WLAST LAST 1 1 }  { m_axi_ctx_WID ID 1 1 }  { m_axi_ctx_WUSER DATA 1 1 }  { m_axi_ctx_ARVALID VALID 1 1 }  { m_axi_ctx_ARREADY READY 0 1 }  { m_axi_ctx_ARADDR ADDR 1 64 }  { m_axi_ctx_ARID ID 1 1 }  { m_axi_ctx_ARLEN SIZE 1 8 }  { m_axi_ctx_ARSIZE BURST 1 3 }  { m_axi_ctx_ARBURST LOCK 1 2 }  { m_axi_ctx_ARLOCK CACHE 1 2 }  { m_axi_ctx_ARCACHE PROT 1 4 }  { m_axi_ctx_ARPROT QOS 1 3 }  { m_axi_ctx_ARQOS REGION 1 4 }  { m_axi_ctx_ARREGION USER 1 4 }  { m_axi_ctx_ARUSER DATA 1 1 }  { m_axi_ctx_RVALID VALID 0 1 }  { m_axi_ctx_RREADY READY 1 1 }  { m_axi_ctx_RDATA FIFONUM 0 32 }  { m_axi_ctx_RLAST LAST 0 1 }  { m_axi_ctx_RID ID 0 1 }  { m_axi_ctx_RUSER DATA 0 1 }  { m_axi_ctx_RRESP RESP 0 2 }  { m_axi_ctx_BVALID VALID 0 1 }  { m_axi_ctx_BREADY READY 1 1 }  { m_axi_ctx_BRESP RESP 0 2 }  { m_axi_ctx_BID ID 0 1 }  { m_axi_ctx_BUSER DATA 0 1 } } }
	bitStream { ap_fifo {  { bitStream_dout fifo_data 0 8 }  { bitStream_empty_n fifo_status 0 1 }  { bitStream_read fifo_update 1 1 } } }
	bitOut { ap_fifo {  { bitOut_din fifo_data 1 32 }  { bitOut_full_n fifo_status 0 1 }  { bitOut_write fifo_update 1 1 } } }
	initd { ap_none {  { initd in_data 0 128 } } }
}

set busDeadlockParameterList { 
	{ ctx { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	bitStream { fifo_read 1 no_conditional }
	bitOut { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ ctx 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ ctx 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
