############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project VITIS_HLS_AXILITE
set_top infer
add_files ../src/hls/cnn_axilite.cpp
add_files ../src/hls/cnn_axilite.hpp
add_files ../src/hls/layerInfo.hpp
add_files ../src/hls/types.hpp
add_files -tb ../src/hls/cnn_axilite_tb.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb ../src/hls/testImage.h -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period 10 -name default
config_export -format ip_catalog -output /home/frank/Documents/Git/Final_Embbeded_Group6/CNN/VITIS_HLS_AXILITE/infer.zip -rtl vhdl
source "./VITIS_HLS_AXILITE/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog -output /home/frank/Documents/Git/Final_Embbeded_Group6/CNN/VITIS_HLS_AXILITE/infer.zip
