set moduleName set3DFloatArray
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
set C_modelName {set3DFloatArray}
set C_modelType { void 0 }
set C_modelArgList {
	{ array_r float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array1 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array2 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array3 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array4 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array5 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array6 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array7 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array8 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array9 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array10 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array11 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array12 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array13 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array14 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array15 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array16 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array17 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array18 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array19 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array20 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array21 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array22 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array23 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array24 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array25 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array26 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array27 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array28 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array29 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array30 float 32 regular {array 25 { 0 3 } 0 1 }  }
	{ array31 float 32 regular {array 25 { 0 3 } 0 1 }  }
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
 	{ "Name" : "array9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array16", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array17", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array18", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array19", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array20", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array21", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array22", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array23", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array24", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array25", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array26", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array27", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array28", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array29", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array30", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array31", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 134
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ array_r_address0 sc_out sc_lv 5 signal 0 } 
	{ array_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ array_r_we0 sc_out sc_logic 1 signal 0 } 
	{ array_r_d0 sc_out sc_lv 32 signal 0 } 
	{ array1_address0 sc_out sc_lv 5 signal 1 } 
	{ array1_ce0 sc_out sc_logic 1 signal 1 } 
	{ array1_we0 sc_out sc_logic 1 signal 1 } 
	{ array1_d0 sc_out sc_lv 32 signal 1 } 
	{ array2_address0 sc_out sc_lv 5 signal 2 } 
	{ array2_ce0 sc_out sc_logic 1 signal 2 } 
	{ array2_we0 sc_out sc_logic 1 signal 2 } 
	{ array2_d0 sc_out sc_lv 32 signal 2 } 
	{ array3_address0 sc_out sc_lv 5 signal 3 } 
	{ array3_ce0 sc_out sc_logic 1 signal 3 } 
	{ array3_we0 sc_out sc_logic 1 signal 3 } 
	{ array3_d0 sc_out sc_lv 32 signal 3 } 
	{ array4_address0 sc_out sc_lv 5 signal 4 } 
	{ array4_ce0 sc_out sc_logic 1 signal 4 } 
	{ array4_we0 sc_out sc_logic 1 signal 4 } 
	{ array4_d0 sc_out sc_lv 32 signal 4 } 
	{ array5_address0 sc_out sc_lv 5 signal 5 } 
	{ array5_ce0 sc_out sc_logic 1 signal 5 } 
	{ array5_we0 sc_out sc_logic 1 signal 5 } 
	{ array5_d0 sc_out sc_lv 32 signal 5 } 
	{ array6_address0 sc_out sc_lv 5 signal 6 } 
	{ array6_ce0 sc_out sc_logic 1 signal 6 } 
	{ array6_we0 sc_out sc_logic 1 signal 6 } 
	{ array6_d0 sc_out sc_lv 32 signal 6 } 
	{ array7_address0 sc_out sc_lv 5 signal 7 } 
	{ array7_ce0 sc_out sc_logic 1 signal 7 } 
	{ array7_we0 sc_out sc_logic 1 signal 7 } 
	{ array7_d0 sc_out sc_lv 32 signal 7 } 
	{ array8_address0 sc_out sc_lv 5 signal 8 } 
	{ array8_ce0 sc_out sc_logic 1 signal 8 } 
	{ array8_we0 sc_out sc_logic 1 signal 8 } 
	{ array8_d0 sc_out sc_lv 32 signal 8 } 
	{ array9_address0 sc_out sc_lv 5 signal 9 } 
	{ array9_ce0 sc_out sc_logic 1 signal 9 } 
	{ array9_we0 sc_out sc_logic 1 signal 9 } 
	{ array9_d0 sc_out sc_lv 32 signal 9 } 
	{ array10_address0 sc_out sc_lv 5 signal 10 } 
	{ array10_ce0 sc_out sc_logic 1 signal 10 } 
	{ array10_we0 sc_out sc_logic 1 signal 10 } 
	{ array10_d0 sc_out sc_lv 32 signal 10 } 
	{ array11_address0 sc_out sc_lv 5 signal 11 } 
	{ array11_ce0 sc_out sc_logic 1 signal 11 } 
	{ array11_we0 sc_out sc_logic 1 signal 11 } 
	{ array11_d0 sc_out sc_lv 32 signal 11 } 
	{ array12_address0 sc_out sc_lv 5 signal 12 } 
	{ array12_ce0 sc_out sc_logic 1 signal 12 } 
	{ array12_we0 sc_out sc_logic 1 signal 12 } 
	{ array12_d0 sc_out sc_lv 32 signal 12 } 
	{ array13_address0 sc_out sc_lv 5 signal 13 } 
	{ array13_ce0 sc_out sc_logic 1 signal 13 } 
	{ array13_we0 sc_out sc_logic 1 signal 13 } 
	{ array13_d0 sc_out sc_lv 32 signal 13 } 
	{ array14_address0 sc_out sc_lv 5 signal 14 } 
	{ array14_ce0 sc_out sc_logic 1 signal 14 } 
	{ array14_we0 sc_out sc_logic 1 signal 14 } 
	{ array14_d0 sc_out sc_lv 32 signal 14 } 
	{ array15_address0 sc_out sc_lv 5 signal 15 } 
	{ array15_ce0 sc_out sc_logic 1 signal 15 } 
	{ array15_we0 sc_out sc_logic 1 signal 15 } 
	{ array15_d0 sc_out sc_lv 32 signal 15 } 
	{ array16_address0 sc_out sc_lv 5 signal 16 } 
	{ array16_ce0 sc_out sc_logic 1 signal 16 } 
	{ array16_we0 sc_out sc_logic 1 signal 16 } 
	{ array16_d0 sc_out sc_lv 32 signal 16 } 
	{ array17_address0 sc_out sc_lv 5 signal 17 } 
	{ array17_ce0 sc_out sc_logic 1 signal 17 } 
	{ array17_we0 sc_out sc_logic 1 signal 17 } 
	{ array17_d0 sc_out sc_lv 32 signal 17 } 
	{ array18_address0 sc_out sc_lv 5 signal 18 } 
	{ array18_ce0 sc_out sc_logic 1 signal 18 } 
	{ array18_we0 sc_out sc_logic 1 signal 18 } 
	{ array18_d0 sc_out sc_lv 32 signal 18 } 
	{ array19_address0 sc_out sc_lv 5 signal 19 } 
	{ array19_ce0 sc_out sc_logic 1 signal 19 } 
	{ array19_we0 sc_out sc_logic 1 signal 19 } 
	{ array19_d0 sc_out sc_lv 32 signal 19 } 
	{ array20_address0 sc_out sc_lv 5 signal 20 } 
	{ array20_ce0 sc_out sc_logic 1 signal 20 } 
	{ array20_we0 sc_out sc_logic 1 signal 20 } 
	{ array20_d0 sc_out sc_lv 32 signal 20 } 
	{ array21_address0 sc_out sc_lv 5 signal 21 } 
	{ array21_ce0 sc_out sc_logic 1 signal 21 } 
	{ array21_we0 sc_out sc_logic 1 signal 21 } 
	{ array21_d0 sc_out sc_lv 32 signal 21 } 
	{ array22_address0 sc_out sc_lv 5 signal 22 } 
	{ array22_ce0 sc_out sc_logic 1 signal 22 } 
	{ array22_we0 sc_out sc_logic 1 signal 22 } 
	{ array22_d0 sc_out sc_lv 32 signal 22 } 
	{ array23_address0 sc_out sc_lv 5 signal 23 } 
	{ array23_ce0 sc_out sc_logic 1 signal 23 } 
	{ array23_we0 sc_out sc_logic 1 signal 23 } 
	{ array23_d0 sc_out sc_lv 32 signal 23 } 
	{ array24_address0 sc_out sc_lv 5 signal 24 } 
	{ array24_ce0 sc_out sc_logic 1 signal 24 } 
	{ array24_we0 sc_out sc_logic 1 signal 24 } 
	{ array24_d0 sc_out sc_lv 32 signal 24 } 
	{ array25_address0 sc_out sc_lv 5 signal 25 } 
	{ array25_ce0 sc_out sc_logic 1 signal 25 } 
	{ array25_we0 sc_out sc_logic 1 signal 25 } 
	{ array25_d0 sc_out sc_lv 32 signal 25 } 
	{ array26_address0 sc_out sc_lv 5 signal 26 } 
	{ array26_ce0 sc_out sc_logic 1 signal 26 } 
	{ array26_we0 sc_out sc_logic 1 signal 26 } 
	{ array26_d0 sc_out sc_lv 32 signal 26 } 
	{ array27_address0 sc_out sc_lv 5 signal 27 } 
	{ array27_ce0 sc_out sc_logic 1 signal 27 } 
	{ array27_we0 sc_out sc_logic 1 signal 27 } 
	{ array27_d0 sc_out sc_lv 32 signal 27 } 
	{ array28_address0 sc_out sc_lv 5 signal 28 } 
	{ array28_ce0 sc_out sc_logic 1 signal 28 } 
	{ array28_we0 sc_out sc_logic 1 signal 28 } 
	{ array28_d0 sc_out sc_lv 32 signal 28 } 
	{ array29_address0 sc_out sc_lv 5 signal 29 } 
	{ array29_ce0 sc_out sc_logic 1 signal 29 } 
	{ array29_we0 sc_out sc_logic 1 signal 29 } 
	{ array29_d0 sc_out sc_lv 32 signal 29 } 
	{ array30_address0 sc_out sc_lv 5 signal 30 } 
	{ array30_ce0 sc_out sc_logic 1 signal 30 } 
	{ array30_we0 sc_out sc_logic 1 signal 30 } 
	{ array30_d0 sc_out sc_lv 32 signal 30 } 
	{ array31_address0 sc_out sc_lv 5 signal 31 } 
	{ array31_ce0 sc_out sc_logic 1 signal 31 } 
	{ array31_we0 sc_out sc_logic 1 signal 31 } 
	{ array31_d0 sc_out sc_lv 32 signal 31 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "array_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array_r", "role": "address0" }} , 
 	{ "name": "array_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_r", "role": "ce0" }} , 
 	{ "name": "array_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_r", "role": "we0" }} , 
 	{ "name": "array_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_r", "role": "d0" }} , 
 	{ "name": "array1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array1", "role": "address0" }} , 
 	{ "name": "array1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array1", "role": "ce0" }} , 
 	{ "name": "array1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array1", "role": "we0" }} , 
 	{ "name": "array1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array1", "role": "d0" }} , 
 	{ "name": "array2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array2", "role": "address0" }} , 
 	{ "name": "array2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array2", "role": "ce0" }} , 
 	{ "name": "array2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array2", "role": "we0" }} , 
 	{ "name": "array2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array2", "role": "d0" }} , 
 	{ "name": "array3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array3", "role": "address0" }} , 
 	{ "name": "array3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array3", "role": "ce0" }} , 
 	{ "name": "array3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array3", "role": "we0" }} , 
 	{ "name": "array3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array3", "role": "d0" }} , 
 	{ "name": "array4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array4", "role": "address0" }} , 
 	{ "name": "array4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array4", "role": "ce0" }} , 
 	{ "name": "array4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array4", "role": "we0" }} , 
 	{ "name": "array4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array4", "role": "d0" }} , 
 	{ "name": "array5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array5", "role": "address0" }} , 
 	{ "name": "array5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array5", "role": "ce0" }} , 
 	{ "name": "array5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array5", "role": "we0" }} , 
 	{ "name": "array5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array5", "role": "d0" }} , 
 	{ "name": "array6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array6", "role": "address0" }} , 
 	{ "name": "array6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array6", "role": "ce0" }} , 
 	{ "name": "array6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array6", "role": "we0" }} , 
 	{ "name": "array6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array6", "role": "d0" }} , 
 	{ "name": "array7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array7", "role": "address0" }} , 
 	{ "name": "array7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array7", "role": "ce0" }} , 
 	{ "name": "array7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array7", "role": "we0" }} , 
 	{ "name": "array7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array7", "role": "d0" }} , 
 	{ "name": "array8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array8", "role": "address0" }} , 
 	{ "name": "array8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array8", "role": "ce0" }} , 
 	{ "name": "array8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array8", "role": "we0" }} , 
 	{ "name": "array8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array8", "role": "d0" }} , 
 	{ "name": "array9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array9", "role": "address0" }} , 
 	{ "name": "array9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array9", "role": "ce0" }} , 
 	{ "name": "array9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array9", "role": "we0" }} , 
 	{ "name": "array9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array9", "role": "d0" }} , 
 	{ "name": "array10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array10", "role": "address0" }} , 
 	{ "name": "array10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array10", "role": "ce0" }} , 
 	{ "name": "array10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array10", "role": "we0" }} , 
 	{ "name": "array10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array10", "role": "d0" }} , 
 	{ "name": "array11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array11", "role": "address0" }} , 
 	{ "name": "array11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array11", "role": "ce0" }} , 
 	{ "name": "array11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array11", "role": "we0" }} , 
 	{ "name": "array11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array11", "role": "d0" }} , 
 	{ "name": "array12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array12", "role": "address0" }} , 
 	{ "name": "array12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array12", "role": "ce0" }} , 
 	{ "name": "array12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array12", "role": "we0" }} , 
 	{ "name": "array12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array12", "role": "d0" }} , 
 	{ "name": "array13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array13", "role": "address0" }} , 
 	{ "name": "array13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array13", "role": "ce0" }} , 
 	{ "name": "array13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array13", "role": "we0" }} , 
 	{ "name": "array13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array13", "role": "d0" }} , 
 	{ "name": "array14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array14", "role": "address0" }} , 
 	{ "name": "array14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array14", "role": "ce0" }} , 
 	{ "name": "array14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array14", "role": "we0" }} , 
 	{ "name": "array14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array14", "role": "d0" }} , 
 	{ "name": "array15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array15", "role": "address0" }} , 
 	{ "name": "array15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array15", "role": "ce0" }} , 
 	{ "name": "array15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array15", "role": "we0" }} , 
 	{ "name": "array15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array15", "role": "d0" }} , 
 	{ "name": "array16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array16", "role": "address0" }} , 
 	{ "name": "array16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array16", "role": "ce0" }} , 
 	{ "name": "array16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array16", "role": "we0" }} , 
 	{ "name": "array16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array16", "role": "d0" }} , 
 	{ "name": "array17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array17", "role": "address0" }} , 
 	{ "name": "array17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array17", "role": "ce0" }} , 
 	{ "name": "array17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array17", "role": "we0" }} , 
 	{ "name": "array17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array17", "role": "d0" }} , 
 	{ "name": "array18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array18", "role": "address0" }} , 
 	{ "name": "array18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array18", "role": "ce0" }} , 
 	{ "name": "array18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array18", "role": "we0" }} , 
 	{ "name": "array18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array18", "role": "d0" }} , 
 	{ "name": "array19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array19", "role": "address0" }} , 
 	{ "name": "array19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array19", "role": "ce0" }} , 
 	{ "name": "array19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array19", "role": "we0" }} , 
 	{ "name": "array19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array19", "role": "d0" }} , 
 	{ "name": "array20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array20", "role": "address0" }} , 
 	{ "name": "array20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array20", "role": "ce0" }} , 
 	{ "name": "array20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array20", "role": "we0" }} , 
 	{ "name": "array20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array20", "role": "d0" }} , 
 	{ "name": "array21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array21", "role": "address0" }} , 
 	{ "name": "array21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array21", "role": "ce0" }} , 
 	{ "name": "array21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array21", "role": "we0" }} , 
 	{ "name": "array21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array21", "role": "d0" }} , 
 	{ "name": "array22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array22", "role": "address0" }} , 
 	{ "name": "array22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array22", "role": "ce0" }} , 
 	{ "name": "array22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array22", "role": "we0" }} , 
 	{ "name": "array22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array22", "role": "d0" }} , 
 	{ "name": "array23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array23", "role": "address0" }} , 
 	{ "name": "array23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array23", "role": "ce0" }} , 
 	{ "name": "array23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array23", "role": "we0" }} , 
 	{ "name": "array23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array23", "role": "d0" }} , 
 	{ "name": "array24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array24", "role": "address0" }} , 
 	{ "name": "array24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array24", "role": "ce0" }} , 
 	{ "name": "array24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array24", "role": "we0" }} , 
 	{ "name": "array24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array24", "role": "d0" }} , 
 	{ "name": "array25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array25", "role": "address0" }} , 
 	{ "name": "array25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array25", "role": "ce0" }} , 
 	{ "name": "array25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array25", "role": "we0" }} , 
 	{ "name": "array25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array25", "role": "d0" }} , 
 	{ "name": "array26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array26", "role": "address0" }} , 
 	{ "name": "array26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array26", "role": "ce0" }} , 
 	{ "name": "array26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array26", "role": "we0" }} , 
 	{ "name": "array26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array26", "role": "d0" }} , 
 	{ "name": "array27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array27", "role": "address0" }} , 
 	{ "name": "array27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array27", "role": "ce0" }} , 
 	{ "name": "array27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array27", "role": "we0" }} , 
 	{ "name": "array27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array27", "role": "d0" }} , 
 	{ "name": "array28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array28", "role": "address0" }} , 
 	{ "name": "array28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array28", "role": "ce0" }} , 
 	{ "name": "array28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array28", "role": "we0" }} , 
 	{ "name": "array28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array28", "role": "d0" }} , 
 	{ "name": "array29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array29", "role": "address0" }} , 
 	{ "name": "array29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array29", "role": "ce0" }} , 
 	{ "name": "array29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array29", "role": "we0" }} , 
 	{ "name": "array29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array29", "role": "d0" }} , 
 	{ "name": "array30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array30", "role": "address0" }} , 
 	{ "name": "array30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array30", "role": "ce0" }} , 
 	{ "name": "array30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array30", "role": "we0" }} , 
 	{ "name": "array30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array30", "role": "d0" }} , 
 	{ "name": "array31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "array31", "role": "address0" }} , 
 	{ "name": "array31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array31", "role": "ce0" }} , 
 	{ "name": "array31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array31", "role": "we0" }} , 
 	{ "name": "array31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array31", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "set3DFloatArray",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "814", "EstimateLatencyMax" : "814",
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
			{"Name" : "array9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "array31", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_10ns_6ns_10_14_1_U1016", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_10ns_12ns_21_4_1_U1017", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	set3DFloatArray {
		array_r {Type O LastRead -1 FirstWrite 14}
		array1 {Type O LastRead -1 FirstWrite 14}
		array2 {Type O LastRead -1 FirstWrite 14}
		array3 {Type O LastRead -1 FirstWrite 14}
		array4 {Type O LastRead -1 FirstWrite 14}
		array5 {Type O LastRead -1 FirstWrite 14}
		array6 {Type O LastRead -1 FirstWrite 14}
		array7 {Type O LastRead -1 FirstWrite 14}
		array8 {Type O LastRead -1 FirstWrite 14}
		array9 {Type O LastRead -1 FirstWrite 14}
		array10 {Type O LastRead -1 FirstWrite 14}
		array11 {Type O LastRead -1 FirstWrite 14}
		array12 {Type O LastRead -1 FirstWrite 14}
		array13 {Type O LastRead -1 FirstWrite 14}
		array14 {Type O LastRead -1 FirstWrite 14}
		array15 {Type O LastRead -1 FirstWrite 14}
		array16 {Type O LastRead -1 FirstWrite 14}
		array17 {Type O LastRead -1 FirstWrite 14}
		array18 {Type O LastRead -1 FirstWrite 14}
		array19 {Type O LastRead -1 FirstWrite 14}
		array20 {Type O LastRead -1 FirstWrite 14}
		array21 {Type O LastRead -1 FirstWrite 14}
		array22 {Type O LastRead -1 FirstWrite 14}
		array23 {Type O LastRead -1 FirstWrite 14}
		array24 {Type O LastRead -1 FirstWrite 14}
		array25 {Type O LastRead -1 FirstWrite 14}
		array26 {Type O LastRead -1 FirstWrite 14}
		array27 {Type O LastRead -1 FirstWrite 14}
		array28 {Type O LastRead -1 FirstWrite 14}
		array29 {Type O LastRead -1 FirstWrite 14}
		array30 {Type O LastRead -1 FirstWrite 14}
		array31 {Type O LastRead -1 FirstWrite 14}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "814", "Max" : "814"}
	, {"Name" : "Interval", "Min" : "814", "Max" : "814"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	array_r { ap_memory {  { array_r_address0 mem_address 1 5 }  { array_r_ce0 mem_ce 1 1 }  { array_r_we0 mem_we 1 1 }  { array_r_d0 mem_din 1 32 } } }
	array1 { ap_memory {  { array1_address0 mem_address 1 5 }  { array1_ce0 mem_ce 1 1 }  { array1_we0 mem_we 1 1 }  { array1_d0 mem_din 1 32 } } }
	array2 { ap_memory {  { array2_address0 mem_address 1 5 }  { array2_ce0 mem_ce 1 1 }  { array2_we0 mem_we 1 1 }  { array2_d0 mem_din 1 32 } } }
	array3 { ap_memory {  { array3_address0 mem_address 1 5 }  { array3_ce0 mem_ce 1 1 }  { array3_we0 mem_we 1 1 }  { array3_d0 mem_din 1 32 } } }
	array4 { ap_memory {  { array4_address0 mem_address 1 5 }  { array4_ce0 mem_ce 1 1 }  { array4_we0 mem_we 1 1 }  { array4_d0 mem_din 1 32 } } }
	array5 { ap_memory {  { array5_address0 mem_address 1 5 }  { array5_ce0 mem_ce 1 1 }  { array5_we0 mem_we 1 1 }  { array5_d0 mem_din 1 32 } } }
	array6 { ap_memory {  { array6_address0 mem_address 1 5 }  { array6_ce0 mem_ce 1 1 }  { array6_we0 mem_we 1 1 }  { array6_d0 mem_din 1 32 } } }
	array7 { ap_memory {  { array7_address0 mem_address 1 5 }  { array7_ce0 mem_ce 1 1 }  { array7_we0 mem_we 1 1 }  { array7_d0 mem_din 1 32 } } }
	array8 { ap_memory {  { array8_address0 mem_address 1 5 }  { array8_ce0 mem_ce 1 1 }  { array8_we0 mem_we 1 1 }  { array8_d0 mem_din 1 32 } } }
	array9 { ap_memory {  { array9_address0 mem_address 1 5 }  { array9_ce0 mem_ce 1 1 }  { array9_we0 mem_we 1 1 }  { array9_d0 mem_din 1 32 } } }
	array10 { ap_memory {  { array10_address0 mem_address 1 5 }  { array10_ce0 mem_ce 1 1 }  { array10_we0 mem_we 1 1 }  { array10_d0 mem_din 1 32 } } }
	array11 { ap_memory {  { array11_address0 mem_address 1 5 }  { array11_ce0 mem_ce 1 1 }  { array11_we0 mem_we 1 1 }  { array11_d0 mem_din 1 32 } } }
	array12 { ap_memory {  { array12_address0 mem_address 1 5 }  { array12_ce0 mem_ce 1 1 }  { array12_we0 mem_we 1 1 }  { array12_d0 mem_din 1 32 } } }
	array13 { ap_memory {  { array13_address0 mem_address 1 5 }  { array13_ce0 mem_ce 1 1 }  { array13_we0 mem_we 1 1 }  { array13_d0 mem_din 1 32 } } }
	array14 { ap_memory {  { array14_address0 mem_address 1 5 }  { array14_ce0 mem_ce 1 1 }  { array14_we0 mem_we 1 1 }  { array14_d0 mem_din 1 32 } } }
	array15 { ap_memory {  { array15_address0 mem_address 1 5 }  { array15_ce0 mem_ce 1 1 }  { array15_we0 mem_we 1 1 }  { array15_d0 mem_din 1 32 } } }
	array16 { ap_memory {  { array16_address0 mem_address 1 5 }  { array16_ce0 mem_ce 1 1 }  { array16_we0 mem_we 1 1 }  { array16_d0 mem_din 1 32 } } }
	array17 { ap_memory {  { array17_address0 mem_address 1 5 }  { array17_ce0 mem_ce 1 1 }  { array17_we0 mem_we 1 1 }  { array17_d0 mem_din 1 32 } } }
	array18 { ap_memory {  { array18_address0 mem_address 1 5 }  { array18_ce0 mem_ce 1 1 }  { array18_we0 mem_we 1 1 }  { array18_d0 mem_din 1 32 } } }
	array19 { ap_memory {  { array19_address0 mem_address 1 5 }  { array19_ce0 mem_ce 1 1 }  { array19_we0 mem_we 1 1 }  { array19_d0 mem_din 1 32 } } }
	array20 { ap_memory {  { array20_address0 mem_address 1 5 }  { array20_ce0 mem_ce 1 1 }  { array20_we0 mem_we 1 1 }  { array20_d0 mem_din 1 32 } } }
	array21 { ap_memory {  { array21_address0 mem_address 1 5 }  { array21_ce0 mem_ce 1 1 }  { array21_we0 mem_we 1 1 }  { array21_d0 mem_din 1 32 } } }
	array22 { ap_memory {  { array22_address0 mem_address 1 5 }  { array22_ce0 mem_ce 1 1 }  { array22_we0 mem_we 1 1 }  { array22_d0 mem_din 1 32 } } }
	array23 { ap_memory {  { array23_address0 mem_address 1 5 }  { array23_ce0 mem_ce 1 1 }  { array23_we0 mem_we 1 1 }  { array23_d0 mem_din 1 32 } } }
	array24 { ap_memory {  { array24_address0 mem_address 1 5 }  { array24_ce0 mem_ce 1 1 }  { array24_we0 mem_we 1 1 }  { array24_d0 mem_din 1 32 } } }
	array25 { ap_memory {  { array25_address0 mem_address 1 5 }  { array25_ce0 mem_ce 1 1 }  { array25_we0 mem_we 1 1 }  { array25_d0 mem_din 1 32 } } }
	array26 { ap_memory {  { array26_address0 mem_address 1 5 }  { array26_ce0 mem_ce 1 1 }  { array26_we0 mem_we 1 1 }  { array26_d0 mem_din 1 32 } } }
	array27 { ap_memory {  { array27_address0 mem_address 1 5 }  { array27_ce0 mem_ce 1 1 }  { array27_we0 mem_we 1 1 }  { array27_d0 mem_din 1 32 } } }
	array28 { ap_memory {  { array28_address0 mem_address 1 5 }  { array28_ce0 mem_ce 1 1 }  { array28_we0 mem_we 1 1 }  { array28_d0 mem_din 1 32 } } }
	array29 { ap_memory {  { array29_address0 mem_address 1 5 }  { array29_ce0 mem_ce 1 1 }  { array29_we0 mem_we 1 1 }  { array29_d0 mem_din 1 32 } } }
	array30 { ap_memory {  { array30_address0 mem_address 1 5 }  { array30_ce0 mem_ce 1 1 }  { array30_we0 mem_we 1 1 }  { array30_d0 mem_din 1 32 } } }
	array31 { ap_memory {  { array31_address0 mem_address 1 5 }  { array31_ce0 mem_ce 1 1 }  { array31_we0 mem_we 1 1 }  { array31_d0 mem_din 1 32 } } }
}
