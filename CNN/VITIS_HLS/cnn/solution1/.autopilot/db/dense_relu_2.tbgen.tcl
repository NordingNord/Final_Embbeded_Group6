set moduleName dense_relu_2
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
set C_modelName {dense_relu.2}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_0 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_1 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_2 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_3 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_4 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_5 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_6 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_7 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_8 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_9 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_10 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_11 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_12 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_13 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_14 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_15 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_16 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_17 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_18 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_19 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_20 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_21 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_22 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_23 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_24 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_25 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_26 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_27 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_28 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_29 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_30 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ input_31 float 32 regular {array 25 { 1 3 } 1 1 }  }
	{ output_r float 32 regular {array 64 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_16", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_17", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_19", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_20", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_21", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_22", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_23", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_24", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_25", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_26", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_27", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_28", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_29", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_30", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_31", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 121
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_address0 sc_out sc_lv 5 signal 0 } 
	{ input_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_0_q0 sc_in sc_lv 32 signal 0 } 
	{ input_1_address0 sc_out sc_lv 5 signal 1 } 
	{ input_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_1_q0 sc_in sc_lv 32 signal 1 } 
	{ input_2_address0 sc_out sc_lv 5 signal 2 } 
	{ input_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_2_q0 sc_in sc_lv 32 signal 2 } 
	{ input_3_address0 sc_out sc_lv 5 signal 3 } 
	{ input_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ input_3_q0 sc_in sc_lv 32 signal 3 } 
	{ input_4_address0 sc_out sc_lv 5 signal 4 } 
	{ input_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ input_4_q0 sc_in sc_lv 32 signal 4 } 
	{ input_5_address0 sc_out sc_lv 5 signal 5 } 
	{ input_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ input_5_q0 sc_in sc_lv 32 signal 5 } 
	{ input_6_address0 sc_out sc_lv 5 signal 6 } 
	{ input_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ input_6_q0 sc_in sc_lv 32 signal 6 } 
	{ input_7_address0 sc_out sc_lv 5 signal 7 } 
	{ input_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ input_7_q0 sc_in sc_lv 32 signal 7 } 
	{ input_8_address0 sc_out sc_lv 5 signal 8 } 
	{ input_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ input_8_q0 sc_in sc_lv 32 signal 8 } 
	{ input_9_address0 sc_out sc_lv 5 signal 9 } 
	{ input_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ input_9_q0 sc_in sc_lv 32 signal 9 } 
	{ input_10_address0 sc_out sc_lv 5 signal 10 } 
	{ input_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ input_10_q0 sc_in sc_lv 32 signal 10 } 
	{ input_11_address0 sc_out sc_lv 5 signal 11 } 
	{ input_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ input_11_q0 sc_in sc_lv 32 signal 11 } 
	{ input_12_address0 sc_out sc_lv 5 signal 12 } 
	{ input_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ input_12_q0 sc_in sc_lv 32 signal 12 } 
	{ input_13_address0 sc_out sc_lv 5 signal 13 } 
	{ input_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ input_13_q0 sc_in sc_lv 32 signal 13 } 
	{ input_14_address0 sc_out sc_lv 5 signal 14 } 
	{ input_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ input_14_q0 sc_in sc_lv 32 signal 14 } 
	{ input_15_address0 sc_out sc_lv 5 signal 15 } 
	{ input_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ input_15_q0 sc_in sc_lv 32 signal 15 } 
	{ input_16_address0 sc_out sc_lv 5 signal 16 } 
	{ input_16_ce0 sc_out sc_logic 1 signal 16 } 
	{ input_16_q0 sc_in sc_lv 32 signal 16 } 
	{ input_17_address0 sc_out sc_lv 5 signal 17 } 
	{ input_17_ce0 sc_out sc_logic 1 signal 17 } 
	{ input_17_q0 sc_in sc_lv 32 signal 17 } 
	{ input_18_address0 sc_out sc_lv 5 signal 18 } 
	{ input_18_ce0 sc_out sc_logic 1 signal 18 } 
	{ input_18_q0 sc_in sc_lv 32 signal 18 } 
	{ input_19_address0 sc_out sc_lv 5 signal 19 } 
	{ input_19_ce0 sc_out sc_logic 1 signal 19 } 
	{ input_19_q0 sc_in sc_lv 32 signal 19 } 
	{ input_20_address0 sc_out sc_lv 5 signal 20 } 
	{ input_20_ce0 sc_out sc_logic 1 signal 20 } 
	{ input_20_q0 sc_in sc_lv 32 signal 20 } 
	{ input_21_address0 sc_out sc_lv 5 signal 21 } 
	{ input_21_ce0 sc_out sc_logic 1 signal 21 } 
	{ input_21_q0 sc_in sc_lv 32 signal 21 } 
	{ input_22_address0 sc_out sc_lv 5 signal 22 } 
	{ input_22_ce0 sc_out sc_logic 1 signal 22 } 
	{ input_22_q0 sc_in sc_lv 32 signal 22 } 
	{ input_23_address0 sc_out sc_lv 5 signal 23 } 
	{ input_23_ce0 sc_out sc_logic 1 signal 23 } 
	{ input_23_q0 sc_in sc_lv 32 signal 23 } 
	{ input_24_address0 sc_out sc_lv 5 signal 24 } 
	{ input_24_ce0 sc_out sc_logic 1 signal 24 } 
	{ input_24_q0 sc_in sc_lv 32 signal 24 } 
	{ input_25_address0 sc_out sc_lv 5 signal 25 } 
	{ input_25_ce0 sc_out sc_logic 1 signal 25 } 
	{ input_25_q0 sc_in sc_lv 32 signal 25 } 
	{ input_26_address0 sc_out sc_lv 5 signal 26 } 
	{ input_26_ce0 sc_out sc_logic 1 signal 26 } 
	{ input_26_q0 sc_in sc_lv 32 signal 26 } 
	{ input_27_address0 sc_out sc_lv 5 signal 27 } 
	{ input_27_ce0 sc_out sc_logic 1 signal 27 } 
	{ input_27_q0 sc_in sc_lv 32 signal 27 } 
	{ input_28_address0 sc_out sc_lv 5 signal 28 } 
	{ input_28_ce0 sc_out sc_logic 1 signal 28 } 
	{ input_28_q0 sc_in sc_lv 32 signal 28 } 
	{ input_29_address0 sc_out sc_lv 5 signal 29 } 
	{ input_29_ce0 sc_out sc_logic 1 signal 29 } 
	{ input_29_q0 sc_in sc_lv 32 signal 29 } 
	{ input_30_address0 sc_out sc_lv 5 signal 30 } 
	{ input_30_ce0 sc_out sc_logic 1 signal 30 } 
	{ input_30_q0 sc_in sc_lv 32 signal 30 } 
	{ input_31_address0 sc_out sc_lv 5 signal 31 } 
	{ input_31_ce0 sc_out sc_logic 1 signal 31 } 
	{ input_31_q0 sc_in sc_lv 32 signal 31 } 
	{ output_r_address0 sc_out sc_lv 6 signal 32 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 32 } 
	{ output_r_we0 sc_out sc_logic 1 signal 32 } 
	{ output_r_d0 sc_out sc_lv 32 signal 32 } 
	{ output_r_q0 sc_in sc_lv 32 signal 32 } 
	{ grp_fu_3337_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3337_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3337_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3337_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3337_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3341_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3341_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3341_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3341_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4439_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4439_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4439_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_4439_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_4439_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_0", "role": "address0" }} , 
 	{ "name": "input_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ce0" }} , 
 	{ "name": "input_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_0", "role": "q0" }} , 
 	{ "name": "input_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_1", "role": "address0" }} , 
 	{ "name": "input_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ce0" }} , 
 	{ "name": "input_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_1", "role": "q0" }} , 
 	{ "name": "input_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_2", "role": "address0" }} , 
 	{ "name": "input_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "ce0" }} , 
 	{ "name": "input_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_2", "role": "q0" }} , 
 	{ "name": "input_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_3", "role": "address0" }} , 
 	{ "name": "input_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "ce0" }} , 
 	{ "name": "input_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_3", "role": "q0" }} , 
 	{ "name": "input_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_4", "role": "address0" }} , 
 	{ "name": "input_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4", "role": "ce0" }} , 
 	{ "name": "input_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_4", "role": "q0" }} , 
 	{ "name": "input_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_5", "role": "address0" }} , 
 	{ "name": "input_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_5", "role": "ce0" }} , 
 	{ "name": "input_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_5", "role": "q0" }} , 
 	{ "name": "input_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_6", "role": "address0" }} , 
 	{ "name": "input_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_6", "role": "ce0" }} , 
 	{ "name": "input_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_6", "role": "q0" }} , 
 	{ "name": "input_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_7", "role": "address0" }} , 
 	{ "name": "input_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_7", "role": "ce0" }} , 
 	{ "name": "input_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_7", "role": "q0" }} , 
 	{ "name": "input_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_8", "role": "address0" }} , 
 	{ "name": "input_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_8", "role": "ce0" }} , 
 	{ "name": "input_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_8", "role": "q0" }} , 
 	{ "name": "input_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_9", "role": "address0" }} , 
 	{ "name": "input_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_9", "role": "ce0" }} , 
 	{ "name": "input_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_9", "role": "q0" }} , 
 	{ "name": "input_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_10", "role": "address0" }} , 
 	{ "name": "input_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_10", "role": "ce0" }} , 
 	{ "name": "input_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_10", "role": "q0" }} , 
 	{ "name": "input_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_11", "role": "address0" }} , 
 	{ "name": "input_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_11", "role": "ce0" }} , 
 	{ "name": "input_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_11", "role": "q0" }} , 
 	{ "name": "input_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_12", "role": "address0" }} , 
 	{ "name": "input_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_12", "role": "ce0" }} , 
 	{ "name": "input_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_12", "role": "q0" }} , 
 	{ "name": "input_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_13", "role": "address0" }} , 
 	{ "name": "input_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_13", "role": "ce0" }} , 
 	{ "name": "input_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_13", "role": "q0" }} , 
 	{ "name": "input_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_14", "role": "address0" }} , 
 	{ "name": "input_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_14", "role": "ce0" }} , 
 	{ "name": "input_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_14", "role": "q0" }} , 
 	{ "name": "input_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_15", "role": "address0" }} , 
 	{ "name": "input_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_15", "role": "ce0" }} , 
 	{ "name": "input_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_15", "role": "q0" }} , 
 	{ "name": "input_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_16", "role": "address0" }} , 
 	{ "name": "input_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_16", "role": "ce0" }} , 
 	{ "name": "input_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_16", "role": "q0" }} , 
 	{ "name": "input_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_17", "role": "address0" }} , 
 	{ "name": "input_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_17", "role": "ce0" }} , 
 	{ "name": "input_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_17", "role": "q0" }} , 
 	{ "name": "input_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_18", "role": "address0" }} , 
 	{ "name": "input_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_18", "role": "ce0" }} , 
 	{ "name": "input_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_18", "role": "q0" }} , 
 	{ "name": "input_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_19", "role": "address0" }} , 
 	{ "name": "input_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_19", "role": "ce0" }} , 
 	{ "name": "input_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_19", "role": "q0" }} , 
 	{ "name": "input_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_20", "role": "address0" }} , 
 	{ "name": "input_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_20", "role": "ce0" }} , 
 	{ "name": "input_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_20", "role": "q0" }} , 
 	{ "name": "input_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_21", "role": "address0" }} , 
 	{ "name": "input_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_21", "role": "ce0" }} , 
 	{ "name": "input_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_21", "role": "q0" }} , 
 	{ "name": "input_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_22", "role": "address0" }} , 
 	{ "name": "input_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_22", "role": "ce0" }} , 
 	{ "name": "input_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_22", "role": "q0" }} , 
 	{ "name": "input_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_23", "role": "address0" }} , 
 	{ "name": "input_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_23", "role": "ce0" }} , 
 	{ "name": "input_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_23", "role": "q0" }} , 
 	{ "name": "input_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_24", "role": "address0" }} , 
 	{ "name": "input_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_24", "role": "ce0" }} , 
 	{ "name": "input_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_24", "role": "q0" }} , 
 	{ "name": "input_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_25", "role": "address0" }} , 
 	{ "name": "input_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_25", "role": "ce0" }} , 
 	{ "name": "input_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_25", "role": "q0" }} , 
 	{ "name": "input_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_26", "role": "address0" }} , 
 	{ "name": "input_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_26", "role": "ce0" }} , 
 	{ "name": "input_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_26", "role": "q0" }} , 
 	{ "name": "input_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_27", "role": "address0" }} , 
 	{ "name": "input_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_27", "role": "ce0" }} , 
 	{ "name": "input_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_27", "role": "q0" }} , 
 	{ "name": "input_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_28", "role": "address0" }} , 
 	{ "name": "input_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_28", "role": "ce0" }} , 
 	{ "name": "input_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_28", "role": "q0" }} , 
 	{ "name": "input_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_29", "role": "address0" }} , 
 	{ "name": "input_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_29", "role": "ce0" }} , 
 	{ "name": "input_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_29", "role": "q0" }} , 
 	{ "name": "input_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_30", "role": "address0" }} , 
 	{ "name": "input_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_30", "role": "ce0" }} , 
 	{ "name": "input_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_30", "role": "q0" }} , 
 	{ "name": "input_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_31", "role": "address0" }} , 
 	{ "name": "input_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_31", "role": "ce0" }} , 
 	{ "name": "input_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_31", "role": "q0" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "q0" }} , 
 	{ "name": "grp_fu_3337_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3337_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3337_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3337_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3337_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3337_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3337_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3337_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3337_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3337_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3341_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3341_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3341_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3341_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3341_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3341_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3341_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3341_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4439_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4439_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4439_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4439_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4439_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_4439_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4439_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4439_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4439_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4439_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "dense_relu_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "205889", "EstimateLatencyMax" : "205889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "layer_9_weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer_9_bias", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_9_weights_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_9_bias_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3264_32_1_1_U1163", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dense_relu_2 {
		input_0 {Type I LastRead 3 FirstWrite -1}
		input_1 {Type I LastRead 3 FirstWrite -1}
		input_2 {Type I LastRead 3 FirstWrite -1}
		input_3 {Type I LastRead 3 FirstWrite -1}
		input_4 {Type I LastRead 3 FirstWrite -1}
		input_5 {Type I LastRead 3 FirstWrite -1}
		input_6 {Type I LastRead 3 FirstWrite -1}
		input_7 {Type I LastRead 3 FirstWrite -1}
		input_8 {Type I LastRead 3 FirstWrite -1}
		input_9 {Type I LastRead 3 FirstWrite -1}
		input_10 {Type I LastRead 3 FirstWrite -1}
		input_11 {Type I LastRead 3 FirstWrite -1}
		input_12 {Type I LastRead 3 FirstWrite -1}
		input_13 {Type I LastRead 3 FirstWrite -1}
		input_14 {Type I LastRead 3 FirstWrite -1}
		input_15 {Type I LastRead 3 FirstWrite -1}
		input_16 {Type I LastRead 3 FirstWrite -1}
		input_17 {Type I LastRead 3 FirstWrite -1}
		input_18 {Type I LastRead 3 FirstWrite -1}
		input_19 {Type I LastRead 3 FirstWrite -1}
		input_20 {Type I LastRead 3 FirstWrite -1}
		input_21 {Type I LastRead 3 FirstWrite -1}
		input_22 {Type I LastRead 3 FirstWrite -1}
		input_23 {Type I LastRead 3 FirstWrite -1}
		input_24 {Type I LastRead 3 FirstWrite -1}
		input_25 {Type I LastRead 3 FirstWrite -1}
		input_26 {Type I LastRead 3 FirstWrite -1}
		input_27 {Type I LastRead 3 FirstWrite -1}
		input_28 {Type I LastRead 3 FirstWrite -1}
		input_29 {Type I LastRead 3 FirstWrite -1}
		input_30 {Type I LastRead 3 FirstWrite -1}
		input_31 {Type I LastRead 3 FirstWrite -1}
		output_r {Type IO LastRead 1 FirstWrite 11}
		layer_9_weights {Type I LastRead -1 FirstWrite -1}
		layer_9_bias {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "205889", "Max" : "205889"}
	, {"Name" : "Interval", "Min" : "205889", "Max" : "205889"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_0 { ap_memory {  { input_0_address0 mem_address 1 5 }  { input_0_ce0 mem_ce 1 1 }  { input_0_q0 mem_dout 0 32 } } }
	input_1 { ap_memory {  { input_1_address0 mem_address 1 5 }  { input_1_ce0 mem_ce 1 1 }  { input_1_q0 mem_dout 0 32 } } }
	input_2 { ap_memory {  { input_2_address0 mem_address 1 5 }  { input_2_ce0 mem_ce 1 1 }  { input_2_q0 mem_dout 0 32 } } }
	input_3 { ap_memory {  { input_3_address0 mem_address 1 5 }  { input_3_ce0 mem_ce 1 1 }  { input_3_q0 mem_dout 0 32 } } }
	input_4 { ap_memory {  { input_4_address0 mem_address 1 5 }  { input_4_ce0 mem_ce 1 1 }  { input_4_q0 mem_dout 0 32 } } }
	input_5 { ap_memory {  { input_5_address0 mem_address 1 5 }  { input_5_ce0 mem_ce 1 1 }  { input_5_q0 mem_dout 0 32 } } }
	input_6 { ap_memory {  { input_6_address0 mem_address 1 5 }  { input_6_ce0 mem_ce 1 1 }  { input_6_q0 mem_dout 0 32 } } }
	input_7 { ap_memory {  { input_7_address0 mem_address 1 5 }  { input_7_ce0 mem_ce 1 1 }  { input_7_q0 mem_dout 0 32 } } }
	input_8 { ap_memory {  { input_8_address0 mem_address 1 5 }  { input_8_ce0 mem_ce 1 1 }  { input_8_q0 mem_dout 0 32 } } }
	input_9 { ap_memory {  { input_9_address0 mem_address 1 5 }  { input_9_ce0 mem_ce 1 1 }  { input_9_q0 mem_dout 0 32 } } }
	input_10 { ap_memory {  { input_10_address0 mem_address 1 5 }  { input_10_ce0 mem_ce 1 1 }  { input_10_q0 mem_dout 0 32 } } }
	input_11 { ap_memory {  { input_11_address0 mem_address 1 5 }  { input_11_ce0 mem_ce 1 1 }  { input_11_q0 mem_dout 0 32 } } }
	input_12 { ap_memory {  { input_12_address0 mem_address 1 5 }  { input_12_ce0 mem_ce 1 1 }  { input_12_q0 mem_dout 0 32 } } }
	input_13 { ap_memory {  { input_13_address0 mem_address 1 5 }  { input_13_ce0 mem_ce 1 1 }  { input_13_q0 mem_dout 0 32 } } }
	input_14 { ap_memory {  { input_14_address0 mem_address 1 5 }  { input_14_ce0 mem_ce 1 1 }  { input_14_q0 mem_dout 0 32 } } }
	input_15 { ap_memory {  { input_15_address0 mem_address 1 5 }  { input_15_ce0 mem_ce 1 1 }  { input_15_q0 mem_dout 0 32 } } }
	input_16 { ap_memory {  { input_16_address0 mem_address 1 5 }  { input_16_ce0 mem_ce 1 1 }  { input_16_q0 mem_dout 0 32 } } }
	input_17 { ap_memory {  { input_17_address0 mem_address 1 5 }  { input_17_ce0 mem_ce 1 1 }  { input_17_q0 mem_dout 0 32 } } }
	input_18 { ap_memory {  { input_18_address0 mem_address 1 5 }  { input_18_ce0 mem_ce 1 1 }  { input_18_q0 mem_dout 0 32 } } }
	input_19 { ap_memory {  { input_19_address0 mem_address 1 5 }  { input_19_ce0 mem_ce 1 1 }  { input_19_q0 mem_dout 0 32 } } }
	input_20 { ap_memory {  { input_20_address0 mem_address 1 5 }  { input_20_ce0 mem_ce 1 1 }  { input_20_q0 mem_dout 0 32 } } }
	input_21 { ap_memory {  { input_21_address0 mem_address 1 5 }  { input_21_ce0 mem_ce 1 1 }  { input_21_q0 mem_dout 0 32 } } }
	input_22 { ap_memory {  { input_22_address0 mem_address 1 5 }  { input_22_ce0 mem_ce 1 1 }  { input_22_q0 mem_dout 0 32 } } }
	input_23 { ap_memory {  { input_23_address0 mem_address 1 5 }  { input_23_ce0 mem_ce 1 1 }  { input_23_q0 mem_dout 0 32 } } }
	input_24 { ap_memory {  { input_24_address0 mem_address 1 5 }  { input_24_ce0 mem_ce 1 1 }  { input_24_q0 mem_dout 0 32 } } }
	input_25 { ap_memory {  { input_25_address0 mem_address 1 5 }  { input_25_ce0 mem_ce 1 1 }  { input_25_q0 mem_dout 0 32 } } }
	input_26 { ap_memory {  { input_26_address0 mem_address 1 5 }  { input_26_ce0 mem_ce 1 1 }  { input_26_q0 mem_dout 0 32 } } }
	input_27 { ap_memory {  { input_27_address0 mem_address 1 5 }  { input_27_ce0 mem_ce 1 1 }  { input_27_q0 mem_dout 0 32 } } }
	input_28 { ap_memory {  { input_28_address0 mem_address 1 5 }  { input_28_ce0 mem_ce 1 1 }  { input_28_q0 mem_dout 0 32 } } }
	input_29 { ap_memory {  { input_29_address0 mem_address 1 5 }  { input_29_ce0 mem_ce 1 1 }  { input_29_q0 mem_dout 0 32 } } }
	input_30 { ap_memory {  { input_30_address0 mem_address 1 5 }  { input_30_ce0 mem_ce 1 1 }  { input_30_q0 mem_dout 0 32 } } }
	input_31 { ap_memory {  { input_31_address0 mem_address 1 5 }  { input_31_ce0 mem_ce 1 1 }  { input_31_q0 mem_dout 0 32 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 6 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 32 }  { output_r_q0 mem_dout 0 32 } } }
}
