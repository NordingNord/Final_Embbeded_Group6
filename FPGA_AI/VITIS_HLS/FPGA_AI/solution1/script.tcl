############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FPGA_AI
set_top nn_inference
add_files ../layer_info.hpp
add_files ../src/hls/matmul.cpp
add_files ../src/hls/matmul.hpp
add_files -tb ../img_pixel_vals.hpp
add_files -tb ../src/hls/matmul_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period 10 -name default
#source "./FPGA_AI/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
