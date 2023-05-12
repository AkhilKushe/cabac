set moduleName cabac_top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {cabac_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx int 8 regular {axi_master 2}  }
	{ globalCtx int 64 regular {axi_slave 0}  }
	{ bitStream int 8 regular {axi_s 0 volatile  { bitStream Data } }  }
	{ bitOut int 8 unused {axi_s 0 ""  { bitOut Data } }  }
	{ data_in_s int 4096 regular {axi_s 0 volatile  { data_in_s Data } }  }
	{ data_out_s int 336 regular {axi_s 1 volatile  { data_out_s Data } }  }
	{ ap_local_deadlock int 1 unused {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "globalCtx","offset": { "type": "dynamic","port_name": "globalCtx","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "globalCtx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "bitStream", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bitOut", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_s", "interface" : "axis", "bitwidth" : 4096, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_s", "interface" : "axis", "bitwidth" : 336, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_local_deadlock", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "WRITEONLY", "offset" : {"out":0}, "offset_end" : {"out":4294967295}} ]}
# RTL Port declarations: 
set portNum 78
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
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
	{ bitStream_TDATA sc_in sc_lv 8 signal 2 } 
	{ bitStream_TVALID sc_in sc_logic 1 invld 2 } 
	{ bitStream_TREADY sc_out sc_logic 1 inacc 2 } 
	{ bitOut_TDATA sc_in sc_lv 8 signal 3 } 
	{ bitOut_TVALID sc_in sc_logic 1 invld 3 } 
	{ bitOut_TREADY sc_out sc_logic 1 inacc 3 } 
	{ data_in_s_TDATA sc_in sc_lv 4096 signal 4 } 
	{ data_in_s_TVALID sc_in sc_logic 1 invld 4 } 
	{ data_in_s_TREADY sc_out sc_logic 1 inacc 4 } 
	{ data_out_s_TDATA sc_out sc_lv 336 signal 5 } 
	{ data_out_s_TVALID sc_out sc_logic 1 outvld 5 } 
	{ data_out_s_TREADY sc_in sc_logic 1 outacc 5 } 
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
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"cabac_top","role":"start","value":"0","valid_bit":"0"},{"name":"cabac_top","role":"continue","value":"0","valid_bit":"4"},{"name":"cabac_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"globalCtx","role":"data","value":"16"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"cabac_top","role":"start","value":"0","valid_bit":"0"},{"name":"cabac_top","role":"done","value":"0","valid_bit":"1"},{"name":"cabac_top","role":"idle","value":"0","valid_bit":"2"},{"name":"cabac_top","role":"ready","value":"0","valid_bit":"3"},{"name":"cabac_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"ap_local_deadlock","role":"data","value":"0"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
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
 	{ "name": "bitStream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bitStream", "role": "TDATA" }} , 
 	{ "name": "bitStream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "bitStream", "role": "TVALID" }} , 
 	{ "name": "bitStream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "bitStream", "role": "TREADY" }} , 
 	{ "name": "bitOut_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bitOut", "role": "TDATA" }} , 
 	{ "name": "bitOut_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "bitOut", "role": "TVALID" }} , 
 	{ "name": "bitOut_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "bitOut", "role": "TREADY" }} , 
 	{ "name": "data_in_s_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":4096, "type": "signal", "bundle":{"name": "data_in_s", "role": "TDATA" }} , 
 	{ "name": "data_in_s_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_in_s", "role": "TVALID" }} , 
 	{ "name": "data_in_s_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_in_s", "role": "TREADY" }} , 
 	{ "name": "data_out_s_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":336, "type": "signal", "bundle":{"name": "data_out_s", "role": "TDATA" }} , 
 	{ "name": "data_out_s_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_out_s", "role": "TVALID" }} , 
 	{ "name": "data_out_s_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_out_s", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "10", "11", "13", "15", "60", "61", "62", "63", "64", "65", "66", "67"],
		"CDFG" : "cabac_top",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
					{"ID" : "10", "SubInstance" : "grp_cabac_top_Pipeline_VITIS_LOOP_29_1_fu_595", "Port" : "ctx", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "60", "SubInstance" : "grp_cabac_top_Pipeline_VITIS_LOOP_14_1_fu_687", "Port" : "ctx", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "globalCtx", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitStream", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_cabac_top_Pipeline_VITIS_LOOP_45_1_fu_611", "Port" : "bitStream", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "bitOut", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_s", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_in_s_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_s", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_out_s_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_FRAME_INIT_VALS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_581", "Port" : "B_FRAME_INIT_VALS", "Inst_start_state" : "1", "Inst_end_state" : "5"}]},
			{"Name" : "P_FRAME_INIT_VALS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_581", "Port" : "P_FRAME_INIT_VALS", "Inst_start_state" : "1", "Inst_end_state" : "5"}]},
			{"Name" : "I_FRAME_INIT_VALS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_581", "Port" : "I_FRAME_INIT_VALS", "Inst_start_state" : "1", "Inst_end_state" : "5"}]},
			{"Name" : "baeState_0_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_sao_top_fu_618", "Port" : "baeState_0_constprop", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "lpsTable", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_sao_top_fu_618", "Port" : "lpsTable", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "transMPS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_sao_top_fu_618", "Port" : "transMPS", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "transLPS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_sao_top_fu_618", "Port" : "transLPS", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "ap_local_deadlock", "Type" : "None", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctxTables_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_out_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tempBst_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_581", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9"],
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_581.B_FRAME_INIT_VALS_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_581.P_FRAME_INIT_VALS_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_581.I_FRAME_INIT_VALS_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_581.mul_7s_6ns_13_1_1_U4", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_40_1_fu_581.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_29_1_fu_595", "Parent" : "0",
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
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_8_1_fu_603", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "cabac_top_Pipeline_VITIS_LOOP_8_1",
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
			{"Name" : "VITIS_LOOP_8_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_8_1_fu_603.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_45_1_fu_611", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "cabac_top_Pipeline_VITIS_LOOP_45_1",
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
			{"Name" : "bitStream", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bitStream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tempBst", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_45_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_45_1_fu_611.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618", "Parent" : "0", "Child" : ["16", "17", "18", "20", "22", "23", "33", "40", "42", "43", "45", "47", "49", "59"],
		"CDFG" : "sao_top",
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
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read226", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read351", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_SaoOffsetVal", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_sao_top_Pipeline_VITIS_LOOP_213_6_fu_1403", "Port" : "out_SaoOffsetVal", "Inst_start_state" : "32", "Inst_end_state" : "33"},
					{"ID" : "47", "SubInstance" : "grp_sao_top_Pipeline_VITIS_LOOP_189_4_fu_1393", "Port" : "out_SaoOffsetVal", "Inst_start_state" : "28", "Inst_end_state" : "29"},
					{"ID" : "23", "SubInstance" : "grp_sao_top_Pipeline_VITIS_LOOP_201_5_fu_1252", "Port" : "out_SaoOffsetVal", "Inst_start_state" : "7", "Inst_end_state" : "30"}]},
			{"Name" : "p_read410", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read612", "Type" : "None", "Direction" : "I"},
			{"Name" : "bStream", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parseSAOEO_fu_1333", "Port" : "bStream", "Inst_start_state" : "19", "Inst_end_state" : "22"},
					{"ID" : "22", "SubInstance" : "grp_parseSAOMergeFlag_fu_1235", "Port" : "bStream", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "33", "SubInstance" : "grp_decode_decision_fu_1291", "Port" : "bStream", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "40", "SubInstance" : "grp_sao_top_Pipeline_VITIS_LOOP_54_1_fu_1314", "Port" : "bStream", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "45", "SubInstance" : "grp_sao_top_Pipeline_VITIS_LOOP_96_1_fu_1374", "Port" : "bStream", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "43", "SubInstance" : "grp_sao_top_Pipeline_VITIS_LOOP_162_3_fu_1349", "Port" : "bStream", "Inst_start_state" : "19", "Inst_end_state" : "24"}]},
			{"Name" : "ctxTables", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_decode_decision_fu_1291", "Port" : "ctxTables", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "baeState_0_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parseSAOEO_fu_1333", "Port" : "baeState_0_constprop", "Inst_start_state" : "19", "Inst_end_state" : "22"},
					{"ID" : "22", "SubInstance" : "grp_parseSAOMergeFlag_fu_1235", "Port" : "baeState_0_constprop", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "33", "SubInstance" : "grp_decode_decision_fu_1291", "Port" : "baeState_0_constprop", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "lpsTable", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_decode_decision_fu_1291", "Port" : "lpsTable", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "transMPS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_decode_decision_fu_1291", "Port" : "transMPS", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "transLPS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_decode_decision_fu_1291", "Port" : "transLPS", "Inst_start_state" : "17", "Inst_end_state" : "18"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "35", "FirstState" : "ap_ST_fsm_state19", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state19"], "PreState" : ["ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state24", "ap_ST_fsm_state22"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_142_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "35", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state29"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state35"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.sao_offset_abs_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.sao_offset_sign_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_1_fu_1223", "Parent" : "15", "Child" : ["19"],
		"CDFG" : "sao_top_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sao_offset_abs", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_1_fu_1223.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_2_fu_1229", "Parent" : "15", "Child" : ["21"],
		"CDFG" : "sao_top_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sao_offset_sign", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_2_fu_1229.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_parseSAOMergeFlag_fu_1235", "Parent" : "15",
		"CDFG" : "parseSAOMergeFlag",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bStream", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "baeState_0_constprop", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_201_5_fu_1252", "Parent" : "15", "Child" : ["24", "25", "26", "27", "28", "29", "30", "31", "32"],
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
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_201_5_fu_1252.mux_32_8_1_1_U110", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_201_5_fu_1252.mux_32_8_1_1_U111", "Parent" : "23"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_201_5_fu_1252.mux_32_16_1_1_U112", "Parent" : "23"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_201_5_fu_1252.mux_32_16_1_1_U113", "Parent" : "23"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_201_5_fu_1252.mux_32_16_1_1_U114", "Parent" : "23"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_201_5_fu_1252.mux_32_16_1_1_U115", "Parent" : "23"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_201_5_fu_1252.mux_32_16_1_1_U116", "Parent" : "23"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_201_5_fu_1252.mux_32_8_1_1_U117", "Parent" : "23"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_201_5_fu_1252.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_decode_decision_fu_1291", "Parent" : "15", "Child" : ["34"],
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
					{"ID" : "34", "SubInstance" : "grp_decode_regular_fu_193", "Port" : "bStream", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ctxTables", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_decode_regular_fu_193", "Port" : "ctxTables", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "baeState_0_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_decode_regular_fu_193", "Port" : "baeState_0_constprop", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "lpsTable", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_decode_regular_fu_193", "Port" : "lpsTable", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "transMPS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_decode_regular_fu_193", "Port" : "transMPS", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "transLPS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_decode_regular_fu_193", "Port" : "transLPS", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_decode_decision_fu_1291.grp_decode_regular_fu_193", "Parent" : "33", "Child" : ["35", "36", "37", "38"],
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
					{"ID" : "38", "SubInstance" : "grp_decode_regular_Pipeline_VITIS_LOOP_53_1_fu_196", "Port" : "bStream", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "ctxTables", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "baeState_0_constprop", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_decode_regular_Pipeline_VITIS_LOOP_53_1_fu_196", "Port" : "baeState_0_constprop", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "lpsTable", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "transMPS", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "transLPS", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_decode_decision_fu_1291.grp_decode_regular_fu_193.lpsTable_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_decode_decision_fu_1291.grp_decode_regular_fu_193.transMPS_U", "Parent" : "34"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_decode_decision_fu_1291.grp_decode_regular_fu_193.transLPS_U", "Parent" : "34"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_decode_decision_fu_1291.grp_decode_regular_fu_193.grp_decode_regular_Pipeline_VITIS_LOOP_53_1_fu_196", "Parent" : "34", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_decode_decision_fu_1291.grp_decode_regular_fu_193.grp_decode_regular_Pipeline_VITIS_LOOP_53_1_fu_196.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_54_1_fu_1314", "Parent" : "15", "Child" : ["41"],
		"CDFG" : "sao_top_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "state_bstate_currIdx_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_bstate_n_bits_held_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_bstate_held_aligned_word_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_ivlOffset_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "baeState_0_constprop_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "bStream", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_bstate_currIdx_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_bstate_n_bits_held_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_bstate_held_aligned_word_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "ret_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_54_1_fu_1314.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_parseSAOEO_fu_1333", "Parent" : "15",
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
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_162_3_fu_1349", "Parent" : "15", "Child" : ["44"],
		"CDFG" : "sao_top_Pipeline_VITIS_LOOP_162_3",
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
			{"Name" : "state_bstate_currIdx_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_bstate_n_bits_held_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_bstate_held_aligned_word_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_ivlOffset_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln188", "Type" : "None", "Direction" : "I"},
			{"Name" : "sao_offset_abs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sao_offset_sign", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "baeState_0_constprop_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "bStream", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "state_bstate_currIdx_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_bstate_n_bits_held_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_bstate_held_aligned_word_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_ivlOffset_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_162_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_162_3_fu_1349.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_96_1_fu_1374", "Parent" : "15", "Child" : ["46"],
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
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_96_1_fu_1374.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_189_4_fu_1393", "Parent" : "15", "Child" : ["48"],
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
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_189_4_fu_1393.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_213_6_fu_1403", "Parent" : "15", "Child" : ["50", "51", "52", "53", "54", "55", "56", "57", "58"],
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
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_213_6_fu_1403.mux_32_8_1_1_U154", "Parent" : "49"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_213_6_fu_1403.mux_32_8_1_1_U155", "Parent" : "49"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_213_6_fu_1403.mux_32_16_1_1_U156", "Parent" : "49"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_213_6_fu_1403.mux_32_16_1_1_U157", "Parent" : "49"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_213_6_fu_1403.mux_32_16_1_1_U158", "Parent" : "49"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_213_6_fu_1403.mux_32_16_1_1_U159", "Parent" : "49"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_213_6_fu_1403.mux_32_16_1_1_U160", "Parent" : "49"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_213_6_fu_1403.mux_32_8_1_1_U161", "Parent" : "49"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.grp_sao_top_Pipeline_VITIS_LOOP_213_6_fu_1403.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sao_top_fu_618.mux_32_8_1_1_U205", "Parent" : "15"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cabac_top_Pipeline_VITIS_LOOP_14_1_fu_687", "Parent" : "0",
		"CDFG" : "cabac_top_Pipeline_VITIS_LOOP_14_1",
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
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "70", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state5"]}}]},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_m_axi_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.streamCtxRAM_fifo_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_bitStream_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_bitOut_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_in_s_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_s_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cabac_top {
		ctx {Type IO LastRead 71 FirstWrite -1}
		globalCtx {Type I LastRead 0 FirstWrite -1}
		bitStream {Type I LastRead 0 FirstWrite -1}
		bitOut {Type I LastRead -1 FirstWrite -1}
		data_in_s {Type I LastRead 0 FirstWrite -1}
		data_out_s {Type O LastRead -1 FirstWrite 21}
		B_FRAME_INIT_VALS {Type I LastRead -1 FirstWrite -1}
		P_FRAME_INIT_VALS {Type I LastRead -1 FirstWrite -1}
		I_FRAME_INIT_VALS {Type I LastRead -1 FirstWrite -1}
		baeState_0_constprop {Type IO LastRead -1 FirstWrite -1}
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
	cabac_top_Pipeline_VITIS_LOOP_8_1 {
		ctxWritten {Type I LastRead 0 FirstWrite -1}
		streamCtxRAM {Type I LastRead 1 FirstWrite -1}
		ctxTables {Type O LastRead -1 FirstWrite 1}}
	cabac_top_Pipeline_VITIS_LOOP_45_1 {
		bitStream {Type I LastRead 0 FirstWrite -1}
		tempBst {Type O LastRead -1 FirstWrite 0}}
	sao_top {
		p_read {Type I LastRead 1 FirstWrite -1}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		p_read2 {Type I LastRead 1 FirstWrite -1}
		p_read3 {Type I LastRead 1 FirstWrite -1}
		p_read4 {Type I LastRead 1 FirstWrite -1}
		p_read5 {Type I LastRead 1 FirstWrite -1}
		p_read6 {Type I LastRead 1 FirstWrite -1}
		p_read7 {Type I LastRead 1 FirstWrite -1}
		p_read8 {Type I LastRead 1 FirstWrite -1}
		p_read9 {Type I LastRead 1 FirstWrite -1}
		p_read10 {Type I LastRead 1 FirstWrite -1}
		p_read11 {Type I LastRead 1 FirstWrite -1}
		p_read12 {Type I LastRead 1 FirstWrite -1}
		p_read13 {Type I LastRead 1 FirstWrite -1}
		p_read14 {Type I LastRead 1 FirstWrite -1}
		p_read15 {Type I LastRead 1 FirstWrite -1}
		p_read16 {Type I LastRead 1 FirstWrite -1}
		p_read17 {Type I LastRead 1 FirstWrite -1}
		p_read18 {Type I LastRead 1 FirstWrite -1}
		p_read19 {Type I LastRead 1 FirstWrite -1}
		p_read20 {Type I LastRead 1 FirstWrite -1}
		p_read21 {Type I LastRead 1 FirstWrite -1}
		p_read22 {Type I LastRead 1 FirstWrite -1}
		p_read23 {Type I LastRead 1 FirstWrite -1}
		p_read24 {Type I LastRead 1 FirstWrite -1}
		p_read25 {Type I LastRead 1 FirstWrite -1}
		p_read226 {Type I LastRead 1 FirstWrite -1}
		p_read27 {Type I LastRead 1 FirstWrite -1}
		p_read28 {Type I LastRead 1 FirstWrite -1}
		p_read29 {Type I LastRead 1 FirstWrite -1}
		p_read30 {Type I LastRead 1 FirstWrite -1}
		p_read31 {Type I LastRead 1 FirstWrite -1}
		p_read32 {Type I LastRead 1 FirstWrite -1}
		p_read33 {Type I LastRead 1 FirstWrite -1}
		p_read34 {Type I LastRead 1 FirstWrite -1}
		p_read35 {Type I LastRead 1 FirstWrite -1}
		p_read36 {Type I LastRead 1 FirstWrite -1}
		p_read37 {Type I LastRead 1 FirstWrite -1}
		p_read38 {Type I LastRead 1 FirstWrite -1}
		p_read39 {Type I LastRead 1 FirstWrite -1}
		p_read40 {Type I LastRead 1 FirstWrite -1}
		p_read41 {Type I LastRead 1 FirstWrite -1}
		p_read42 {Type I LastRead 1 FirstWrite -1}
		p_read43 {Type I LastRead 1 FirstWrite -1}
		p_read44 {Type I LastRead 1 FirstWrite -1}
		p_read45 {Type I LastRead 1 FirstWrite -1}
		p_read46 {Type I LastRead 1 FirstWrite -1}
		p_read47 {Type I LastRead 1 FirstWrite -1}
		p_read48 {Type I LastRead 1 FirstWrite -1}
		p_read49 {Type I LastRead 1 FirstWrite -1}
		p_read50 {Type I LastRead 1 FirstWrite -1}
		p_read351 {Type I LastRead 1 FirstWrite -1}
		out_SaoOffsetVal {Type O LastRead -1 FirstWrite 0}
		p_read410 {Type I LastRead 1 FirstWrite -1}
		p_read612 {Type I LastRead 1 FirstWrite -1}
		bStream {Type I LastRead 1 FirstWrite -1}
		ctxTables {Type IO LastRead 0 FirstWrite 5}
		baeState_0_constprop {Type IO LastRead 12 FirstWrite -1}
		lpsTable {Type I LastRead -1 FirstWrite -1}
		transMPS {Type I LastRead -1 FirstWrite -1}
		transLPS {Type I LastRead -1 FirstWrite -1}}
	sao_top_Pipeline_1 {
		sao_offset_abs {Type O LastRead -1 FirstWrite 0}}
	sao_top_Pipeline_2 {
		sao_offset_sign {Type O LastRead -1 FirstWrite 0}}
	parseSAOMergeFlag {
		state_1_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		state_2_1_read {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		state_2_2_read {Type I LastRead 0 FirstWrite -1}
		bStream {Type I LastRead 0 FirstWrite -1}
		baeState_0_constprop {Type I LastRead 2 FirstWrite -1}}
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
		out_sao_band_position38_3_out {Type O LastRead -1 FirstWrite 0}}
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
		baeState_0_constprop {Type O LastRead -1 FirstWrite 1}}
	sao_top_Pipeline_VITIS_LOOP_54_1 {
		state_bstate_currIdx_5 {Type I LastRead 0 FirstWrite -1}
		state_bstate_n_bits_held_5 {Type I LastRead 0 FirstWrite -1}
		state_bstate_held_aligned_word_5 {Type I LastRead 0 FirstWrite -1}
		state_ivlOffset_5 {Type I LastRead 0 FirstWrite -1}
		baeState_0_constprop_load {Type I LastRead 0 FirstWrite -1}
		bStream {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 2}
		state_bstate_currIdx_7_out {Type O LastRead -1 FirstWrite 2}
		state_bstate_n_bits_held_7_out {Type O LastRead -1 FirstWrite 2}
		state_bstate_held_aligned_word_7_out {Type O LastRead -1 FirstWrite 2}
		ret_1_out {Type O LastRead -1 FirstWrite 2}}
	parseSAOEO {
		state_ivlOffset_V_read {Type I LastRead 0 FirstWrite -1}
		state_bstate_currIdx_read {Type I LastRead 0 FirstWrite -1}
		state_bstate_n_bits_held_read {Type I LastRead 0 FirstWrite -1}
		state_bstate_held_aligned_word_read {Type I LastRead 0 FirstWrite -1}
		bStream {Type I LastRead 1 FirstWrite -1}
		baeState_0_constprop {Type I LastRead 0 FirstWrite -1}}
	sao_top_Pipeline_VITIS_LOOP_162_3 {
		state_bstate_currIdx_5 {Type I LastRead 0 FirstWrite -1}
		state_bstate_n_bits_held_5 {Type I LastRead 0 FirstWrite -1}
		state_bstate_held_aligned_word_5 {Type I LastRead 0 FirstWrite -1}
		state_ivlOffset_5 {Type I LastRead 0 FirstWrite -1}
		zext_ln188 {Type I LastRead 0 FirstWrite -1}
		sao_offset_abs {Type I LastRead 0 FirstWrite -1}
		sao_offset_sign {Type O LastRead -1 FirstWrite 3}
		baeState_0_constprop_load {Type I LastRead 0 FirstWrite -1}
		bStream {Type I LastRead 1 FirstWrite -1}
		state_bstate_currIdx_8_out {Type O LastRead -1 FirstWrite 3}
		state_bstate_n_bits_held_8_out {Type O LastRead -1 FirstWrite 3}
		state_bstate_held_aligned_word_8_out {Type O LastRead -1 FirstWrite 3}
		state_ivlOffset_6_out {Type O LastRead -1 FirstWrite 3}
		p_out {Type O LastRead -1 FirstWrite 3}
		p_out1 {Type O LastRead -1 FirstWrite 3}
		p_out2 {Type O LastRead -1 FirstWrite 3}}
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
		symbolVal_4_out {Type O LastRead -1 FirstWrite 3}}
	sao_top_Pipeline_VITIS_LOOP_189_4 {
		zext_ln188 {Type I LastRead 0 FirstWrite -1}
		sao_offset_abs {Type I LastRead 0 FirstWrite -1}
		sao_offset_sign {Type I LastRead 1 FirstWrite -1}
		add_ln188 {Type I LastRead 0 FirstWrite -1}
		out_SaoOffsetVal {Type O LastRead -1 FirstWrite 2}}
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
		out_sao_band_position38_6_out {Type O LastRead -1 FirstWrite 0}}
	cabac_top_Pipeline_VITIS_LOOP_14_1 {
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
	bitStream { axis {  { bitStream_TDATA in_data 0 8 }  { bitStream_TVALID in_vld 0 1 }  { bitStream_TREADY in_acc 1 1 } } }
	bitOut { axis {  { bitOut_TDATA in_data 0 8 }  { bitOut_TVALID in_vld 0 1 }  { bitOut_TREADY in_acc 1 1 } } }
	data_in_s { axis {  { data_in_s_TDATA in_data 0 4096 }  { data_in_s_TVALID in_vld 0 1 }  { data_in_s_TREADY in_acc 1 1 } } }
	data_out_s { axis {  { data_out_s_TDATA out_data 1 336 }  { data_out_s_TVALID out_vld 1 1 }  { data_out_s_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
	{ ctx { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
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
