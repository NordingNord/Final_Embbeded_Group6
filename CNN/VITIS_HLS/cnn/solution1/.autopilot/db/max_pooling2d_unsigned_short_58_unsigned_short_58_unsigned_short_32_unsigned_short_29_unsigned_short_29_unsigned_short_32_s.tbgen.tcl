set moduleName max_pooling2d_unsigned_short_58_unsigned_short_58_unsigned_short_32_unsigned_short_29_unsigned_short_29_unsigned_short_32_s
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
set C_modelName {max_pooling2d<(unsigned short)58, (unsigned short)58, (unsigned short)32, (unsigned short)29, (unsigned short)29, (unsigned short)32>}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_dim1 uint 6 regular  }
	{ in_dim2 uint 6 regular  }
	{ convolution_output_V_0 int 21 regular {array 53824 { 1 1 } 1 1 } {global 0}  }
	{ convolution_output_V_1 int 21 regular {array 53824 { 1 1 } 1 1 } {global 0}  }
	{ max_pooling_output_V int 21 regular {array 26912 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_dim1", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "in_dim2", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "convolution_output_V_0", "interface" : "memory", "bitwidth" : 21, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "convolution_output_V_1", "interface" : "memory", "bitwidth" : 21, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "max_pooling_output_V", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_dim1 sc_in sc_lv 6 signal 0 } 
	{ in_dim2 sc_in sc_lv 6 signal 1 } 
	{ convolution_output_V_0_address0 sc_out sc_lv 16 signal 2 } 
	{ convolution_output_V_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ convolution_output_V_0_q0 sc_in sc_lv 21 signal 2 } 
	{ convolution_output_V_0_address1 sc_out sc_lv 16 signal 2 } 
	{ convolution_output_V_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ convolution_output_V_0_q1 sc_in sc_lv 21 signal 2 } 
	{ convolution_output_V_1_address0 sc_out sc_lv 16 signal 3 } 
	{ convolution_output_V_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ convolution_output_V_1_q0 sc_in sc_lv 21 signal 3 } 
	{ convolution_output_V_1_address1 sc_out sc_lv 16 signal 3 } 
	{ convolution_output_V_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ convolution_output_V_1_q1 sc_in sc_lv 21 signal 3 } 
	{ max_pooling_output_V_address0 sc_out sc_lv 15 signal 4 } 
	{ max_pooling_output_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ max_pooling_output_V_we0 sc_out sc_logic 1 signal 4 } 
	{ max_pooling_output_V_d0 sc_out sc_lv 21 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_dim1", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_dim1", "role": "default" }} , 
 	{ "name": "in_dim2", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_dim2", "role": "default" }} , 
 	{ "name": "convolution_output_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "convolution_output_V_0", "role": "address0" }} , 
 	{ "name": "convolution_output_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convolution_output_V_0", "role": "ce0" }} , 
 	{ "name": "convolution_output_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "convolution_output_V_0", "role": "q0" }} , 
 	{ "name": "convolution_output_V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "convolution_output_V_0", "role": "address1" }} , 
 	{ "name": "convolution_output_V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convolution_output_V_0", "role": "ce1" }} , 
 	{ "name": "convolution_output_V_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "convolution_output_V_0", "role": "q1" }} , 
 	{ "name": "convolution_output_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "convolution_output_V_1", "role": "address0" }} , 
 	{ "name": "convolution_output_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convolution_output_V_1", "role": "ce0" }} , 
 	{ "name": "convolution_output_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "convolution_output_V_1", "role": "q0" }} , 
 	{ "name": "convolution_output_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "convolution_output_V_1", "role": "address1" }} , 
 	{ "name": "convolution_output_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convolution_output_V_1", "role": "ce1" }} , 
 	{ "name": "convolution_output_V_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "convolution_output_V_1", "role": "q1" }} , 
 	{ "name": "max_pooling_output_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "max_pooling_output_V", "role": "address0" }} , 
 	{ "name": "max_pooling_output_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_pooling_output_V", "role": "ce0" }} , 
 	{ "name": "max_pooling_output_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_pooling_output_V", "role": "we0" }} , 
 	{ "name": "max_pooling_output_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "max_pooling_output_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "max_pooling2d_unsigned_short_58_unsigned_short_58_unsigned_short_32_unsigned_short_29_unsigned_short_29_unsigned_short_32_s",
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
		"Port" : [
			{"Name" : "in_dim1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_dim2", "Type" : "None", "Direction" : "I"},
			{"Name" : "convolution_output_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "convolution_output_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "max_pooling_output_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_5ns_6ns_10_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6ns_6ns_11_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11s_6ns_11_4_1_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	max_pooling2d_unsigned_short_58_unsigned_short_58_unsigned_short_32_unsigned_short_29_unsigned_short_29_unsigned_short_32_s {
		in_dim1 {Type I LastRead 0 FirstWrite -1}
		in_dim2 {Type I LastRead 0 FirstWrite -1}
		convolution_output_V_0 {Type I LastRead 7 FirstWrite -1}
		convolution_output_V_1 {Type I LastRead 8 FirstWrite -1}
		max_pooling_output_V {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_dim1 { ap_none {  { in_dim1 in_data 0 6 } } }
	in_dim2 { ap_none {  { in_dim2 in_data 0 6 } } }
	convolution_output_V_0 { ap_memory {  { convolution_output_V_0_address0 mem_address 1 16 }  { convolution_output_V_0_ce0 mem_ce 1 1 }  { convolution_output_V_0_q0 mem_dout 0 21 }  { convolution_output_V_0_address1 MemPortADDR2 1 16 }  { convolution_output_V_0_ce1 MemPortCE2 1 1 }  { convolution_output_V_0_q1 MemPortDOUT2 0 21 } } }
	convolution_output_V_1 { ap_memory {  { convolution_output_V_1_address0 mem_address 1 16 }  { convolution_output_V_1_ce0 mem_ce 1 1 }  { convolution_output_V_1_q0 mem_dout 0 21 }  { convolution_output_V_1_address1 MemPortADDR2 1 16 }  { convolution_output_V_1_ce1 MemPortCE2 1 1 }  { convolution_output_V_1_q1 MemPortDOUT2 0 21 } } }
	max_pooling_output_V { ap_memory {  { max_pooling_output_V_address0 mem_address 1 15 }  { max_pooling_output_V_ce0 mem_ce 1 1 }  { max_pooling_output_V_we0 mem_we 1 1 }  { max_pooling_output_V_d0 mem_din 1 21 } } }
}
