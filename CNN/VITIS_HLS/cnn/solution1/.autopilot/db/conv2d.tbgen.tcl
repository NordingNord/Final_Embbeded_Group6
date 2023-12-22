set moduleName conv2d
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
set C_modelName {conv2d}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_0 float 32 regular {array 1936 { 1 3 } 1 1 }  }
	{ input_1 float 32 regular {array 1936 { 1 3 } 1 1 }  }
	{ output_0 float 32 regular {array 1296 { 2 3 } 1 1 }  }
	{ output_1 float 32 regular {array 1296 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "output_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_address0 sc_out sc_lv 11 signal 0 } 
	{ input_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_0_q0 sc_in sc_lv 32 signal 0 } 
	{ input_1_address0 sc_out sc_lv 11 signal 1 } 
	{ input_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_1_q0 sc_in sc_lv 32 signal 1 } 
	{ output_0_address0 sc_out sc_lv 11 signal 2 } 
	{ output_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ output_0_we0 sc_out sc_logic 1 signal 2 } 
	{ output_0_d0 sc_out sc_lv 32 signal 2 } 
	{ output_0_q0 sc_in sc_lv 32 signal 2 } 
	{ output_1_address0 sc_out sc_lv 11 signal 3 } 
	{ output_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ output_1_we0 sc_out sc_logic 1 signal 3 } 
	{ output_1_d0 sc_out sc_lv 32 signal 3 } 
	{ output_1_q0 sc_in sc_lv 32 signal 3 } 
	{ grp_fu_3097_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3097_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3097_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3097_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3097_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3101_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3101_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3101_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3101_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_866_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_866_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_866_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_866_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_866_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0", "role": "address0" }} , 
 	{ "name": "input_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ce0" }} , 
 	{ "name": "input_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_0", "role": "q0" }} , 
 	{ "name": "input_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1", "role": "address0" }} , 
 	{ "name": "input_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ce0" }} , 
 	{ "name": "input_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_1", "role": "q0" }} , 
 	{ "name": "output_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_0", "role": "address0" }} , 
 	{ "name": "output_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ce0" }} , 
 	{ "name": "output_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "we0" }} , 
 	{ "name": "output_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_0", "role": "d0" }} , 
 	{ "name": "output_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_0", "role": "q0" }} , 
 	{ "name": "output_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_1", "role": "address0" }} , 
 	{ "name": "output_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ce0" }} , 
 	{ "name": "output_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "we0" }} , 
 	{ "name": "output_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_1", "role": "d0" }} , 
 	{ "name": "output_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_1", "role": "q0" }} , 
 	{ "name": "grp_fu_3097_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3097_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3097_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3097_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3097_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3097_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3097_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3097_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3097_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3097_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3101_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3101_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3101_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3101_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3101_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3101_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3101_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3101_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_866_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_866_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_866_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_866_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_866_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_866_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_866_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_866_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_866_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_866_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "conv2d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3115585", "EstimateLatencyMax" : "3115585",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "layer_4_weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer_4_bias", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_4_weights_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_4_bias_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_12ns_12ns_12_16_seq_1_U54", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_12ns_12ns_12_16_1_U55", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_4ns_5ns_4ns_7_4_1_U56", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv2d {
		input_0 {Type I LastRead 36 FirstWrite -1}
		input_1 {Type I LastRead 36 FirstWrite -1}
		output_0 {Type IO LastRead 16 FirstWrite 37}
		output_1 {Type IO LastRead 16 FirstWrite 37}
		layer_4_weights {Type I LastRead -1 FirstWrite -1}
		layer_4_bias {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3115585", "Max" : "3115585"}
	, {"Name" : "Interval", "Min" : "3115585", "Max" : "3115585"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_0 { ap_memory {  { input_0_address0 mem_address 1 11 }  { input_0_ce0 mem_ce 1 1 }  { input_0_q0 mem_dout 0 32 } } }
	input_1 { ap_memory {  { input_1_address0 mem_address 1 11 }  { input_1_ce0 mem_ce 1 1 }  { input_1_q0 mem_dout 0 32 } } }
	output_0 { ap_memory {  { output_0_address0 mem_address 1 11 }  { output_0_ce0 mem_ce 1 1 }  { output_0_we0 mem_we 1 1 }  { output_0_d0 mem_din 1 32 }  { output_0_q0 mem_dout 0 32 } } }
	output_1 { ap_memory {  { output_1_address0 mem_address 1 11 }  { output_1_ce0 mem_ce 1 1 }  { output_1_we0 mem_we 1 1 }  { output_1_d0 mem_din 1 32 }  { output_1_q0 mem_dout 0 32 } } }
}
