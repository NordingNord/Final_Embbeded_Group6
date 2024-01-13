############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cnn_unoptimized
set_top infer
add_files ../src/hls/cnn.hpp
add_files ../src/hls/cnn_unoptimized.cpp
add_files ../src/hls/layerInfo.hpp
add_files ../src/hls/types.hpp
add_files -tb ../src/hls/cnn_tb.cpp
add_files -tb ../src/hls/testImage.h
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period 10 -name default
#source "./cnn_unoptimized/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
