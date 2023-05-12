set moduleName cabac_top_Pipeline_VITIS_LOOP_29_1
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
set C_modelName {cabac_top_Pipeline_VITIS_LOOP_29_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx int 8 regular {axi_master 0}  }
	{ globalCtx int 64 regular  }
	{ streamCtxRAM int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "globalCtx","offset": { "type": "dynamic","port_name": "globalCtx","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "globalCtx", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "streamCtxRAM", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_ctx_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_ctx_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_AWLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_ctx_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_ctx_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_ctx_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_ARLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_ctx_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_ctx_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ctx_RFIFONUM sc_in sc_lv 11 signal 0 } 
	{ m_axi_ctx_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_ctx_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ctx_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ctx_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ctx_BUSER sc_in sc_lv 1 signal 0 } 
	{ globalCtx sc_in sc_lv 64 signal 1 } 
	{ streamCtxRAM_din sc_out sc_lv 8 signal 2 } 
	{ streamCtxRAM_full_n sc_in sc_logic 1 signal 2 } 
	{ streamCtxRAM_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_ctx_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ctx_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ctx_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ctx", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ctx_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "AWID" }} , 
 	{ "name": "m_axi_ctx_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_ctx_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx", "role": "WDATA" }} , 
 	{ "name": "m_axi_ctx_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ctx_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WLAST" }} , 
 	{ "name": "m_axi_ctx_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WID" }} , 
 	{ "name": "m_axi_ctx_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WUSER" }} , 
 	{ "name": "m_axi_ctx_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ctx_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ctx_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ctx", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ctx_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "ARID" }} , 
 	{ "name": "m_axi_ctx_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_ctx_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx", "role": "RDATA" }} , 
 	{ "name": "m_axi_ctx_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RLAST" }} , 
 	{ "name": "m_axi_ctx_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RID" }} , 
 	{ "name": "m_axi_ctx_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ctx", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_ctx_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RUSER" }} , 
 	{ "name": "m_axi_ctx_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "RRESP" }} , 
 	{ "name": "m_axi_ctx_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "BVALID" }} , 
 	{ "name": "m_axi_ctx_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "BREADY" }} , 
 	{ "name": "m_axi_ctx_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "BRESP" }} , 
 	{ "name": "m_axi_ctx_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "BID" }} , 
 	{ "name": "m_axi_ctx_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "BUSER" }} , 
 	{ "name": "globalCtx", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "globalCtx", "role": "default" }} , 
 	{ "name": "streamCtxRAM_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "streamCtxRAM", "role": "din" }} , 
 	{ "name": "streamCtxRAM_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "streamCtxRAM", "role": "full_n" }} , 
 	{ "name": "streamCtxRAM_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "streamCtxRAM", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
				"LoopDec" : {"FSMBitwidth" : "72", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state70"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state74"]}}]}]}


set ArgLastReadFirstWriteLatency {
	cabac_top_Pipeline_VITIS_LOOP_29_1 {
		ctx {Type I LastRead 71 FirstWrite -1}
		globalCtx {Type I LastRead 0 FirstWrite -1}
		streamCtxRAM {Type O LastRead -1 FirstWrite 72}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "584", "Max" : "584"}
	, {"Name" : "Interval", "Min" : "584", "Max" : "584"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ctx { m_axi {  { m_axi_ctx_AWVALID VALID 1 1 }  { m_axi_ctx_AWREADY READY 0 1 }  { m_axi_ctx_AWADDR ADDR 1 64 }  { m_axi_ctx_AWID ID 1 1 }  { m_axi_ctx_AWLEN SIZE 1 32 }  { m_axi_ctx_AWSIZE BURST 1 3 }  { m_axi_ctx_AWBURST LOCK 1 2 }  { m_axi_ctx_AWLOCK CACHE 1 2 }  { m_axi_ctx_AWCACHE PROT 1 4 }  { m_axi_ctx_AWPROT QOS 1 3 }  { m_axi_ctx_AWQOS REGION 1 4 }  { m_axi_ctx_AWREGION USER 1 4 }  { m_axi_ctx_AWUSER DATA 1 1 }  { m_axi_ctx_WVALID VALID 1 1 }  { m_axi_ctx_WREADY READY 0 1 }  { m_axi_ctx_WDATA FIFONUM 1 8 }  { m_axi_ctx_WSTRB STRB 1 1 }  { m_axi_ctx_WLAST LAST 1 1 }  { m_axi_ctx_WID ID 1 1 }  { m_axi_ctx_WUSER DATA 1 1 }  { m_axi_ctx_ARVALID VALID 1 1 }  { m_axi_ctx_ARREADY READY 0 1 }  { m_axi_ctx_ARADDR ADDR 1 64 }  { m_axi_ctx_ARID ID 1 1 }  { m_axi_ctx_ARLEN SIZE 1 32 }  { m_axi_ctx_ARSIZE BURST 1 3 }  { m_axi_ctx_ARBURST LOCK 1 2 }  { m_axi_ctx_ARLOCK CACHE 1 2 }  { m_axi_ctx_ARCACHE PROT 1 4 }  { m_axi_ctx_ARPROT QOS 1 3 }  { m_axi_ctx_ARQOS REGION 1 4 }  { m_axi_ctx_ARREGION USER 1 4 }  { m_axi_ctx_ARUSER DATA 1 1 }  { m_axi_ctx_RVALID VALID 0 1 }  { m_axi_ctx_RREADY READY 1 1 }  { m_axi_ctx_RDATA FIFONUM 0 8 }  { m_axi_ctx_RLAST LAST 0 1 }  { m_axi_ctx_RID ID 0 1 }  { m_axi_ctx_RFIFONUM LEN 0 11 }  { m_axi_ctx_RUSER DATA 0 1 }  { m_axi_ctx_RRESP RESP 0 2 }  { m_axi_ctx_BVALID VALID 0 1 }  { m_axi_ctx_BREADY READY 1 1 }  { m_axi_ctx_BRESP RESP 0 2 }  { m_axi_ctx_BID ID 0 1 }  { m_axi_ctx_BUSER DATA 0 1 } } }
	globalCtx { ap_none {  { globalCtx in_data 0 64 } } }
	streamCtxRAM { ap_fifo {  { streamCtxRAM_din fifo_data 1 8 }  { streamCtxRAM_full_n fifo_status 0 1 }  { streamCtxRAM_write fifo_update 1 1 } } }
}
