set moduleName conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3_unsigned_short_3_unsigned_short_32_unsigned_short_32_unsigned_short_32_unsigned_short_58_unsigned_short_58_unsigned_short_32_s
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
set C_modelName {conv2d<(unsigned short)29, (unsigned short)29, (unsigned short)32, (unsigned short)3, (unsigned short)3, (unsigned short)32, (unsigned short)32, (unsigned short)32, (unsigned short)58, (unsigned short)58, (unsigned short)32>}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_dim1 uint 5 regular  }
	{ in_dim2 uint 5 regular  }
	{ weights_0 int 16 regular {array 288 { 1 } 1 1 }  }
	{ weights_1 int 16 regular {array 288 { 1 } 1 1 }  }
	{ weights_2 int 17 regular {array 288 { 1 } 1 1 }  }
	{ weights_3 int 16 regular {array 288 { 1 } 1 1 }  }
	{ weights_4 int 14 regular {array 288 { 1 } 1 1 }  }
	{ weights_5 int 14 regular {array 288 { 1 } 1 1 }  }
	{ weights_6 int 16 regular {array 288 { 1 } 1 1 }  }
	{ weights_7 int 16 regular {array 288 { 1 } 1 1 }  }
	{ weights_8 int 14 regular {array 288 { 1 } 1 1 }  }
	{ weights_9 int 16 regular {array 288 { 1 } 1 1 }  }
	{ weights_10 int 14 regular {array 288 { 1 } 1 1 }  }
	{ weights_11 int 14 regular {array 288 { 1 } 1 1 }  }
	{ weights_12 int 16 regular {array 288 { 1 } 1 1 }  }
	{ weights_13 int 16 regular {array 288 { 1 } 1 1 }  }
	{ weights_14 int 14 regular {array 288 { 1 } 1 1 }  }
	{ weights_15 int 16 regular {array 288 { 1 } 1 1 }  }
	{ weights_16 int 15 regular {array 288 { 1 } 1 1 }  }
	{ weights_17 int 16 regular {array 288 { 1 } 1 1 }  }
	{ weights_18 int 14 regular {array 288 { 1 } 1 1 }  }
	{ weights_19 int 16 regular {array 288 { 1 } 1 1 }  }
	{ weights_20 int 16 regular {array 288 { 1 } 1 1 }  }
	{ weights_21 int 14 regular {array 288 { 1 } 1 1 }  }
	{ weights_22 int 17 regular {array 288 { 1 } 1 1 }  }
	{ weights_23 int 17 regular {array 288 { 1 } 1 1 }  }
	{ weights_24 int 17 regular {array 288 { 1 } 1 1 }  }
	{ weights_25 int 16 regular {array 288 { 1 } 1 1 }  }
	{ weights_26 int 17 regular {array 288 { 1 } 1 1 }  }
	{ weights_27 int 16 regular {array 288 { 1 } 1 1 }  }
	{ weights_28 int 14 regular {array 288 { 1 } 1 1 }  }
	{ weights_29 int 14 regular {array 288 { 1 } 1 1 }  }
	{ weights_30 int 14 regular {array 288 { 1 } 1 1 }  }
	{ weights_31 int 14 regular {array 288 { 1 } 1 1 }  }
	{ bias int 14 regular {array 32 { 1 } 1 1 }  }
	{ max_pooling_output_V int 21 regular {array 26912 { 1 3 } 1 1 } {global 0}  }
	{ convolution_output_V_0 int 21 regular {array 53824 { 0 3 } 0 1 } {global 1}  }
	{ convolution_output_V_1 int 21 regular {array 53824 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_dim1", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "in_dim2", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "weights_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_2", "interface" : "memory", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "weights_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_4", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "weights_5", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "weights_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_8", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "weights_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_10", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "weights_11", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "weights_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_14", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "weights_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_16", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "weights_17", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_18", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "weights_19", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_20", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_21", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "weights_22", "interface" : "memory", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "weights_23", "interface" : "memory", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "weights_24", "interface" : "memory", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "weights_25", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_26", "interface" : "memory", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "weights_27", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_28", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "weights_29", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "weights_30", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "weights_31", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "bias", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "max_pooling_output_V", "interface" : "memory", "bitwidth" : 21, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "convolution_output_V_0", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "convolution_output_V_1", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 118
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_dim1 sc_in sc_lv 5 signal 0 } 
	{ in_dim2 sc_in sc_lv 5 signal 1 } 
	{ weights_0_address0 sc_out sc_lv 9 signal 2 } 
	{ weights_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ weights_0_q0 sc_in sc_lv 16 signal 2 } 
	{ weights_1_address0 sc_out sc_lv 9 signal 3 } 
	{ weights_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ weights_1_q0 sc_in sc_lv 16 signal 3 } 
	{ weights_2_address0 sc_out sc_lv 9 signal 4 } 
	{ weights_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ weights_2_q0 sc_in sc_lv 17 signal 4 } 
	{ weights_3_address0 sc_out sc_lv 9 signal 5 } 
	{ weights_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ weights_3_q0 sc_in sc_lv 16 signal 5 } 
	{ weights_4_address0 sc_out sc_lv 9 signal 6 } 
	{ weights_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ weights_4_q0 sc_in sc_lv 14 signal 6 } 
	{ weights_5_address0 sc_out sc_lv 9 signal 7 } 
	{ weights_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ weights_5_q0 sc_in sc_lv 14 signal 7 } 
	{ weights_6_address0 sc_out sc_lv 9 signal 8 } 
	{ weights_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ weights_6_q0 sc_in sc_lv 16 signal 8 } 
	{ weights_7_address0 sc_out sc_lv 9 signal 9 } 
	{ weights_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ weights_7_q0 sc_in sc_lv 16 signal 9 } 
	{ weights_8_address0 sc_out sc_lv 9 signal 10 } 
	{ weights_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ weights_8_q0 sc_in sc_lv 14 signal 10 } 
	{ weights_9_address0 sc_out sc_lv 9 signal 11 } 
	{ weights_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ weights_9_q0 sc_in sc_lv 16 signal 11 } 
	{ weights_10_address0 sc_out sc_lv 9 signal 12 } 
	{ weights_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ weights_10_q0 sc_in sc_lv 14 signal 12 } 
	{ weights_11_address0 sc_out sc_lv 9 signal 13 } 
	{ weights_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ weights_11_q0 sc_in sc_lv 14 signal 13 } 
	{ weights_12_address0 sc_out sc_lv 9 signal 14 } 
	{ weights_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ weights_12_q0 sc_in sc_lv 16 signal 14 } 
	{ weights_13_address0 sc_out sc_lv 9 signal 15 } 
	{ weights_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ weights_13_q0 sc_in sc_lv 16 signal 15 } 
	{ weights_14_address0 sc_out sc_lv 9 signal 16 } 
	{ weights_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ weights_14_q0 sc_in sc_lv 14 signal 16 } 
	{ weights_15_address0 sc_out sc_lv 9 signal 17 } 
	{ weights_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ weights_15_q0 sc_in sc_lv 16 signal 17 } 
	{ weights_16_address0 sc_out sc_lv 9 signal 18 } 
	{ weights_16_ce0 sc_out sc_logic 1 signal 18 } 
	{ weights_16_q0 sc_in sc_lv 15 signal 18 } 
	{ weights_17_address0 sc_out sc_lv 9 signal 19 } 
	{ weights_17_ce0 sc_out sc_logic 1 signal 19 } 
	{ weights_17_q0 sc_in sc_lv 16 signal 19 } 
	{ weights_18_address0 sc_out sc_lv 9 signal 20 } 
	{ weights_18_ce0 sc_out sc_logic 1 signal 20 } 
	{ weights_18_q0 sc_in sc_lv 14 signal 20 } 
	{ weights_19_address0 sc_out sc_lv 9 signal 21 } 
	{ weights_19_ce0 sc_out sc_logic 1 signal 21 } 
	{ weights_19_q0 sc_in sc_lv 16 signal 21 } 
	{ weights_20_address0 sc_out sc_lv 9 signal 22 } 
	{ weights_20_ce0 sc_out sc_logic 1 signal 22 } 
	{ weights_20_q0 sc_in sc_lv 16 signal 22 } 
	{ weights_21_address0 sc_out sc_lv 9 signal 23 } 
	{ weights_21_ce0 sc_out sc_logic 1 signal 23 } 
	{ weights_21_q0 sc_in sc_lv 14 signal 23 } 
	{ weights_22_address0 sc_out sc_lv 9 signal 24 } 
	{ weights_22_ce0 sc_out sc_logic 1 signal 24 } 
	{ weights_22_q0 sc_in sc_lv 17 signal 24 } 
	{ weights_23_address0 sc_out sc_lv 9 signal 25 } 
	{ weights_23_ce0 sc_out sc_logic 1 signal 25 } 
	{ weights_23_q0 sc_in sc_lv 17 signal 25 } 
	{ weights_24_address0 sc_out sc_lv 9 signal 26 } 
	{ weights_24_ce0 sc_out sc_logic 1 signal 26 } 
	{ weights_24_q0 sc_in sc_lv 17 signal 26 } 
	{ weights_25_address0 sc_out sc_lv 9 signal 27 } 
	{ weights_25_ce0 sc_out sc_logic 1 signal 27 } 
	{ weights_25_q0 sc_in sc_lv 16 signal 27 } 
	{ weights_26_address0 sc_out sc_lv 9 signal 28 } 
	{ weights_26_ce0 sc_out sc_logic 1 signal 28 } 
	{ weights_26_q0 sc_in sc_lv 17 signal 28 } 
	{ weights_27_address0 sc_out sc_lv 9 signal 29 } 
	{ weights_27_ce0 sc_out sc_logic 1 signal 29 } 
	{ weights_27_q0 sc_in sc_lv 16 signal 29 } 
	{ weights_28_address0 sc_out sc_lv 9 signal 30 } 
	{ weights_28_ce0 sc_out sc_logic 1 signal 30 } 
	{ weights_28_q0 sc_in sc_lv 14 signal 30 } 
	{ weights_29_address0 sc_out sc_lv 9 signal 31 } 
	{ weights_29_ce0 sc_out sc_logic 1 signal 31 } 
	{ weights_29_q0 sc_in sc_lv 14 signal 31 } 
	{ weights_30_address0 sc_out sc_lv 9 signal 32 } 
	{ weights_30_ce0 sc_out sc_logic 1 signal 32 } 
	{ weights_30_q0 sc_in sc_lv 14 signal 32 } 
	{ weights_31_address0 sc_out sc_lv 9 signal 33 } 
	{ weights_31_ce0 sc_out sc_logic 1 signal 33 } 
	{ weights_31_q0 sc_in sc_lv 14 signal 33 } 
	{ bias_address0 sc_out sc_lv 5 signal 34 } 
	{ bias_ce0 sc_out sc_logic 1 signal 34 } 
	{ bias_q0 sc_in sc_lv 14 signal 34 } 
	{ max_pooling_output_V_address0 sc_out sc_lv 15 signal 35 } 
	{ max_pooling_output_V_ce0 sc_out sc_logic 1 signal 35 } 
	{ max_pooling_output_V_q0 sc_in sc_lv 21 signal 35 } 
	{ convolution_output_V_0_address0 sc_out sc_lv 16 signal 36 } 
	{ convolution_output_V_0_ce0 sc_out sc_logic 1 signal 36 } 
	{ convolution_output_V_0_we0 sc_out sc_logic 1 signal 36 } 
	{ convolution_output_V_0_d0 sc_out sc_lv 21 signal 36 } 
	{ convolution_output_V_1_address0 sc_out sc_lv 16 signal 37 } 
	{ convolution_output_V_1_ce0 sc_out sc_logic 1 signal 37 } 
	{ convolution_output_V_1_we0 sc_out sc_logic 1 signal 37 } 
	{ convolution_output_V_1_d0 sc_out sc_lv 21 signal 37 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_dim1", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_dim1", "role": "default" }} , 
 	{ "name": "in_dim2", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_dim2", "role": "default" }} , 
 	{ "name": "weights_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_0", "role": "address0" }} , 
 	{ "name": "weights_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_0", "role": "ce0" }} , 
 	{ "name": "weights_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_0", "role": "q0" }} , 
 	{ "name": "weights_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_1", "role": "address0" }} , 
 	{ "name": "weights_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_1", "role": "ce0" }} , 
 	{ "name": "weights_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_1", "role": "q0" }} , 
 	{ "name": "weights_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_2", "role": "address0" }} , 
 	{ "name": "weights_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_2", "role": "ce0" }} , 
 	{ "name": "weights_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "weights_2", "role": "q0" }} , 
 	{ "name": "weights_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_3", "role": "address0" }} , 
 	{ "name": "weights_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_3", "role": "ce0" }} , 
 	{ "name": "weights_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_3", "role": "q0" }} , 
 	{ "name": "weights_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_4", "role": "address0" }} , 
 	{ "name": "weights_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_4", "role": "ce0" }} , 
 	{ "name": "weights_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "weights_4", "role": "q0" }} , 
 	{ "name": "weights_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_5", "role": "address0" }} , 
 	{ "name": "weights_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_5", "role": "ce0" }} , 
 	{ "name": "weights_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "weights_5", "role": "q0" }} , 
 	{ "name": "weights_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_6", "role": "address0" }} , 
 	{ "name": "weights_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_6", "role": "ce0" }} , 
 	{ "name": "weights_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_6", "role": "q0" }} , 
 	{ "name": "weights_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_7", "role": "address0" }} , 
 	{ "name": "weights_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_7", "role": "ce0" }} , 
 	{ "name": "weights_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_7", "role": "q0" }} , 
 	{ "name": "weights_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_8", "role": "address0" }} , 
 	{ "name": "weights_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_8", "role": "ce0" }} , 
 	{ "name": "weights_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "weights_8", "role": "q0" }} , 
 	{ "name": "weights_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_9", "role": "address0" }} , 
 	{ "name": "weights_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_9", "role": "ce0" }} , 
 	{ "name": "weights_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_9", "role": "q0" }} , 
 	{ "name": "weights_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_10", "role": "address0" }} , 
 	{ "name": "weights_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_10", "role": "ce0" }} , 
 	{ "name": "weights_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "weights_10", "role": "q0" }} , 
 	{ "name": "weights_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_11", "role": "address0" }} , 
 	{ "name": "weights_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_11", "role": "ce0" }} , 
 	{ "name": "weights_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "weights_11", "role": "q0" }} , 
 	{ "name": "weights_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_12", "role": "address0" }} , 
 	{ "name": "weights_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_12", "role": "ce0" }} , 
 	{ "name": "weights_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_12", "role": "q0" }} , 
 	{ "name": "weights_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_13", "role": "address0" }} , 
 	{ "name": "weights_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_13", "role": "ce0" }} , 
 	{ "name": "weights_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_13", "role": "q0" }} , 
 	{ "name": "weights_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_14", "role": "address0" }} , 
 	{ "name": "weights_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_14", "role": "ce0" }} , 
 	{ "name": "weights_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "weights_14", "role": "q0" }} , 
 	{ "name": "weights_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_15", "role": "address0" }} , 
 	{ "name": "weights_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_15", "role": "ce0" }} , 
 	{ "name": "weights_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_15", "role": "q0" }} , 
 	{ "name": "weights_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_16", "role": "address0" }} , 
 	{ "name": "weights_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_16", "role": "ce0" }} , 
 	{ "name": "weights_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "weights_16", "role": "q0" }} , 
 	{ "name": "weights_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_17", "role": "address0" }} , 
 	{ "name": "weights_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_17", "role": "ce0" }} , 
 	{ "name": "weights_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_17", "role": "q0" }} , 
 	{ "name": "weights_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_18", "role": "address0" }} , 
 	{ "name": "weights_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_18", "role": "ce0" }} , 
 	{ "name": "weights_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "weights_18", "role": "q0" }} , 
 	{ "name": "weights_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_19", "role": "address0" }} , 
 	{ "name": "weights_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_19", "role": "ce0" }} , 
 	{ "name": "weights_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_19", "role": "q0" }} , 
 	{ "name": "weights_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_20", "role": "address0" }} , 
 	{ "name": "weights_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_20", "role": "ce0" }} , 
 	{ "name": "weights_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_20", "role": "q0" }} , 
 	{ "name": "weights_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_21", "role": "address0" }} , 
 	{ "name": "weights_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_21", "role": "ce0" }} , 
 	{ "name": "weights_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "weights_21", "role": "q0" }} , 
 	{ "name": "weights_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_22", "role": "address0" }} , 
 	{ "name": "weights_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_22", "role": "ce0" }} , 
 	{ "name": "weights_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "weights_22", "role": "q0" }} , 
 	{ "name": "weights_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_23", "role": "address0" }} , 
 	{ "name": "weights_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_23", "role": "ce0" }} , 
 	{ "name": "weights_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "weights_23", "role": "q0" }} , 
 	{ "name": "weights_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_24", "role": "address0" }} , 
 	{ "name": "weights_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_24", "role": "ce0" }} , 
 	{ "name": "weights_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "weights_24", "role": "q0" }} , 
 	{ "name": "weights_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_25", "role": "address0" }} , 
 	{ "name": "weights_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_25", "role": "ce0" }} , 
 	{ "name": "weights_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_25", "role": "q0" }} , 
 	{ "name": "weights_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_26", "role": "address0" }} , 
 	{ "name": "weights_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_26", "role": "ce0" }} , 
 	{ "name": "weights_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "weights_26", "role": "q0" }} , 
 	{ "name": "weights_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_27", "role": "address0" }} , 
 	{ "name": "weights_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_27", "role": "ce0" }} , 
 	{ "name": "weights_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_27", "role": "q0" }} , 
 	{ "name": "weights_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_28", "role": "address0" }} , 
 	{ "name": "weights_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_28", "role": "ce0" }} , 
 	{ "name": "weights_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "weights_28", "role": "q0" }} , 
 	{ "name": "weights_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_29", "role": "address0" }} , 
 	{ "name": "weights_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_29", "role": "ce0" }} , 
 	{ "name": "weights_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "weights_29", "role": "q0" }} , 
 	{ "name": "weights_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_30", "role": "address0" }} , 
 	{ "name": "weights_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_30", "role": "ce0" }} , 
 	{ "name": "weights_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "weights_30", "role": "q0" }} , 
 	{ "name": "weights_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_31", "role": "address0" }} , 
 	{ "name": "weights_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_31", "role": "ce0" }} , 
 	{ "name": "weights_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "weights_31", "role": "q0" }} , 
 	{ "name": "bias_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bias", "role": "address0" }} , 
 	{ "name": "bias_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "ce0" }} , 
 	{ "name": "bias_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bias", "role": "q0" }} , 
 	{ "name": "max_pooling_output_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "max_pooling_output_V", "role": "address0" }} , 
 	{ "name": "max_pooling_output_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_pooling_output_V", "role": "ce0" }} , 
 	{ "name": "max_pooling_output_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "max_pooling_output_V", "role": "q0" }} , 
 	{ "name": "convolution_output_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "convolution_output_V_0", "role": "address0" }} , 
 	{ "name": "convolution_output_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convolution_output_V_0", "role": "ce0" }} , 
 	{ "name": "convolution_output_V_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convolution_output_V_0", "role": "we0" }} , 
 	{ "name": "convolution_output_V_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "convolution_output_V_0", "role": "d0" }} , 
 	{ "name": "convolution_output_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "convolution_output_V_1", "role": "address0" }} , 
 	{ "name": "convolution_output_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convolution_output_V_1", "role": "ce0" }} , 
 	{ "name": "convolution_output_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convolution_output_V_1", "role": "we0" }} , 
 	{ "name": "convolution_output_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "convolution_output_V_1", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3_unsigned_short_3_unsigned_short_32_unsigned_short_32_unsigned_short_32_unsigned_short_58_unsigned_short_58_unsigned_short_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "44287", "EstimateLatencyMax" : "266815",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_dim1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_dim2", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "max_pooling_output_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "convolution_output_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "convolution_output_V_1", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_5ns_5ns_10_1_1_U12", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_5ns_6ns_10_1_1_U13", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_21_1_1_U14", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_5ns_6ns_5ns_10_4_1_U15", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_21s_37ns_37_4_1_U16", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_21s_37ns_37_4_1_U17", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_17s_21s_37ns_37_4_1_U18", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_21s_37ns_37_4_1_U19", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_14s_21s_37ns_37_4_1_U20", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_14s_21s_37ns_37_4_1_U21", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_21s_37ns_37_4_1_U22", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_21s_37ns_37_4_1_U23", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_14s_21s_37ns_37_4_1_U24", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_21s_37ns_37_4_1_U25", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_14s_21s_37ns_37_4_1_U26", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_14s_21s_37ns_37_4_1_U27", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_21s_37ns_37_4_1_U28", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_21s_37ns_37_4_1_U29", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_14s_21s_37ns_37_4_1_U30", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_21s_37ns_37_4_1_U31", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_15s_21s_37ns_37_4_1_U32", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_21s_37ns_37_4_1_U33", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_14s_21s_37ns_37_4_1_U34", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_21s_37ns_37_4_1_U35", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_21s_37ns_37_4_1_U36", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_14s_21s_37ns_37_4_1_U37", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_17s_21s_37ns_37_4_1_U38", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_17s_21s_37ns_37_4_1_U39", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_17s_21s_37ns_37_4_1_U40", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_21s_37ns_37_4_1_U41", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_17s_21s_37ns_37_4_1_U42", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_21s_37ns_37_4_1_U43", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_14s_21s_37ns_37_4_1_U44", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_14s_21s_37ns_37_4_1_U45", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_14s_21s_37ns_37_4_1_U46", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_14s_21s_37ns_37_4_1_U47", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3_unsigned_short_3_unsigned_short_32_unsigned_short_32_unsigned_short_32_unsigned_short_58_unsigned_short_58_unsigned_short_32_s {
		in_dim1 {Type I LastRead 0 FirstWrite -1}
		in_dim2 {Type I LastRead 0 FirstWrite -1}
		weights_0 {Type I LastRead 8 FirstWrite -1}
		weights_1 {Type I LastRead 8 FirstWrite -1}
		weights_2 {Type I LastRead 8 FirstWrite -1}
		weights_3 {Type I LastRead 8 FirstWrite -1}
		weights_4 {Type I LastRead 8 FirstWrite -1}
		weights_5 {Type I LastRead 8 FirstWrite -1}
		weights_6 {Type I LastRead 8 FirstWrite -1}
		weights_7 {Type I LastRead 8 FirstWrite -1}
		weights_8 {Type I LastRead 8 FirstWrite -1}
		weights_9 {Type I LastRead 8 FirstWrite -1}
		weights_10 {Type I LastRead 8 FirstWrite -1}
		weights_11 {Type I LastRead 8 FirstWrite -1}
		weights_12 {Type I LastRead 8 FirstWrite -1}
		weights_13 {Type I LastRead 8 FirstWrite -1}
		weights_14 {Type I LastRead 8 FirstWrite -1}
		weights_15 {Type I LastRead 8 FirstWrite -1}
		weights_16 {Type I LastRead 8 FirstWrite -1}
		weights_17 {Type I LastRead 8 FirstWrite -1}
		weights_18 {Type I LastRead 8 FirstWrite -1}
		weights_19 {Type I LastRead 8 FirstWrite -1}
		weights_20 {Type I LastRead 8 FirstWrite -1}
		weights_21 {Type I LastRead 8 FirstWrite -1}
		weights_22 {Type I LastRead 8 FirstWrite -1}
		weights_23 {Type I LastRead 8 FirstWrite -1}
		weights_24 {Type I LastRead 8 FirstWrite -1}
		weights_25 {Type I LastRead 8 FirstWrite -1}
		weights_26 {Type I LastRead 8 FirstWrite -1}
		weights_27 {Type I LastRead 8 FirstWrite -1}
		weights_28 {Type I LastRead 8 FirstWrite -1}
		weights_29 {Type I LastRead 8 FirstWrite -1}
		weights_30 {Type I LastRead 8 FirstWrite -1}
		weights_31 {Type I LastRead 8 FirstWrite -1}
		bias {Type I LastRead 2 FirstWrite -1}
		max_pooling_output_V {Type I LastRead 8 FirstWrite -1}
		convolution_output_V_0 {Type O LastRead -1 FirstWrite 13}
		convolution_output_V_1 {Type O LastRead -1 FirstWrite 13}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "44287", "Max" : "266815"}
	, {"Name" : "Interval", "Min" : "44287", "Max" : "266815"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	in_dim1 { ap_none {  { in_dim1 in_data 0 5 } } }
	in_dim2 { ap_none {  { in_dim2 in_data 0 5 } } }
	weights_0 { ap_memory {  { weights_0_address0 mem_address 1 9 }  { weights_0_ce0 mem_ce 1 1 }  { weights_0_q0 mem_dout 0 16 } } }
	weights_1 { ap_memory {  { weights_1_address0 mem_address 1 9 }  { weights_1_ce0 mem_ce 1 1 }  { weights_1_q0 mem_dout 0 16 } } }
	weights_2 { ap_memory {  { weights_2_address0 mem_address 1 9 }  { weights_2_ce0 mem_ce 1 1 }  { weights_2_q0 mem_dout 0 17 } } }
	weights_3 { ap_memory {  { weights_3_address0 mem_address 1 9 }  { weights_3_ce0 mem_ce 1 1 }  { weights_3_q0 mem_dout 0 16 } } }
	weights_4 { ap_memory {  { weights_4_address0 mem_address 1 9 }  { weights_4_ce0 mem_ce 1 1 }  { weights_4_q0 mem_dout 0 14 } } }
	weights_5 { ap_memory {  { weights_5_address0 mem_address 1 9 }  { weights_5_ce0 mem_ce 1 1 }  { weights_5_q0 mem_dout 0 14 } } }
	weights_6 { ap_memory {  { weights_6_address0 mem_address 1 9 }  { weights_6_ce0 mem_ce 1 1 }  { weights_6_q0 mem_dout 0 16 } } }
	weights_7 { ap_memory {  { weights_7_address0 mem_address 1 9 }  { weights_7_ce0 mem_ce 1 1 }  { weights_7_q0 mem_dout 0 16 } } }
	weights_8 { ap_memory {  { weights_8_address0 mem_address 1 9 }  { weights_8_ce0 mem_ce 1 1 }  { weights_8_q0 mem_dout 0 14 } } }
	weights_9 { ap_memory {  { weights_9_address0 mem_address 1 9 }  { weights_9_ce0 mem_ce 1 1 }  { weights_9_q0 mem_dout 0 16 } } }
	weights_10 { ap_memory {  { weights_10_address0 mem_address 1 9 }  { weights_10_ce0 mem_ce 1 1 }  { weights_10_q0 mem_dout 0 14 } } }
	weights_11 { ap_memory {  { weights_11_address0 mem_address 1 9 }  { weights_11_ce0 mem_ce 1 1 }  { weights_11_q0 mem_dout 0 14 } } }
	weights_12 { ap_memory {  { weights_12_address0 mem_address 1 9 }  { weights_12_ce0 mem_ce 1 1 }  { weights_12_q0 mem_dout 0 16 } } }
	weights_13 { ap_memory {  { weights_13_address0 mem_address 1 9 }  { weights_13_ce0 mem_ce 1 1 }  { weights_13_q0 mem_dout 0 16 } } }
	weights_14 { ap_memory {  { weights_14_address0 mem_address 1 9 }  { weights_14_ce0 mem_ce 1 1 }  { weights_14_q0 mem_dout 0 14 } } }
	weights_15 { ap_memory {  { weights_15_address0 mem_address 1 9 }  { weights_15_ce0 mem_ce 1 1 }  { weights_15_q0 mem_dout 0 16 } } }
	weights_16 { ap_memory {  { weights_16_address0 mem_address 1 9 }  { weights_16_ce0 mem_ce 1 1 }  { weights_16_q0 mem_dout 0 15 } } }
	weights_17 { ap_memory {  { weights_17_address0 mem_address 1 9 }  { weights_17_ce0 mem_ce 1 1 }  { weights_17_q0 mem_dout 0 16 } } }
	weights_18 { ap_memory {  { weights_18_address0 mem_address 1 9 }  { weights_18_ce0 mem_ce 1 1 }  { weights_18_q0 mem_dout 0 14 } } }
	weights_19 { ap_memory {  { weights_19_address0 mem_address 1 9 }  { weights_19_ce0 mem_ce 1 1 }  { weights_19_q0 mem_dout 0 16 } } }
	weights_20 { ap_memory {  { weights_20_address0 mem_address 1 9 }  { weights_20_ce0 mem_ce 1 1 }  { weights_20_q0 mem_dout 0 16 } } }
	weights_21 { ap_memory {  { weights_21_address0 mem_address 1 9 }  { weights_21_ce0 mem_ce 1 1 }  { weights_21_q0 mem_dout 0 14 } } }
	weights_22 { ap_memory {  { weights_22_address0 mem_address 1 9 }  { weights_22_ce0 mem_ce 1 1 }  { weights_22_q0 mem_dout 0 17 } } }
	weights_23 { ap_memory {  { weights_23_address0 mem_address 1 9 }  { weights_23_ce0 mem_ce 1 1 }  { weights_23_q0 mem_dout 0 17 } } }
	weights_24 { ap_memory {  { weights_24_address0 mem_address 1 9 }  { weights_24_ce0 mem_ce 1 1 }  { weights_24_q0 mem_dout 0 17 } } }
	weights_25 { ap_memory {  { weights_25_address0 mem_address 1 9 }  { weights_25_ce0 mem_ce 1 1 }  { weights_25_q0 mem_dout 0 16 } } }
	weights_26 { ap_memory {  { weights_26_address0 mem_address 1 9 }  { weights_26_ce0 mem_ce 1 1 }  { weights_26_q0 mem_dout 0 17 } } }
	weights_27 { ap_memory {  { weights_27_address0 mem_address 1 9 }  { weights_27_ce0 mem_ce 1 1 }  { weights_27_q0 mem_dout 0 16 } } }
	weights_28 { ap_memory {  { weights_28_address0 mem_address 1 9 }  { weights_28_ce0 mem_ce 1 1 }  { weights_28_q0 mem_dout 0 14 } } }
	weights_29 { ap_memory {  { weights_29_address0 mem_address 1 9 }  { weights_29_ce0 mem_ce 1 1 }  { weights_29_q0 mem_dout 0 14 } } }
	weights_30 { ap_memory {  { weights_30_address0 mem_address 1 9 }  { weights_30_ce0 mem_ce 1 1 }  { weights_30_q0 mem_dout 0 14 } } }
	weights_31 { ap_memory {  { weights_31_address0 mem_address 1 9 }  { weights_31_ce0 mem_ce 1 1 }  { weights_31_q0 mem_dout 0 14 } } }
	bias { ap_memory {  { bias_address0 mem_address 1 5 }  { bias_ce0 mem_ce 1 1 }  { bias_q0 mem_dout 0 14 } } }
	max_pooling_output_V { ap_memory {  { max_pooling_output_V_address0 mem_address 1 15 }  { max_pooling_output_V_ce0 mem_ce 1 1 }  { max_pooling_output_V_q0 mem_dout 0 21 } } }
	convolution_output_V_0 { ap_memory {  { convolution_output_V_0_address0 mem_address 1 16 }  { convolution_output_V_0_ce0 mem_ce 1 1 }  { convolution_output_V_0_we0 mem_we 1 1 }  { convolution_output_V_0_d0 mem_din 1 21 } } }
	convolution_output_V_1 { ap_memory {  { convolution_output_V_1_address0 mem_address 1 16 }  { convolution_output_V_1_ce0 mem_ce 1 1 }  { convolution_output_V_1_we0 mem_we 1 1 }  { convolution_output_V_1_d0 mem_din 1 21 } } }
}
