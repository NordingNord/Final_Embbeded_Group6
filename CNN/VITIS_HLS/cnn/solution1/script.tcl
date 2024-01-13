############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cnn
set_top infer
add_files ../src/hls/types.hpp
add_files ../src/hls/layerInfo.hpp
add_files ../src/hls/cnn.hpp
add_files ../src/hls/cnn.cpp
add_files -tb ../src/hls/testImage.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../src/hls/cnn_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period 10 -name default
config_export -description {CNN for classification of screw heads.} -display_name ScrewClassifierCNN -format ip_catalog -output /home/frank/Documents/Git/Final_Embbeded_Group6/CNN/VITIS_HLS/infer.zip -rtl vhdl -vendor FJJ -version 1.0
source "./cnn/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -setup -rtl vhdl
export_design -rtl vhdl -format ip_catalog -description "CNN for classification of screw heads." -vendor "FJJ" -display_name "ScrewClassifierCNN" -output /home/frank/Documents/Git/Final_Embbeded_Group6/CNN/VITIS_HLS/infer.zip
