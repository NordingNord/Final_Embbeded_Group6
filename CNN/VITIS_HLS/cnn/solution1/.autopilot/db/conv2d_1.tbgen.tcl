set moduleName conv2d_1
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
set C_modelName {conv2d.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ output_0 float 32 regular {array 1549 { 2 3 } 1 1 }  }
	{ output_1 float 32 regular {array 1549 { 2 3 } 1 1 }  }
	{ output_2 float 32 regular {array 1549 { 2 3 } 1 1 }  }
	{ output_3 float 32 regular {array 1549 { 2 3 } 1 1 }  }
	{ output_4 float 32 regular {array 1549 { 2 3 } 1 1 }  }
	{ output_5 float 32 regular {array 1549 { 2 3 } 1 1 }  }
	{ output_6 float 32 regular {array 1549 { 2 3 } 1 1 }  }
	{ output_7 float 32 regular {array 1549 { 2 3 } 1 1 }  }
	{ output_8 float 32 regular {array 1549 { 2 3 } 1 1 }  }
	{ output_9 float 32 regular {array 1547 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "output_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "output_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "output_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "output_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "output_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "output_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "output_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "output_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "output_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 73
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_address0 sc_out sc_lv 10 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_q0 sc_in sc_lv 32 signal 0 } 
	{ output_0_address0 sc_out sc_lv 11 signal 1 } 
	{ output_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_0_we0 sc_out sc_logic 1 signal 1 } 
	{ output_0_d0 sc_out sc_lv 32 signal 1 } 
	{ output_0_q0 sc_in sc_lv 32 signal 1 } 
	{ output_1_address0 sc_out sc_lv 11 signal 2 } 
	{ output_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ output_1_we0 sc_out sc_logic 1 signal 2 } 
	{ output_1_d0 sc_out sc_lv 32 signal 2 } 
	{ output_1_q0 sc_in sc_lv 32 signal 2 } 
	{ output_2_address0 sc_out sc_lv 11 signal 3 } 
	{ output_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ output_2_we0 sc_out sc_logic 1 signal 3 } 
	{ output_2_d0 sc_out sc_lv 32 signal 3 } 
	{ output_2_q0 sc_in sc_lv 32 signal 3 } 
	{ output_3_address0 sc_out sc_lv 11 signal 4 } 
	{ output_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ output_3_we0 sc_out sc_logic 1 signal 4 } 
	{ output_3_d0 sc_out sc_lv 32 signal 4 } 
	{ output_3_q0 sc_in sc_lv 32 signal 4 } 
	{ output_4_address0 sc_out sc_lv 11 signal 5 } 
	{ output_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ output_4_we0 sc_out sc_logic 1 signal 5 } 
	{ output_4_d0 sc_out sc_lv 32 signal 5 } 
	{ output_4_q0 sc_in sc_lv 32 signal 5 } 
	{ output_5_address0 sc_out sc_lv 11 signal 6 } 
	{ output_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ output_5_we0 sc_out sc_logic 1 signal 6 } 
	{ output_5_d0 sc_out sc_lv 32 signal 6 } 
	{ output_5_q0 sc_in sc_lv 32 signal 6 } 
	{ output_6_address0 sc_out sc_lv 11 signal 7 } 
	{ output_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ output_6_we0 sc_out sc_logic 1 signal 7 } 
	{ output_6_d0 sc_out sc_lv 32 signal 7 } 
	{ output_6_q0 sc_in sc_lv 32 signal 7 } 
	{ output_7_address0 sc_out sc_lv 11 signal 8 } 
	{ output_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ output_7_we0 sc_out sc_logic 1 signal 8 } 
	{ output_7_d0 sc_out sc_lv 32 signal 8 } 
	{ output_7_q0 sc_in sc_lv 32 signal 8 } 
	{ output_8_address0 sc_out sc_lv 11 signal 9 } 
	{ output_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ output_8_we0 sc_out sc_logic 1 signal 9 } 
	{ output_8_d0 sc_out sc_lv 32 signal 9 } 
	{ output_8_q0 sc_in sc_lv 32 signal 9 } 
	{ output_9_address0 sc_out sc_lv 11 signal 10 } 
	{ output_9_ce0 sc_out sc_logic 1 signal 10 } 
	{ output_9_we0 sc_out sc_logic 1 signal 10 } 
	{ output_9_d0 sc_out sc_lv 32 signal 10 } 
	{ output_9_q0 sc_in sc_lv 32 signal 10 } 
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
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
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
 	{ "name": "output_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_2", "role": "address0" }} , 
 	{ "name": "output_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "ce0" }} , 
 	{ "name": "output_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "we0" }} , 
 	{ "name": "output_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_2", "role": "d0" }} , 
 	{ "name": "output_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_2", "role": "q0" }} , 
 	{ "name": "output_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_3", "role": "address0" }} , 
 	{ "name": "output_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "ce0" }} , 
 	{ "name": "output_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "we0" }} , 
 	{ "name": "output_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_3", "role": "d0" }} , 
 	{ "name": "output_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_3", "role": "q0" }} , 
 	{ "name": "output_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_4", "role": "address0" }} , 
 	{ "name": "output_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "ce0" }} , 
 	{ "name": "output_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "we0" }} , 
 	{ "name": "output_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_4", "role": "d0" }} , 
 	{ "name": "output_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_4", "role": "q0" }} , 
 	{ "name": "output_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_5", "role": "address0" }} , 
 	{ "name": "output_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "ce0" }} , 
 	{ "name": "output_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "we0" }} , 
 	{ "name": "output_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_5", "role": "d0" }} , 
 	{ "name": "output_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_5", "role": "q0" }} , 
 	{ "name": "output_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_6", "role": "address0" }} , 
 	{ "name": "output_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "ce0" }} , 
 	{ "name": "output_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "we0" }} , 
 	{ "name": "output_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_6", "role": "d0" }} , 
 	{ "name": "output_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_6", "role": "q0" }} , 
 	{ "name": "output_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_7", "role": "address0" }} , 
 	{ "name": "output_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "ce0" }} , 
 	{ "name": "output_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "we0" }} , 
 	{ "name": "output_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_7", "role": "d0" }} , 
 	{ "name": "output_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_7", "role": "q0" }} , 
 	{ "name": "output_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_8", "role": "address0" }} , 
 	{ "name": "output_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_8", "role": "ce0" }} , 
 	{ "name": "output_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_8", "role": "we0" }} , 
 	{ "name": "output_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_8", "role": "d0" }} , 
 	{ "name": "output_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_8", "role": "q0" }} , 
 	{ "name": "output_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_9", "role": "address0" }} , 
 	{ "name": "output_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_9", "role": "ce0" }} , 
 	{ "name": "output_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_9", "role": "we0" }} , 
 	{ "name": "output_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_9", "role": "d0" }} , 
 	{ "name": "output_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_9", "role": "q0" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_2_weights_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_2_bias_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_5ns_6ns_9_1_1_U20", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_5ns_6ns_9_1_1_U21", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_14ns_12ns_14_18_seq_1_U22", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_14ns_16ns_29_4_1_U23", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		layer_2_bias {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1099649", "Max" : "1099649"}
	, {"Name" : "Interval", "Min" : "1099649", "Max" : "1099649"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 10 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 32 } } }
	output_0 { ap_memory {  { output_0_address0 mem_address 1 11 }  { output_0_ce0 mem_ce 1 1 }  { output_0_we0 mem_we 1 1 }  { output_0_d0 mem_din 1 32 }  { output_0_q0 mem_dout 0 32 } } }
	output_1 { ap_memory {  { output_1_address0 mem_address 1 11 }  { output_1_ce0 mem_ce 1 1 }  { output_1_we0 mem_we 1 1 }  { output_1_d0 mem_din 1 32 }  { output_1_q0 mem_dout 0 32 } } }
	output_2 { ap_memory {  { output_2_address0 mem_address 1 11 }  { output_2_ce0 mem_ce 1 1 }  { output_2_we0 mem_we 1 1 }  { output_2_d0 mem_din 1 32 }  { output_2_q0 mem_dout 0 32 } } }
	output_3 { ap_memory {  { output_3_address0 mem_address 1 11 }  { output_3_ce0 mem_ce 1 1 }  { output_3_we0 mem_we 1 1 }  { output_3_d0 mem_din 1 32 }  { output_3_q0 mem_dout 0 32 } } }
	output_4 { ap_memory {  { output_4_address0 mem_address 1 11 }  { output_4_ce0 mem_ce 1 1 }  { output_4_we0 mem_we 1 1 }  { output_4_d0 mem_din 1 32 }  { output_4_q0 mem_dout 0 32 } } }
	output_5 { ap_memory {  { output_5_address0 mem_address 1 11 }  { output_5_ce0 mem_ce 1 1 }  { output_5_we0 mem_we 1 1 }  { output_5_d0 mem_din 1 32 }  { output_5_q0 mem_dout 0 32 } } }
	output_6 { ap_memory {  { output_6_address0 mem_address 1 11 }  { output_6_ce0 mem_ce 1 1 }  { output_6_we0 mem_we 1 1 }  { output_6_d0 mem_din 1 32 }  { output_6_q0 mem_dout 0 32 } } }
	output_7 { ap_memory {  { output_7_address0 mem_address 1 11 }  { output_7_ce0 mem_ce 1 1 }  { output_7_we0 mem_we 1 1 }  { output_7_d0 mem_din 1 32 }  { output_7_q0 mem_dout 0 32 } } }
	output_8 { ap_memory {  { output_8_address0 mem_address 1 11 }  { output_8_ce0 mem_ce 1 1 }  { output_8_we0 mem_we 1 1 }  { output_8_d0 mem_din 1 32 }  { output_8_q0 mem_dout 0 32 } } }
	output_9 { ap_memory {  { output_9_address0 mem_address 1 11 }  { output_9_ce0 mem_ce 1 1 }  { output_9_we0 mem_we 1 1 }  { output_9_d0 mem_din 1 32 }  { output_9_q0 mem_dout 0 32 } } }
}
