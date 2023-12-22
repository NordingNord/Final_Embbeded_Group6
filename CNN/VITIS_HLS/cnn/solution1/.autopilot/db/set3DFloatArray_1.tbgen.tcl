set moduleName set3DFloatArray_1
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
set C_modelName {set3DFloatArray.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ array_r float 32 regular {array 1936 { 0 3 } 0 1 }  }
	{ array1 float 32 regular {array 1936 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "array_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ array_r_address0 sc_out sc_lv 11 signal 0 } 
	{ array_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ array_r_we0 sc_out sc_logic 1 signal 0 } 
	{ array_r_d0 sc_out sc_lv 32 signal 0 } 
	{ array1_address0 sc_out sc_lv 11 signal 1 } 
	{ array1_ce0 sc_out sc_logic 1 signal 1 } 
	{ array1_we0 sc_out sc_logic 1 signal 1 } 
	{ array1_d0 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "array_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "array_r", "role": "address0" }} , 
 	{ "name": "array_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_r", "role": "ce0" }} , 
 	{ "name": "array_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_r", "role": "we0" }} , 
 	{ "name": "array_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_r", "role": "d0" }} , 
 	{ "name": "array1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "array1", "role": "address0" }} , 
 	{ "name": "array1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array1", "role": "ce0" }} , 
 	{ "name": "array1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array1", "role": "we0" }} , 
 	{ "name": "array1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array1", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "set3DFloatArray_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3891", "EstimateLatencyMax" : "3891",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "array_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array1", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_12ns_12ns_12_16_1_U42", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_4ns_10ns_6ns_12_4_1_U43", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	set3DFloatArray_1 {
		array_r {Type O LastRead -1 FirstWrite 19}
		array1 {Type O LastRead -1 FirstWrite 19}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3891", "Max" : "3891"}
	, {"Name" : "Interval", "Min" : "3891", "Max" : "3891"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	array_r { ap_memory {  { array_r_address0 mem_address 1 11 }  { array_r_ce0 mem_ce 1 1 }  { array_r_we0 mem_we 1 1 }  { array_r_d0 mem_din 1 32 } } }
	array1 { ap_memory {  { array1_address0 mem_address 1 11 }  { array1_ce0 mem_ce 1 1 }  { array1_we0 mem_we 1 1 }  { array1_d0 mem_din 1 32 } } }
}
