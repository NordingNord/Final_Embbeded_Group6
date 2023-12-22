set moduleName infer
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
set C_modelName {infer}
set C_modelType { void 0 }
set C_modelArgList {
	{ infer_input_V int 32 regular {fifo 0 volatile }  }
	{ infer_output_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "infer_input_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "infer_input.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "infer_output_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "infer_output.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ infer_input_V_dout sc_in sc_lv 32 signal 0 } 
	{ infer_input_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ infer_input_V_read sc_out sc_logic 1 signal 0 } 
	{ infer_output_V_din sc_out sc_lv 32 signal 1 } 
	{ infer_output_V_full_n sc_in sc_logic 1 signal 1 } 
	{ infer_output_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "infer_input_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "infer_input_V", "role": "dout" }} , 
 	{ "name": "infer_input_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "infer_input_V", "role": "empty_n" }} , 
 	{ "name": "infer_input_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "infer_input_V", "role": "read" }} , 
 	{ "name": "infer_output_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "infer_output_V", "role": "din" }} , 
 	{ "name": "infer_output_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "infer_output_V", "role": "full_n" }} , 
 	{ "name": "infer_output_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "infer_output_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "23", "29", "33", "35", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51"],
		"CDFG" : "infer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4242308", "EstimateLatencyMax" : "4242308",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "infer_input_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "infer_input_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "infer_output_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "infer_output_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer_2_weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_conv2d_1_fu_801", "Port" : "layer_2_weights"}]},
			{"Name" : "layer_2_bias", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_conv2d_1_fu_801", "Port" : "layer_2_bias"}]},
			{"Name" : "layer_4_weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_conv2d_fu_820", "Port" : "layer_4_weights"}]},
			{"Name" : "layer_4_bias", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_conv2d_fu_820", "Port" : "layer_4_bias"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_input_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_2_output_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_2_output_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_2_output_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_2_output_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_2_output_4_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_2_output_5_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_2_output_6_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_2_output_7_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_2_output_8_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_2_output_9_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_3_output_0_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_3_output_1_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_4_output_0_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_4_output_1_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_1_fu_801", "Parent" : "0", "Child" : ["17", "18", "19", "20", "21", "22"],
		"CDFG" : "conv2d_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1099649", "EstimateLatencyMax" : "1099649",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "layer_2_weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer_2_bias", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_1_fu_801.layer_2_weights_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_1_fu_801.layer_2_bias_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_1_fu_801.mul_5ns_6ns_9_1_1_U20", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_1_fu_801.mul_5ns_6ns_9_1_1_U21", "Parent" : "16"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_1_fu_801.urem_14ns_12ns_14_18_seq_1_U22", "Parent" : "16"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_1_fu_801.mul_mul_14ns_16ns_29_4_1_U23", "Parent" : "16"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_fu_820", "Parent" : "0", "Child" : ["24", "25", "26", "27", "28"],
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
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_fu_820.layer_4_weights_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_fu_820.layer_4_bias_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_fu_820.urem_12ns_12ns_12_16_seq_1_U54", "Parent" : "23"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_fu_820.urem_12ns_12ns_12_16_1_U55", "Parent" : "23"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_fu_820.mac_muladd_4ns_5ns_4ns_7_4_1_U56", "Parent" : "23"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_set3DFloatArray_2_fu_832", "Parent" : "0", "Child" : ["30", "31", "32"],
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
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_set3DFloatArray_2_fu_832.urem_14ns_12ns_14_18_1_U1", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_set3DFloatArray_2_fu_832.mul_mul_5ns_11ns_14_4_1_U2", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_set3DFloatArray_2_fu_832.mul_mul_14ns_16ns_29_4_1_U3", "Parent" : "29"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_set3DFloatArray_fu_846", "Parent" : "0", "Child" : ["34"],
		"CDFG" : "set3DFloatArray",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2608", "EstimateLatencyMax" : "2608",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "array_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array1", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_set3DFloatArray_fu_846.urem_12ns_12ns_12_16_1_U48", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_set3DFloatArray_1_fu_852", "Parent" : "0", "Child" : ["36", "37"],
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
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_set3DFloatArray_1_fu_852.urem_12ns_12ns_12_16_1_U42", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_set3DFloatArray_1_fu_852.mac_muladd_4ns_10ns_6ns_12_4_1_U43", "Parent" : "35"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_10_no_dsp_1_U65", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32ns_32_4_no_dsp_1_U66", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U67", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U68", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_14ns_12ns_14_18_1_U69", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_14ns_12ns_14_18_1_U70", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_15ns_12ns_15_19_1_U71", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_15ns_12ns_15_19_1_U72", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_12ns_12ns_12_16_1_U73", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_5ns_11ns_14_4_1_U74", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_5ns_11ns_15_4_1_U75", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_4ns_10ns_6ns_12_4_1_U76", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U77", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U78", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	infer {
		infer_input_V {Type I LastRead 2 FirstWrite -1}
		infer_output_V {Type O LastRead -1 FirstWrite 18}
		layer_2_weights {Type I LastRead -1 FirstWrite -1}
		layer_2_bias {Type I LastRead -1 FirstWrite -1}
		layer_4_weights {Type I LastRead -1 FirstWrite -1}
		layer_4_bias {Type I LastRead -1 FirstWrite -1}}
	conv2d_1 {
		input_r {Type I LastRead 20 FirstWrite -1}
		output_0 {Type IO LastRead 22 FirstWrite 21}
		output_1 {Type IO LastRead 22 FirstWrite 21}
		output_2 {Type IO LastRead 22 FirstWrite 21}
		output_3 {Type IO LastRead 22 FirstWrite 21}
		output_4 {Type IO LastRead 22 FirstWrite 21}
		output_5 {Type IO LastRead 22 FirstWrite 21}
		output_6 {Type IO LastRead 22 FirstWrite 21}
		output_7 {Type IO LastRead 22 FirstWrite 21}
		output_8 {Type IO LastRead 22 FirstWrite 21}
		output_9 {Type IO LastRead 22 FirstWrite 21}
		layer_2_weights {Type I LastRead -1 FirstWrite -1}
		layer_2_bias {Type I LastRead -1 FirstWrite -1}}
	conv2d {
		input_0 {Type I LastRead 36 FirstWrite -1}
		input_1 {Type I LastRead 36 FirstWrite -1}
		output_0 {Type IO LastRead 16 FirstWrite 37}
		output_1 {Type IO LastRead 16 FirstWrite 37}
		layer_4_weights {Type I LastRead -1 FirstWrite -1}
		layer_4_bias {Type I LastRead -1 FirstWrite -1}}
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
		array9 {Type O LastRead -1 FirstWrite 21}}
	set3DFloatArray {
		array_r {Type O LastRead -1 FirstWrite 16}
		array1 {Type O LastRead -1 FirstWrite 16}}
	set3DFloatArray_1 {
		array_r {Type O LastRead -1 FirstWrite 19}
		array1 {Type O LastRead -1 FirstWrite 19}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4242308", "Max" : "4242308"}
	, {"Name" : "Interval", "Min" : "4242309", "Max" : "4242309"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
]}

set Spec2ImplPortList { 
	infer_input_V { ap_fifo {  { infer_input_V_dout fifo_data 0 32 }  { infer_input_V_empty_n fifo_status 0 1 }  { infer_input_V_read fifo_update 1 1 } } }
	infer_output_V { ap_fifo {  { infer_output_V_din fifo_data 1 32 }  { infer_output_V_full_n fifo_status 0 1 }  { infer_output_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	infer_input_V { fifo_read 576 no_conditional }
	infer_output_V { fifo_write 4 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
