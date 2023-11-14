set moduleName Invert
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
set C_modelName {Invert}
set C_modelType { void 0 }
set C_modelArgList {
	{ Data_In_V_data_V int 32 regular {axi_s 0 volatile  { Data_In Data } }  }
	{ Data_In_V_keep_V int 4 regular {axi_s 0 volatile  { Data_In Keep } }  }
	{ Data_In_V_strb_V int 4 regular {axi_s 0 volatile  { Data_In Strb } }  }
	{ Data_In_V_user_V int 2 regular {axi_s 0 volatile  { Data_In User } }  }
	{ Data_In_V_last_V int 1 regular {axi_s 0 volatile  { Data_In Last } }  }
	{ Data_In_V_id_V int 5 regular {axi_s 0 volatile  { Data_In ID } }  }
	{ Data_In_V_dest_V int 6 regular {axi_s 0 volatile  { Data_In Dest } }  }
	{ Data_Out_V_data_V int 32 regular {axi_s 1 volatile  { Data_Out Data } }  }
	{ Data_Out_V_keep_V int 4 regular {axi_s 1 volatile  { Data_Out Keep } }  }
	{ Data_Out_V_strb_V int 4 regular {axi_s 1 volatile  { Data_Out Strb } }  }
	{ Data_Out_V_user_V int 2 regular {axi_s 1 volatile  { Data_Out User } }  }
	{ Data_Out_V_last_V int 1 regular {axi_s 1 volatile  { Data_Out Last } }  }
	{ Data_Out_V_id_V int 5 regular {axi_s 1 volatile  { Data_Out ID } }  }
	{ Data_Out_V_dest_V int 6 regular {axi_s 1 volatile  { Data_Out Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Data_In_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Data_In.V.data.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Data_In_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Data_In.V.keep.V","cData": "int4","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Data_In_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Data_In.V.strb.V","cData": "int4","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Data_In_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Data_In.V.user.V","cData": "int2","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Data_In_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Data_In.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Data_In_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Data_In.V.id.V","cData": "int5","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Data_In_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Data_In.V.dest.V","cData": "int6","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Data_Out_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Data_Out.V.data.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Data_Out_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Data_Out.V.keep.V","cData": "int4","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Data_Out_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Data_Out.V.strb.V","cData": "int4","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Data_Out_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Data_Out.V.user.V","cData": "int2","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Data_Out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Data_Out.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Data_Out_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Data_Out.V.id.V","cData": "int5","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Data_Out_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Data_Out.V.dest.V","cData": "int6","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ Data_In_TDATA sc_in sc_lv 32 signal 0 } 
	{ Data_In_TVALID sc_in sc_logic 1 invld 6 } 
	{ Data_In_TREADY sc_out sc_logic 1 inacc 6 } 
	{ Data_In_TKEEP sc_in sc_lv 4 signal 1 } 
	{ Data_In_TSTRB sc_in sc_lv 4 signal 2 } 
	{ Data_In_TUSER sc_in sc_lv 2 signal 3 } 
	{ Data_In_TLAST sc_in sc_lv 1 signal 4 } 
	{ Data_In_TID sc_in sc_lv 5 signal 5 } 
	{ Data_In_TDEST sc_in sc_lv 6 signal 6 } 
	{ Data_Out_TDATA sc_out sc_lv 32 signal 7 } 
	{ Data_Out_TVALID sc_out sc_logic 1 outvld 13 } 
	{ Data_Out_TREADY sc_in sc_logic 1 outacc 13 } 
	{ Data_Out_TKEEP sc_out sc_lv 4 signal 8 } 
	{ Data_Out_TSTRB sc_out sc_lv 4 signal 9 } 
	{ Data_Out_TUSER sc_out sc_lv 2 signal 10 } 
	{ Data_Out_TLAST sc_out sc_lv 1 signal 11 } 
	{ Data_Out_TID sc_out sc_lv 5 signal 12 } 
	{ Data_Out_TDEST sc_out sc_lv 6 signal 13 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 4 signal -1 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"Invert","role":"start","value":"0","valid_bit":"0"},{"name":"Invert","role":"continue","value":"0","valid_bit":"4"},{"name":"Invert","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"Invert","role":"start","value":"0","valid_bit":"0"},{"name":"Invert","role":"done","value":"0","valid_bit":"1"},{"name":"Invert","role":"idle","value":"0","valid_bit":"2"},{"name":"Invert","role":"ready","value":"0","valid_bit":"3"},{"name":"Invert","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "Data_In_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Data_In_V_data_V", "role": "default" }} , 
 	{ "name": "Data_In_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "Data_In_V_dest_V", "role": "default" }} , 
 	{ "name": "Data_In_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "Data_In_V_dest_V", "role": "default" }} , 
 	{ "name": "Data_In_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Data_In_V_keep_V", "role": "default" }} , 
 	{ "name": "Data_In_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Data_In_V_strb_V", "role": "default" }} , 
 	{ "name": "Data_In_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Data_In_V_user_V", "role": "default" }} , 
 	{ "name": "Data_In_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Data_In_V_last_V", "role": "default" }} , 
 	{ "name": "Data_In_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Data_In_V_id_V", "role": "default" }} , 
 	{ "name": "Data_In_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "Data_In_V_dest_V", "role": "default" }} , 
 	{ "name": "Data_Out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Data_Out_V_data_V", "role": "default" }} , 
 	{ "name": "Data_Out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Data_Out_V_dest_V", "role": "default" }} , 
 	{ "name": "Data_Out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "Data_Out_V_dest_V", "role": "default" }} , 
 	{ "name": "Data_Out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Data_Out_V_keep_V", "role": "default" }} , 
 	{ "name": "Data_Out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Data_Out_V_strb_V", "role": "default" }} , 
 	{ "name": "Data_Out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Data_Out_V_user_V", "role": "default" }} , 
 	{ "name": "Data_Out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Data_Out_V_last_V", "role": "default" }} , 
 	{ "name": "Data_Out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Data_Out_V_id_V", "role": "default" }} , 
 	{ "name": "Data_Out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "Data_Out_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "Invert",
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
			{"Name" : "Data_In_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Data_In_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Data_In_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "Data_In_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "Data_In_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "Data_In_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "Data_In_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "Data_In_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "Data_Out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Data_Out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Data_Out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "Data_Out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "Data_Out_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "Data_Out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "Data_Out_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "Data_Out_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_5_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_5_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_5_full_dsp_1_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_5_full_dsp_1_U4", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U5", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U6", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_6_max_dsp_1_U7", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_6_max_dsp_1_U8", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_6_max_dsp_1_U9", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_6_max_dsp_1_U10", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_6_max_dsp_1_U11", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_6_max_dsp_1_U12", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_4_no_dsp_1_U13", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_4_no_dsp_1_U14", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_4_no_dsp_1_U15", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_4_no_dsp_1_U16", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_4_no_dsp_1_U17", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_4_no_dsp_1_U18", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Data_In_V_data_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Data_In_V_keep_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Data_In_V_strb_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Data_In_V_user_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Data_In_V_last_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Data_In_V_id_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Data_In_V_dest_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Data_Out_V_data_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Data_Out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Data_Out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Data_Out_V_user_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Data_Out_V_last_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Data_Out_V_id_V_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Data_Out_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Invert {
		Data_In_V_data_V {Type I LastRead 1 FirstWrite -1}
		Data_In_V_keep_V {Type I LastRead 1 FirstWrite -1}
		Data_In_V_strb_V {Type I LastRead 1 FirstWrite -1}
		Data_In_V_user_V {Type I LastRead 1 FirstWrite -1}
		Data_In_V_last_V {Type I LastRead 1 FirstWrite -1}
		Data_In_V_id_V {Type I LastRead 1 FirstWrite -1}
		Data_In_V_dest_V {Type I LastRead 1 FirstWrite -1}
		Data_Out_V_data_V {Type O LastRead -1 FirstWrite 28}
		Data_Out_V_keep_V {Type O LastRead -1 FirstWrite 28}
		Data_Out_V_strb_V {Type O LastRead -1 FirstWrite 28}
		Data_Out_V_user_V {Type O LastRead -1 FirstWrite 28}
		Data_Out_V_last_V {Type O LastRead -1 FirstWrite 28}
		Data_Out_V_id_V {Type O LastRead -1 FirstWrite 28}
		Data_Out_V_dest_V {Type O LastRead -1 FirstWrite 28}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Data_In_V_data_V { axis {  { Data_In_TDATA in_data 0 32 } } }
	Data_In_V_keep_V { axis {  { Data_In_TKEEP in_data 0 4 } } }
	Data_In_V_strb_V { axis {  { Data_In_TSTRB in_data 0 4 } } }
	Data_In_V_user_V { axis {  { Data_In_TUSER in_data 0 2 } } }
	Data_In_V_last_V { axis {  { Data_In_TLAST in_data 0 1 } } }
	Data_In_V_id_V { axis {  { Data_In_TID in_data 0 5 } } }
	Data_In_V_dest_V { axis {  { Data_In_TVALID in_vld 0 1 }  { Data_In_TREADY in_acc 1 1 }  { Data_In_TDEST in_data 0 6 } } }
	Data_Out_V_data_V { axis {  { Data_Out_TDATA out_data 1 32 } } }
	Data_Out_V_keep_V { axis {  { Data_Out_TKEEP out_data 1 4 } } }
	Data_Out_V_strb_V { axis {  { Data_Out_TSTRB out_data 1 4 } } }
	Data_Out_V_user_V { axis {  { Data_Out_TUSER out_data 1 2 } } }
	Data_Out_V_last_V { axis {  { Data_Out_TLAST out_data 1 1 } } }
	Data_Out_V_id_V { axis {  { Data_Out_TID out_data 1 5 } } }
	Data_Out_V_dest_V { axis {  { Data_Out_TVALID out_vld 1 1 }  { Data_Out_TREADY out_acc 0 1 }  { Data_Out_TDEST out_data 1 6 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
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
