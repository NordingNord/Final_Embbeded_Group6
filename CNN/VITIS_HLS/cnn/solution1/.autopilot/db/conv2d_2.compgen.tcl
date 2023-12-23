# This script segment is generated automatically by AutoPilot

set id 4
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


set id 5
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


set id 6
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


set id 7
set name infer_mul_6ns_7ns_12_1_1
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 6
set in0_signed 0
set in1_width 7
set in1_signed 0
set out_width 12
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


# Memory (RAM/ROM)  definition:
set ID 13
set hasByteEnable 0
set MemName infer_conv2d_2_layer_2_weights
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111100100011100001011111001111" "10111100011001110101100101000000" "00111101100100110010000100100110" "00111101110011111000100001101000" "10111101111110100100000010100001" "10111101100110010001010011000101" "00111100110110011100100010011001" "10111100101110111101111110011000" "10111101010011100111011001010110" "10111101011110100101011101001010" "00111100110110110110010110011000" "10111101011011001110111011101101" "00111101111111000101100011000101" "10111110000110110101000100100010" "10111100100000110000110110110010" "00111101010100001110010101101101" "00111101000100110000100101101000" "00111101101111111101101001100110" "00111110010100000001111100100001" "00111110011010000110111111110110" "00111101111001011100101001000001" "10111110000110000110000111110110" "10111101000011000000111101001000" "10111100110001111011111011111100" "10111101011000111011011010000100" "10111110100001001000000011001001" "10111101111100110001010111001011" "00111101000100110101010111001100" "10111110000011111001010110111110" "10111101101001001010010111010100" "10111110010110110111010110111010" "10111101100100000010101100001101" "10111110001010011110001111000101" "00111101010111111010011011110001" "00111100111000011001000101000110" "00111110000111001010100100010010" "00111101001011010110010101101001" "10111101100101010001111011101000" "00111101110111111010110001011001" "10111110000010000101011001000100" "00111101100100011100100001111101" "00111011010100100100100100000000" "00111101111101011100000110111110" "10111101010011110010110010010000" "10111101111001101011101001000101" "00111101101101000011110110101010" "00111101011000111100011101100001" "00111101101100000010000000100000" "10111100100100000001010001110000" "00111101111111011011000110010001" "00111101000010100110011111000010" "10111101101100001111100011101110" "00111101110010110011010101100111" "00111100111011100000111010111000" "00111101010111111000011110001000" "10111101001010110100111101010010" "00111101110101000100101100000000" "10111011100111001011011001011111" "10111101111101100000111110100110" "00111100000010011100111111100000" "10111110010000011100001110100010" "00111101101111000101110010001000" "10111110000101111110001110101001" "10111100111001101001001000100000" "10111110001011100001001001000001" "10111101111000100100101011100111" "00111101010001101000101101100011" "00111101010001010001111011001100" "10111101010010100111101111110000" "00111100000111100000101100010001" "10111101000011110011101000110000" "10111101110110011010001111110001" "00111011100101101110001000001011" "10111100001010101001101000000000" "10111101110110110000000100101110" "00111101111101011001001000111010" "10111100001100010110011011011111" "10111110000001110001000110100001" "10111110000001110101111101001010" "00111110001111110110101111111000" "00111100101100000001111110010000" "00111110000110110010110101010010" "00111100101010011100111010100010" "00111011100000111100110001111101" "00111101110111101010100111101000" "00111101010110100010010111010000" "10111101011000001001110011000100" "00111101001011011001111111111100" "00111101011011000001011010010000" "10111100111001001110010000000010" "10111101010101100000111001110100" "10111101111110011100111100111010" "10111110000001111101010011010001" "00111110000011111110101110010111" "00111101110011111001001011101100" "10111110010001100011110101101101" "10111101011100110111110000010011" "10111100111101101010101101110001" "00111101000100010110111001000010" "00111110000001011011001010100010" "00111101111010100101001001101000" "10111110000101011111110100000011" "10111110000000111100110010000111" "10111101101011100001111100011110" "10111110001010101100001101101000" "10111110000100010111000011011110" "00111101100001111111111100011100" "00111101101100101011011001011110" "00111101100001100011001000111010" "00111101100010111010011111000101" "10111101100100010110111100101101" "00111110001101101000001000000001" "10111100100110101111110101110000" "00111110000001001000001011101110" "00111101110100010000001010010010" "00111101001011001001101010000000" "00111101011111010100111000001110" "00111101110011000110000001111101" "10111110000010011100011110011001" "10111110000001100111110011110001" "10111101110000110101101010011010" "10111101101011010110100110111001" "10111100101001100110010010000100" "00111100001000000010001001100000" "00111101101011101011110000100110" "00111101010101110101101001000100" "00111100100101101011101011010001" "00111100001000000001111110100000" "10111011100101000111101100000010" "00111101010110000010011011110011" "10111101010000100110001101011111" "10111101110001101001110010010000" "10111101000010001000110000011101" "10111101001001011110001110001001" "00111110000000001010010000011010" "10111110000100010010001011100010" "00111100100100010100100001011010" "00111100010011101100010011110000" "10111101010100101101000100110100" "10111100110010000110101110001011" "10111101110111100100101100110000" "00111101100100010011011101000010" "00111101111001110011111011001110" "00111110000100010000000111111010" "10111110000011100101001110110100" "00111101010110111011100000101100" "10111101101110110001100001101011" "10111101000100001010010110100011" "00111100110001011101001011111000" "00111101111110011101110001000110" "00111101100011111111011110010000" "10111101000110100100101001101100" "10111101111000010000100101011100" "00111101110000100101111010110001" "00111101101000011100001001010110" "00111101100000100011010000101100" "10111100011111010001001111011111" "00111101001111110111011010010010" "10111110001010101110010100000101" "00111101000100011101011000000111" "00111101101110100001010010001101" "00111101100010011010111000101100" "10111010101101111111100101001011" "00111101100111110010001110010111" "00111101100000100111101101101110" "00111110000101011110101011011101" "10111101101010001001001100110111" "00111101110001010100000100001010" "00111101101110000101000011101010" "00111101010011101001101111101000" "10111101010100100000110011100010" "00111101010010000101111100110100" "00111101101111100011111111110011" "00111110000011111010100001100100" "10111101100011100110000110110000" "00111101110100101010111011110000" "10111101110001000101011001010010" "00111110010100011010010001000010" "10111101111010101100100000101011" "10111101101010011110101000111011" "00111110000001000001001101000001" "00111101111110010011001000101100" "00111101001101111010110001110100" "10111101101011110001111101000011" "10111100110110100110010110110000" "00111101010001111111010101110011" "10111101011101010010010111110010" "10111101110110011111101011011011" "10111101100110111000001011001111" "10111101101010011110001111100001" "00111101100001011101101010100000" "10111101000010010010000001101101" "00111110000000011011101000110111" "00111100110111001010000111001100" "10111101001011101100110111010000" "10111101101110110111101000101100" "00111101000011101000010011101001" "00111101101111000010101111000001" "10111110000011000110110111010011" "00111101010111111001100110100000" "00111101111000111001100011101000" "00111100111001111010011000111000" "10111101110101001101111010010110" "10111101111111100001110001011011" "10111110000001111000001100111010" "00111110001111101011100111000010" "10111101110100101111011110011010" "10111101110011101111001100100001" "00111101000101100110101011010100" "00111101111100111110000010100100" "00111101100011011000000110001110" "00111110010101111000110011011101" "00111101101010001100010011101001" "10111101010101001001000000000011" "10111011011101100110000011000000" "00111101000101001011110111111000" "10111100101100111000000100111000" "00111101001001101111101111100001" "10111100101101100010001011011100" "00111100111001101010111001000000" "00111101111011011111101111101010" "10111101101000000110110111101000" "00111110000000111110001011110010" "00111101110110100110101101110000" "00111110000100111001101110111111" "00111100110110110101111110110100" "10111110000001110011111001001111" "00111101010110110001011101100100" "10111101110110111011000000001111" "00111101110111001001110011100110" "10111101111110101101110101101100" "00111100101010110111011011000000" "10111101001111111000101111011001" "10111101010101011010001001011100" "10111110000000000000001001100000" "10111101111001111110110101011110" "10111101001000111001010101101011" "10111100101011111100001111000010" "00111110000000010110100010001101" "00111100011010100001110010111110" "10111101000000111110011100111010" "00111110001001001111101101011011" "10111110000010110001011011010100" "00111101001010100000110110011101" "00111101101101011101101110000100" "00111110001001011111001100000111" "10111101100000111011100111000011" "10111101101000001000000000110100" "10111110000010011110011010011111" "00111101101000101110101000101110" "00111101001100011001001100111100" "10111101101101011010110010010001" "00111101111110111000111101110110" "00111100001011101011101101111001" "00111100001001100000000100010111" "00111110000110000010100011000001" "10111100100001101001111100000110" "10111101101101010101100010100111" "10111101111101000011000011011010" "00111101111010101100000010001110" "10111101101000001101000100110100" "00111101110011110001100100111011" "00111101101100011111011111110010" "00111101001011001100010110100000" "10111101011111101000010001101111" "10111100110010001011001100011000" "00111101100111101011011000010010" "10111011100111000010111000100100" "10111001111110100010111111101110" "00111110000011010111110011100111" "10111101001000011111100010100010" "00111110001000000011111000101011" "00111101110001011100000100000010" "00111101101101011110001111000000" "10111110011111100000111111010000" "10111110100001001000001111000111" "00111110001101100000001001110110" "00111110000111110001011010001101" "10111101101010111001011101011000" "10111101010111010111101101111110" "10111101001111000010010010101100" "00111110000010001100111010110101" "10111101110000000011011011100011" "10111100101011101111111000011000" "00111110000110000101011001110100" "00111101111010000000110111011001" "00111110000111100010111000001001" "10111101101101111100111001111111" }
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
set ID 14
set hasByteEnable 0
set MemName infer_conv2d_2_layer_2_bias
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111101001101110011100001100100" "10111011010001000100100000000101" "10111100000100101010111010000110" "10111100111001001001001010000100" "10111100000101110010010110011010" "10111100010111110000010011101011" "10111011010101110001010111101111" "00000000000000000000000000000000" "10111100111001001101010100010101" "00000000000000000000000000000000" "00000000000000000000000000000000" "10111100001001011111001110000001" "10111011111111111010110010101111" "10111101011101001000001110000101" "10111100000011100000101101001010" "10111101101011011110100100101001" "00000000000000000000000000000000" "10111101010001110000011000110000" "00111101110001000110011101110000" "10111011111110000000101000000010" "10111101000000110101011001010110" "10111101000110111000000110100011" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00111011010111001101111110110111" "00000000000000000000000000000000" "00000000000000000000000000000000" "00111101010100101000001010001010" "10111101000001110111100101100101" "00111101000100111111011110100111" "00111100011011001101001101110011" }
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
    id 15 \
    name input_r \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_r \
    op interface \
    ports { input_r_address0 { O 12 vector } input_r_ce0 { O 1 bit } input_r_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_r'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 16 \
    name output_r \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_r \
    op interface \
    ports { output_r_address0 { O 17 vector } output_r_ce0 { O 1 bit } output_r_we0 { O 1 bit } output_r_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_r'"
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


