set moduleName set3DFloatArray_2
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
set C_modelName {set3DFloatArray.2}
set C_modelType { void 0 }
set C_modelArgList {
	{ array_r float 32 regular {array 1549 { 0 3 } 0 1 }  }
	{ array1 float 32 regular {array 1549 { 0 3 } 0 1 }  }
	{ array2 float 32 regular {array 1549 { 0 3 } 0 1 }  }
	{ array3 float 32 regular {array 1549 { 0 3 } 0 1 }  }
	{ array4 float 32 regular {array 1549 { 0 3 } 0 1 }  }
	{ array5 float 32 regular {array 1549 { 0 3 } 0 1 }  }
	{ array6 float 32 regular {array 1549 { 0 3 } 0 1 }  }
	{ array7 float 32 regular {array 1549 { 0 3 } 0 1 }  }
	{ array8 float 32 regular {array 1549 { 0 3 } 0 1 }  }
	{ array9 float 32 regular {array 1547 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "array_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 46
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
	{ array2_address0 sc_out sc_lv 11 signal 2 } 
	{ array2_ce0 sc_out sc_logic 1 signal 2 } 
	{ array2_we0 sc_out sc_logic 1 signal 2 } 
	{ array2_d0 sc_out sc_lv 32 signal 2 } 
	{ array3_address0 sc_out sc_lv 11 signal 3 } 
	{ array3_ce0 sc_out sc_logic 1 signal 3 } 
	{ array3_we0 sc_out sc_logic 1 signal 3 } 
	{ array3_d0 sc_out sc_lv 32 signal 3 } 
	{ array4_address0 sc_out sc_lv 11 signal 4 } 
	{ array4_ce0 sc_out sc_logic 1 signal 4 } 
	{ array4_we0 sc_out sc_logic 1 signal 4 } 
	{ array4_d0 sc_out sc_lv 32 signal 4 } 
	{ array5_address0 sc_out sc_lv 11 signal 5 } 
	{ array5_ce0 sc_out sc_logic 1 signal 5 } 
	{ array5_we0 sc_out sc_logic 1 signal 5 } 
	{ array5_d0 sc_out sc_lv 32 signal 5 } 
	{ array6_address0 sc_out sc_lv 11 signal 6 } 
	{ array6_ce0 sc_out sc_logic 1 signal 6 } 
	{ array6_we0 sc_out sc_logic 1 signal 6 } 
	{ array6_d0 sc_out sc_lv 32 signal 6 } 
	{ array7_address0 sc_out sc_lv 11 signal 7 } 
	{ array7_ce0 sc_out sc_logic 1 signal 7 } 
	{ array7_we0 sc_out sc_logic 1 signal 7 } 
	{ array7_d0 sc_out sc_lv 32 signal 7 } 
	{ array8_address0 sc_out sc_lv 11 signal 8 } 
	{ array8_ce0 sc_out sc_logic 1 signal 8 } 
	{ array8_we0 sc_out sc_logic 1 signal 8 } 
	{ array8_d0 sc_out sc_lv 32 signal 8 } 
	{ array9_address0 sc_out sc_lv 11 signal 9 } 
	{ array9_ce0 sc_out sc_logic 1 signal 9 } 
	{ array9_we0 sc_out sc_logic 1 signal 9 } 
	{ array9_d0 sc_out sc_lv 32 signal 9 } 
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
 	{ "name": "array1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array1", "role": "d0" }} , 
 	{ "name": "array2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "array2", "role": "address0" }} , 
 	{ "name": "array2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array2", "role": "ce0" }} , 
 	{ "name": "array2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array2", "role": "we0" }} , 
 	{ "name": "array2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array2", "role": "d0" }} , 
 	{ "name": "array3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "array3", "role": "address0" }} , 
 	{ "name": "array3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array3", "role": "ce0" }} , 
 	{ "name": "array3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array3", "role": "we0" }} , 
 	{ "name": "array3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array3", "role": "d0" }} , 
 	{ "name": "array4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "array4", "role": "address0" }} , 
 	{ "name": "array4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array4", "role": "ce0" }} , 
 	{ "name": "array4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array4", "role": "we0" }} , 
 	{ "name": "array4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array4", "role": "d0" }} , 
 	{ "name": "array5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "array5", "role": "address0" }} , 
 	{ "name": "array5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array5", "role": "ce0" }} , 
 	{ "name": "array5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array5", "role": "we0" }} , 
 	{ "name": "array5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array5", "role": "d0" }} , 
 	{ "name": "array6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "array6", "role": "address0" }} , 
 	{ "name": "array6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array6", "role": "ce0" }} , 
 	{ "name": "array6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array6", "role": "we0" }} , 
 	{ "name": "array6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array6", "role": "d0" }} , 
 	{ "name": "array7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "array7", "role": "address0" }} , 
 	{ "name": "array7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array7", "role": "ce0" }} , 
 	{ "name": "array7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array7", "role": "we0" }} , 
 	{ "name": "array7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array7", "role": "d0" }} , 
 	{ "name": "array8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "array8", "role": "address0" }} , 
 	{ "name": "array8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array8", "role": "ce0" }} , 
 	{ "name": "array8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array8", "role": "we0" }} , 
 	{ "name": "array8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array8", "role": "d0" }} , 
 	{ "name": "array9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "array9", "role": "address0" }} , 
 	{ "name": "array9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array9", "role": "ce0" }} , 
 	{ "name": "array9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array9", "role": "we0" }} , 
 	{ "name": "array9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array9", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "set3DFloatArray_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15509", "EstimateLatencyMax" : "15509",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "array_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array9", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_14ns_12ns_14_18_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_5ns_11ns_14_4_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_14ns_16ns_29_4_1_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	set3DFloatArray_2 {
		array_r {Type O LastRead -1 FirstWrite 21}
		array1 {Type O LastRead -1 FirstWrite 21}
		array2 {Type O LastRead -1 FirstWrite 21}
		array3 {Type O LastRead -1 FirstWrite 21}
		array4 {Type O LastRead -1 FirstWrite 21}
		array5 {Type O LastRead -1 FirstWrite 21}
		array6 {Type O LastRead -1 FirstWrite 21}
		array7 {Type O LastRead -1 FirstWrite 21}
		array8 {Type O LastRead -1 FirstWrite 21}
		array9 {Type O LastRead -1 FirstWrite 21}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15509", "Max" : "15509"}
	, {"Name" : "Interval", "Min" : "15509", "Max" : "15509"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	array_r { ap_memory {  { array_r_address0 mem_address 1 11 }  { array_r_ce0 mem_ce 1 1 }  { array_r_we0 mem_we 1 1 }  { array_r_d0 mem_din 1 32 } } }
	array1 { ap_memory {  { array1_address0 mem_address 1 11 }  { array1_ce0 mem_ce 1 1 }  { array1_we0 mem_we 1 1 }  { array1_d0 mem_din 1 32 } } }
	array2 { ap_memory {  { array2_address0 mem_address 1 11 }  { array2_ce0 mem_ce 1 1 }  { array2_we0 mem_we 1 1 }  { array2_d0 mem_din 1 32 } } }
	array3 { ap_memory {  { array3_address0 mem_address 1 11 }  { array3_ce0 mem_ce 1 1 }  { array3_we0 mem_we 1 1 }  { array3_d0 mem_din 1 32 } } }
	array4 { ap_memory {  { array4_address0 mem_address 1 11 }  { array4_ce0 mem_ce 1 1 }  { array4_we0 mem_we 1 1 }  { array4_d0 mem_din 1 32 } } }
	array5 { ap_memory {  { array5_address0 mem_address 1 11 }  { array5_ce0 mem_ce 1 1 }  { array5_we0 mem_we 1 1 }  { array5_d0 mem_din 1 32 } } }
	array6 { ap_memory {  { array6_address0 mem_address 1 11 }  { array6_ce0 mem_ce 1 1 }  { array6_we0 mem_we 1 1 }  { array6_d0 mem_din 1 32 } } }
	array7 { ap_memory {  { array7_address0 mem_address 1 11 }  { array7_ce0 mem_ce 1 1 }  { array7_we0 mem_we 1 1 }  { array7_d0 mem_din 1 32 } } }
	array8 { ap_memory {  { array8_address0 mem_address 1 11 }  { array8_ce0 mem_ce 1 1 }  { array8_we0 mem_we 1 1 }  { array8_d0 mem_din 1 32 } } }
	array9 { ap_memory {  { array9_address0 mem_address 1 11 }  { array9_ce0 mem_ce 1 1 }  { array9_we0 mem_we 1 1 }  { array9_d0 mem_din 1 32 } } }
}
