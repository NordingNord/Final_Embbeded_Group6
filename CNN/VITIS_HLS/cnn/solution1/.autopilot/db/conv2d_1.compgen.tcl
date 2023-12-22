# This script segment is generated automatically by AutoPilot

set id 17
set name infer_fadd_32ns_32ns_32_5_full_dsp_1
set corename simcore_fadd
set op fadd
set stage_num 5
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fadd] == "ap_gen_simcore_fadd"} {
eval "ap_gen_simcore_fadd { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fadd, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fadd
set corename FAddSub_fulldsp
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 18
set name infer_fmul_32ns_32ns_32_4_max_dsp_1
set corename simcore_fmul
set op fmul
set stage_num 4
set max_latency -1
set registered_input 1
set impl_style max_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fmul] == "ap_gen_simcore_fmul"} {
eval "ap_gen_simcore_fmul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fmul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fmul
set corename FMul_maxdsp
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 19
set name infer_fcmp_32ns_32ns_1_2_no_dsp_1
set corename simcore_fcmp
set op fcmp
set stage_num 2
set max_latency -1
set registered_input 1
set impl_style no_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set opcode_width 5
set opcode_signed 0
set out_width 1
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fcmp] == "ap_gen_simcore_fcmp"} {
eval "ap_gen_simcore_fcmp { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fcmp, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fcmp
set corename FCompare
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 20
set name infer_mul_5ns_6ns_9_1_1
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 5
set in0_signed 0
set in1_width 6
set in1_signed 0
set out_width 9
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename Multiplier
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


set id 22
set name infer_urem_14ns_12ns_14_18_seq_1
set corename simcore_urem_seq
set op urem
set stage_num 18
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set start_width 1
set start_signed 0
set done_width 1
set in0_width 14
set in0_signed 0
set in1_width 12
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 14
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_urem] == "ap_gen_simcore_urem"} {
eval "ap_gen_simcore_urem { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    start_width ${start_width} \
    start_signed ${start_signed} \
    done_width ${done_width} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_urem, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op urem
set corename DivnS_SEQ
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_div] == "::AESL_LIB_VIRTEX::xil_gen_div"} {
eval "::AESL_LIB_VIRTEX::xil_gen_div { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    start_width ${start_width} \
    start_signed ${start_signed} \
    done_width ${done_width} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_div, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 29
set hasByteEnable 0
set MemName infer_conv2d_1_layer_2_weights
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111101111010010101110111110110" "00111110001100111101001001001000" "10111101001111100011001111110001" "10111110101001011001010110101010" "10111110000000000101101000101011" "00111101100100100101111011111100" "00111011110111000101101111000000" "10111110000010011010011011000010" "10111110010011011010000011110011" "10111101111011010001110010000001" "10111101011001001111111001001001" "00111101101110001011000111001100" "10111101000000010111101110010101" "10111101111111000011000101001101" "10111101110111011010110000010101" "00111101101001100000010101110100" "00111110001000111011101101100110" "00111110011100001100001111010111" "00111110001010100101101000010101" "00111101100111111000000000100110" "00111100001111011101110110000000" "10111101011111111011111110100100" "00111100101110010111010000001000" "00111110010010110001000011100001" "00111101001110100111101111101110" "00111110000001110110010010111100" "10111110000100010111010111100100" "10111101101100100110011011001100" "10111101100000001100110100101110" "00111110011110110000110110100100" "00111110100001111110000010011111" "10111110000110111101010010111111" "10111110010010010011100110010011" "00111101111011100010010001011011" "10111110001100001110111000111001" "10111110011000111000101000011011" "00111100101010111101001011110000" "10111101101011010010101101000110" "00111101100010101110100100111110" "10111101100001011111000110100100" "10111101101001100111101101000011" "00111110001010111010001110010100" "00111110001001001001000100000001" "00111110000101101100100010101011" "00111101100000001010101001111001" "00111100110111001011111101001000" "10111101010100001010011011110100" "00111101101000001110110011011010" "00111110010111010111111101010110" "00111110100111011010101110000011" "00111110010010100111100110110110" "00111100001110110111100000000101" "00111101010101110011111001011100" "00111101001100011100010101000111" "00111101010101001010100111100110" "00111110000101010110101011110111" "10111101011011111000010111011010" "00111110000011010111111000011111" "00111101110001101110101000111101" "00111101110110101111100101011001" "00111101110110101101111111110110" "00111110011110001111101011011001" "00111101110101110110110010111111" "10111110100000000100111110000100" "10111101100010000110111111001010" "00111110010010000010111001011000" "00111110000111100010110011101000" "00111110000111101010100010100001" "00111101010101001100000111011100" "00111101011011001001011111001100" "10111101001111001011000000001010" "00111101110010100101000101110000" "00111110001001110101100111010010" "00111110000010100010011010111100" "00111110000001000100000000011001" "10111101110111000101100000001110" "10111110000000000101101111111101" "10111101001010100110100001101100" "10111110000000000001010001001111" "00111110000100000101101010000101" "10111101011111101101101010001000" "00111110011010011100011011000010" "00111110010001111000100011101100" "00111101100110101001110000101111" "10111101100011011000110001100101" "10111101100101101110101110011010" "10111110000011001011001100001010" "10111110000101111111010101100111" "10111110100011010000001011110111" "00111101111101011011110011111010" "10111101101100011110001000100101" "10111101011100110100000010010100" "10111101111011111011001010000010" "00111101111010111100111000000110" "00111101011101001000111110110011" "10111100011011001011110111110001" "00111110010001000110011110000111" "10111101101011001001100001000101" "10111110011110111111111100101010" "10111110001001000011011100010011" "00111100100100000011101011010000" "10111011110010000000101000000000" "00111100010101010010101101110000" "10111100000001111110000010010000" "00111101100010101101100011100001" "00111110001010010011011101001010" "00111101111001110000111011010001" "00111011000010110010100011000010" "00111101100010001100101011000000" "10111101001001100110001000100010" "00111101010001001001011101100000" "10111110010010001010010111110000" "00111100011010101011110011000010" "00111110000100010111000000111110" "00111101111001001011011101100100" "10111100111000000010110011000111" "10111101100011011011100011100010" "10111101101101000111101110010111" "10111110000010100100001011111000" "00111101111010111011000101001000" "10111100111010111101111000001110" "10111110010111000000001001000011" "10111101100001111110001011111110" "10111110000110000010110111110100" "00111101011010011111000010010100" "10111101101000111111000001001000" "00111110001110100001001001110011" "10111110000110001101011100011011" "00111110000001001111110100110001" "10111101110000111100100100101011" "00111101011001010001010001000110" "00111110001000111001100011111010" "10111101111110111101110101110001" "00111100110000001111010111101000" "00111101101111010010001011011000" "10111100000001100100011101100000" "00111110011101100000100111100110" "00111110001000101011100101110011" "10111101000101110010011110001001" "10111011110110000000100110011000" "10111101101100010101010000111111" "00111101001100010000101001011100" "00111100110000000001110101011000" "00111101110010000100101011110010" "00111101100010010100010010101010" "00111110001100011001111100011011" "10111101100100100101011111101011" "00111101100101011001101110101100" "10111101110110110101101110000110" "10111101110110100010001010101010" "00111101100001111001000000100100" "00111101101111100001100110101101" "00111101100111000010111011000100" "00111101001010000010001100110111" "00111101010101100100000010110011" "00111101110011100100011110100111" "00111101111010000011101010111110" "00111101100110001100111101101000" "10111101110010101101110000000010" "00111101011111101100010100011011" "10111110100000100110110110010000" "10111100111100000110000011010110" "00111110010000110111001111011001" "00111110001110110111001111000110" "00111100110100000001001110111000" "10111100000011010011110111100000" "10111101001011111000011000000010" "10111101101111011001000000111000" "00111110001000111100111100000010" "10111101100010111010110110010110" "00111101010101100001101110000000" "00111011111010111110001111100111" "00111101101111001010110011101110" "10111101000001011101101101010100" "10111110000001010011110010010000" "00111110001011101010001100011010" "00111010011011110011101011001010" "00111011001111000100000001011011" "00111101010010101111010001000011" "00111101011110100100100111110100" "10111100111011001110100011011100" "00111101000010010000101000000111" "10111101001110111011000110000111" "00111101000100110101010101110100" "10111110011110000111011010010100" "10111101100000000010001111010100" "00111101011010000111110000010010" "10111110000110010101010100100111" "10111101110111010001110010011110" "00111110001011101100100101100011" "10111110010100001001000011000001" "00111101100011101101000011011010" "00111110000110101100001101101100" "00111101010110100100010100000011" "10111101111001110000001110011110" "00111101101011001110111111011000" "10111101001000011111001011000100" "10111101101010100100101100100100" "10111101110000001100101001110101" "00111101000001100111111111010000" "00111110010010101111001010110111" "00111101010100100100100001000110" "10111101110001010011101101111001" "00111110000111110001111000001001" "10111101000011110110010000101110" "00111101011111100110100010010000" "10111110000011011000000110001111" "10111110101000001001110101000010" "10111101010110001010100100101110" "10111110001100000111011000110000" "00111101010000001110101101010101" "10111100111001000001001011111110" "10111101110000000110110011011101" "00111101111011111111001111001010" "10111101010000010010110000011100" "10111101101001111001011010101111" "00111110010001101100000000001111" "10111110100101101010000110000100" "00111101100101011001011100000010" "10111101100111000110101000010011" "10111110000010100000111100001100" "10111110110001010100101001010011" "10111110001101011100001101101000" "00111110011100101110011001000110" "00111101110011000010000011101000" "10111110101100100101100110010101" "00111010110100111010111110001110" "00111100011011011101101010011011" "00111101110010010001001110011000" "00111100011100100110001101100000" "10111101010100000111110110001110" "10111101110000001110010111101101" "00111110000000010001111011000110" "10111101001000000011001100001001" "00111101111101000001101100111011" "00111110000110011000110100101100" "10111100010011110100000010011111" "10111101101010100010011000111001" "10111011010001000011000110000000" "10111101101100010000001110011110" "00111101110111000111100011010111" "10111110101100000000101000101011" "00111110000010001100001011011010" "10111010011000000100000110111110" "00111101001101110011000100101000" "10111101100010001110100110010011" "00111101101000010010100000000101" "00111101110100010000011100011111" "00111110100001000101011110010001" "10111100100111100011001010001011" "10111101111101100001001101001100" "10111101000100110011010001010001" "00111100001111010001111110100000" "10111101100110010000100011000011" "10111110000100111101011110000010" "00111101110110100001110010101111" "10111110001111001001000001010110" "10111101100010011111010010000001" "00111101001100011001011000000010" "00111110000011000101100100010000" "10111101101011011010010010011010" "10111110000011110100100000101000" "10111101011100000011101010001000" "10111101101100010010101110000010" "10111101101011010101111000101110" "10111101100101011001001010100011" "10111101001000111011111111100000" "00111101011001001001110100001000" "10111100011110000011001000111011" "00111101011110011011111000000000" "00111011100111010111111101100000" "00111101101111011110001010010010" "00111101111111000110011100001000" "10111110110010011011100111100000" "00111101011100010000100001001010" "00111101111011001101110010101111" "10111101100000001100111000011011" "00111101000000001100111000000000" "00111100110010011101100010101001" "10111101110010010101010110010011" "00111110011101101100101001010010" "00111110000010010100001110010000" "10111101100101011010011011100001" "00111101000010011101111100111000" "10111100100101111111101101101100" "10111110010101110110100111001001" "10111101101000011011010111000000" "00111101111011110010011111101101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 30
set hasByteEnable 0
set MemName infer_conv2d_1_layer_2_bias
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111101000111101111000110111100" "00111101100000101001100010101110" "10111100111001111010111110000001" "00111100000011110011111000001111" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "10111110001001001101011110100011" "10111110000001001011100011111110" "10111101010101111001000101011110" "10111101001011001101010000010001" "10111011110000001001111111101010" "00000000000000000000000000000000" "00000000000000000000000000000000" "00111100010110001010000010011011" "10111110000001001001001100000000" "10111101100111100010011010101000" "10111101010111100010011111001111" "10111101011001111100011001101111" "00000000000000000000000000000000" "10111100010000010111110010111100" "10111011101111001111001100100001" "10111101101010010101110111001001" "10111101011111110100001000111101" "00111101001110100011101011111100" "10111100110000100000001001101010" "10111100101100001001000001010011" "00000000000000000000000000000000" "10111100011110110001101000111101" "00111101100001111001010101010111" "00111011110100110000111010001001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 31 \
    name input_r \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_r \
    op interface \
    ports { input_r_address0 { O 10 vector } input_r_ce0 { O 1 bit } input_r_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_r'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 32 \
    name output_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_0 \
    op interface \
    ports { output_0_address0 { O 11 vector } output_0_ce0 { O 1 bit } output_0_we0 { O 1 bit } output_0_d0 { O 32 vector } output_0_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 33 \
    name output_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_1 \
    op interface \
    ports { output_1_address0 { O 11 vector } output_1_ce0 { O 1 bit } output_1_we0 { O 1 bit } output_1_d0 { O 32 vector } output_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 34 \
    name output_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_2 \
    op interface \
    ports { output_2_address0 { O 11 vector } output_2_ce0 { O 1 bit } output_2_we0 { O 1 bit } output_2_d0 { O 32 vector } output_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 35 \
    name output_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_3 \
    op interface \
    ports { output_3_address0 { O 11 vector } output_3_ce0 { O 1 bit } output_3_we0 { O 1 bit } output_3_d0 { O 32 vector } output_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 36 \
    name output_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_4 \
    op interface \
    ports { output_4_address0 { O 11 vector } output_4_ce0 { O 1 bit } output_4_we0 { O 1 bit } output_4_d0 { O 32 vector } output_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 37 \
    name output_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_5 \
    op interface \
    ports { output_5_address0 { O 11 vector } output_5_ce0 { O 1 bit } output_5_we0 { O 1 bit } output_5_d0 { O 32 vector } output_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 38 \
    name output_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_6 \
    op interface \
    ports { output_6_address0 { O 11 vector } output_6_ce0 { O 1 bit } output_6_we0 { O 1 bit } output_6_d0 { O 32 vector } output_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 39 \
    name output_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_7 \
    op interface \
    ports { output_7_address0 { O 11 vector } output_7_ce0 { O 1 bit } output_7_we0 { O 1 bit } output_7_d0 { O 32 vector } output_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 40 \
    name output_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_8 \
    op interface \
    ports { output_8_address0 { O 11 vector } output_8_ce0 { O 1 bit } output_8_we0 { O 1 bit } output_8_d0 { O 32 vector } output_8_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 41 \
    name output_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_9 \
    op interface \
    ports { output_9_address0 { O 11 vector } output_9_ce0 { O 1 bit } output_9_we0 { O 1 bit } output_9_d0 { O 32 vector } output_9_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_9'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


