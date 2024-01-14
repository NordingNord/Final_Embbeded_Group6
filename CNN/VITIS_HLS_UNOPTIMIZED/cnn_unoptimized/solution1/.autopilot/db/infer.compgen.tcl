# This script segment is generated automatically by AutoPilot

set id 6
set name infer_uitofp_32ns_32_4_no_dsp_1
set corename simcore_uitofp
set op uitofp
set stage_num 4
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
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_uitofp] == "ap_gen_simcore_uitofp"} {
eval "ap_gen_simcore_uitofp { \
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
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_uitofp, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op uitofp
set corename Int2Float
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
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 8
set name infer_fpext_32ns_64_2_no_dsp_1
set corename simcore_fpext
set op fpext
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
set ce_width 1
set ce_signed 0
set out_width 64
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fpext] == "ap_gen_simcore_fpext"} {
eval "ap_gen_simcore_fpext { \
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
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fpext, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fpext
set corename Float2Double
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
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 10
set name infer_ddiv_64ns_64ns_64_22_no_dsp_1
set corename simcore_ddiv
set op ddiv
set stage_num 22
set max_latency -1
set registered_input 1
set impl_style no_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 64
set in0_signed 0
set in1_width 64
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 64
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_ddiv] == "ap_gen_simcore_ddiv"} {
eval "ap_gen_simcore_ddiv { \
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
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_ddiv, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op ddiv
set corename DDiv
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


set id 12
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


set id 14
set name infer_mul_5ns_6ns_10_1_1
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 5
set in0_signed 0
set in1_width 6
set in1_signed 0
set out_width 10
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


set id 16
set name infer_mul_4ns_5ns_8_1_1
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 4
set in0_signed 0
set in1_width 5
set in1_signed 0
set out_width 8
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


set id 18
set name infer_mux_42_21_1_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 21
set din0_signed 1
set din1_width 21
set din1_signed 0
set din2_width 21
set din2_signed 1
set din3_width 21
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 21
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 19
set name infer_mux_42_21_1_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 21
set din0_signed 1
set din1_width 21
set din1_signed 0
set din2_width 21
set din2_signed 1
set din3_width 21
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 21
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 20
set name infer_mul_21s_20ns_37_1_1
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 21
set in0_signed 1
set in1_width 20
set in1_signed 0
set out_width 37
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


set id 21
set name infer_mux_42_21_1_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 21
set din0_signed 1
set din1_width 21
set din1_signed 0
set din2_width 21
set din2_signed 1
set din3_width 21
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 21
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 23
set name infer_mux_42_21_1_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 21
set din0_signed 1
set din1_width 21
set din1_signed 0
set din2_width 21
set din2_signed 1
set din3_width 21
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 21
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 25
set name infer_mux_42_21_1_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 21
set din0_signed 1
set din1_width 21
set din1_signed 0
set din2_width 21
set din2_signed 1
set din3_width 21
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 21
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 29
set name infer_mux_42_21_1_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 21
set din0_signed 1
set din1_width 21
set din1_signed 0
set din2_width 21
set din2_signed 1
set din3_width 21
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 21
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 31
set name infer_mux_42_21_1_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 21
set din0_signed 1
set din1_width 21
set din1_signed 0
set din2_width 21
set din2_signed 1
set din3_width 21
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 21
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 35
set name infer_mux_42_21_1_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 21
set din0_signed 1
set din1_width 21
set din1_signed 0
set din2_width 21
set din2_signed 1
set din3_width 21
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 21
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 47
set name infer_mux_42_21_1_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 21
set din0_signed 1
set din1_width 21
set din1_signed 0
set din2_width 21
set din2_signed 1
set din3_width 21
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 21
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 52
set name infer_mux_42_40_1_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 40
set din0_signed 0
set din1_width 40
set din1_signed 0
set din2_width 40
set din2_signed 0
set din3_width 40
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 40
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 53
set name infer_sdiv_48ns_40s_13_52_1
set corename simcore_sdiv
set op sdiv
set stage_num 52
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 48
set in0_signed 0
set in1_width 40
set in1_signed 1
set ce_width 1
set ce_signed 0
set out_width 13
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_sdiv] == "ap_gen_simcore_sdiv"} {
eval "ap_gen_simcore_sdiv { \
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
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_sdiv, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op sdiv
set corename Divider
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


set id 55
set name infer_mac_muladd_6ns_7ns_6ns_12_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 6
set in0_signed 0
set in1_width 7
set in1_signed 0
set in2_width 6
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 12
set exp i0*i1+i2
set arg_lists {i0 {6 0 +} i1 {7 0 +} m {12 0 +} i2 {6 0 +} p {12 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 56
set name infer_mac_muladd_15s_21s_37ns_37_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 15
set in0_signed 1
set in1_width 21
set in1_signed 1
set in2_width 37
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 37
set exp i0*i1+i2
set arg_lists {i0 {15 1 +} i1 {21 1 +} m {36 1 +} i2 {37 0 +} p {37 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 57
set name infer_mac_muladd_14s_21s_37ns_37_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 14
set in0_signed 1
set in1_width 21
set in1_signed 1
set in2_width 37
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 37
set exp i0*i1+i2
set arg_lists {i0 {14 1 +} i1 {21 1 +} m {35 1 +} i2 {37 0 +} p {37 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 73
set name infer_mac_muladd_14ns_21s_37ns_37_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 14
set in0_signed 0
set in1_width 21
set in1_signed 1
set in2_width 37
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 37
set exp i0*i1+i2
set arg_lists {i0 {14 0 +} i1 {21 1 +} m {35 1 +} i2 {37 0 +} p {37 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 75
set name infer_mac_muladd_16s_21s_37ns_37_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 1
set in1_width 21
set in1_signed 1
set in2_width 37
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 37
set exp i0*i1+i2
set arg_lists {i0 {16 1 +} i1 {21 1 +} m {37 1 +} i2 {37 0 +} p {37 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 88
set name infer_mac_muladd_5ns_6ns_5ns_10_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 5
set in0_signed 0
set in1_width 6
set in1_signed 0
set in2_width 5
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 10
set exp i0*i1+i2
set arg_lists {i0 {5 0 +} i1 {6 0 +} m {10 0 +} i2 {5 0 +} p {10 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 93
set name infer_mac_muladd_17s_21s_37ns_37_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 17
set in0_signed 1
set in1_width 21
set in1_signed 1
set in2_width 37
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 37
set exp i0*i1+i2
set arg_lists {i0 {17 1 +} i1 {21 1 +} m {37 1 +} i2 {37 0 +} p {37 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 123
set name infer_mac_muladd_4ns_5ns_4ns_8_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 4
set in0_signed 0
set in1_width 5
set in1_signed 0
set in2_width 4
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 8
set exp i0*i1+i2
set arg_lists {i0 {4 0 +} i1 {5 0 +} m {8 0 +} i2 {4 0 +} p {8 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 159
set name infer_mac_muladd_16s_20ns_30s_36_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 1
set in1_width 20
set in1_signed 0
set in2_width 30
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 36
set exp i0*i1+i2
set arg_lists {i0 {16 1 +} i1 {20 0 +} m {36 1 +} i2 {30 1 +} p {36 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 160
set name infer_mac_muladd_16s_20ns_36s_37_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 1
set in1_width 20
set in1_signed 0
set in2_width 36
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 37
set exp i0*i1+i2
set arg_lists {i0 {16 1 +} i1 {20 0 +} m {36 1 +} i2 {36 1 +} p {37 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 161
set name infer_mac_muladd_16s_20ns_37ns_37_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 1
set in1_width 20
set in1_signed 0
set in2_width 37
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 37
set exp i0*i1+i2
set arg_lists {i0 {16 1 +} i1 {20 0 +} m {36 1 +} i2 {37 0 +} p {37 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 162
set name infer_mac_muladd_15s_20ns_37ns_37_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 15
set in0_signed 1
set in1_width 20
set in1_signed 0
set in2_width 37
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 37
set exp i0*i1+i2
set arg_lists {i0 {15 1 +} i1 {20 0 +} m {35 1 +} i2 {37 0 +} p {37 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 190
set name infer_mac_muladd_17s_20ns_37ns_37_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 17
set in0_signed 1
set in1_width 20
set in1_signed 0
set in2_width 37
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 37
set exp i0*i1+i2
set arg_lists {i0 {17 1 +} i1 {20 0 +} m {37 1 +} i2 {37 0 +} p {37 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 223
set name infer_mac_muladd_16s_20ns_29s_36_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 1
set in1_width 20
set in1_signed 0
set in2_width 29
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 36
set exp i0*i1+i2
set arg_lists {i0 {16 1 +} i1 {20 0 +} m {36 1 +} i2 {29 1 +} p {36 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 287
set hasByteEnable 0
set MemName infer_cnn_input_flat_V
set CoreName ap_simcore_mem
set PortList { 2 0 }
set DataWd 21
set AddrRange 3600
set AddrWd 12
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
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
    port_num 2 \
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


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
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
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 288
set hasByteEnable 0
set MemName infer_cnn_input_V_0
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 21
set AddrRange 3600
set AddrWd 12
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
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
    port_num 2 \
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


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
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
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 289
set hasByteEnable 0
set MemName infer_layer_2_bias_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00101101110011" "11111100111011" "11110110110101" "11100011011011" "11110110100011" "11110010000011" "11111100101000" "00000000000000" "11100011011001" "00000000000000" "00000000000000" "11110101101000" "11111000000000" "11000010110111" "11110111000111" "10101001000010" "00000000000000" "11001110001111" "01100010001100" "11111000001111" "11011111001010" "11011001000111" "00000000000000" "00000000000000" "00000000000000" "00000011011100" "00000000000000" "00000000000000" "00110100101000" "11011110001000" "00100100111111" "00001110110011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 290
set hasByteEnable 0
set MemName infer_layer_2_out_V
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 21
set AddrRange 107648
set AddrWd 17
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
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
    port_num 2 \
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


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
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
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 291
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_0
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "111101110001111" "101010110000111" "101010001111011" "111000011001000" "111111011010111" "001011101000010" "010000001101110" "010010011100110" "111101111001011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 292
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_1
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11110001100010" "00110111111010" "10001110110110" "11100001001010" "00110110000010" "01000100110101" "00011011100101" "00011011011010" "10100101010100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 293
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_2
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "001001001100100" "000011100001100" "000110001101000" "000100100010110" "111001111011001" "111111110100100" "111010100010011" "101111000110000" "110000101111001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 294
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_3
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "001100111110001" "010011100101010" "000110001010001" "010000101101100" "110011100101100" "001001111100100" "110100010010000" "000110110110001" "001110101011000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 295
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_4
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10000010110111" "00101011010110" "11001101011000" "01110101001010" "11011101110111" "01000001001111" "00100011101000" "10010010001001" "10101111100101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 296
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_5
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "110110011011101" "110110101011100" "000001001111000" "101101010000000" "111010110100001" "010010101111010" "001011110000101" "001101110010011" "001100111100011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 297
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_6
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "000011011001110" "001101111110101" "111011100001100" "101111100001100" "010000000101001" "110101011101101" "101110011100100" "110000010100100" "001011000111110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 298
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_7
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "111101000100001" "101110111101010" "110010011001011" "110101000111100" "101101110110111" "001100010101000" "000110111111001" "000010101011011" "000101011001100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 299
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_8
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "111001100011000" "001001000111001" "000000100101101" "101010101001111" "000010010001010" "001011100001010" "001110001110011" "111010000000111" "111000000010111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 300
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_9
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "111000001011010" "000000011010010" "111110101010101" "101101110100011" "000001100111011" "000110011101001" "000011100111101" "111001010100101" "111100110111010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 301
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_10
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "000011011011011" "001111010111000" "110010010011111" "001000011111111" "111001011010010" "111001011011111" "110010101100100" "101111111111111" "001001111010110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 302
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_11
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11000100110001" "11001100001101" "01111010110010" "01011001010110" "11100110111100" "00110010000101" "10000000111100" "10001100000010" "11111011000111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 303
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_12
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "001111110001011" "110001100101000" "111110100111010" "001000011000110" "110010000110110" "001011111000111" "101111000011111" "111010111000110" "111111111100000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 304
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_13
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "101100100101011" "001011010000111" "101111000111011" "001000101110100" "001001000100110" "010001111101010" "010111110101110" "111101010000001" "010001101011111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 305
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_14
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "111101111100111" "000111000111100" "101111000101000" "110110111010010" "001110011100111" "110111000110011" "110010110100001" "010000001011010" "111010111100000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 306
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_15
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "000110100001110" "001011000000100" "010111111011010" "010110110100000" "010010001000000" "001101001010101" "110011000100001" "000001110101000" "010100000001111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 307
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_16
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "000100100110000" "111101101111111" "000010110000000" "111101100101000" "101110001101011" "110011101110101" "000100101100110" "111011111000001" "001100010111000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 308
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_17
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "01011111111011" "01111110110110" "10011011001011" "10000100100000" "00110110111011" "11010001101001" "01111001111100" "10100100111110" "01011010111100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 309
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_18
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "011010000000111" "000100010100110" "000010101001110" "001101000100000" "110100010011100" "110001010100110" "001000110110000" "101110100111010" "100000001111100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 310
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_19
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0011101000011011" "1110100111100000" "0000000100000111" "0000101011001001" "1111011011110101" "1110101011000010" "0011010111100011" "0000101010100000" "1011110110111110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 311
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_20
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "01110010111001" "01100101100110" "01101111010101" "00111111010100" "00011000101110" "10000100000100" "01010100011000" "01011010111011" "10110110000000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 312
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_21
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "101100111100111" "000011101110000" "000110110100010" "001100110001100" "001111100111011" "001111100100110" "111001010110110" "010100101111100" "010011111000101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 313
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_22
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "111011100111111" "000110111111000" "111000111110110" "101110110001110" "001000111111110" "000101101111010" "111111100001001" "110111110001000" "110101010001101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 314
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_23
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "111100111000010" "111010101001011" "000101011011001" "101111001100000" "111011001011011" "110101000011100" "000100101001011" "110101111101111" "111001000101000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 315
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_24
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "111000111000100" "001101010001001" "000111011000001" "110011110010100" "110001111011110" "111100100101100" "111101001100011" "101110110000110" "111010000111101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 316
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_25
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1011110110111111" "1111111011000110" "1111100011011000" "1110101001010010" "0001100001001011" "0000110001111111" "0000101001101111" "0001010001011101" "0010001000110011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 317
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_26
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10000110011101" "10000100111110" "11001010011111" "11101011001100" "01010000111000" "11000010101101" "11101001001110" "00101100011001" "10011111111001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 318
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_27
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00100100110101" "00001000100111" "10000011000110" "00001010000000" "01000001000110" "10010011000000" "00011100110101" "10100101001010" "11101010001000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 319
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_28
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "101110000011010" "100111110001111" "101111000001010" "001010111010111" "111110000001011" "110110010001111" "001110110111111" "001111101110001" "010011000010101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 320
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_29
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "110101101101011" "001011110001011" "010001111111010" "000110101110101" "000101111110111" "110101011000011" "110101111110010" "000001010111010" "001110100000001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 321
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_30
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "100100100100010" "101101000000111" "001100111110010" "000010010110101" "101010101000110" "001000010111011" "010000011111000" "000001010011000" "010011110001011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 322
set hasByteEnable 0
set MemName infer_layer_2_weights_V_0_31
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "110110111111010" "111100011001011" "100111001110000" "000001010000000" "000100100011101" "111011101101101" "001101101001101" "010011000001010" "110100100000110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 323
set hasByteEnable 0
set MemName infer_layer_3_out_V
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 21
set AddrRange 26912
set AddrWd 15
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
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
    port_num 2 \
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


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
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
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 324
set hasByteEnable 0
set MemName infer_layer_4_bias_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 12
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "011001110010" "111011000010" "111101110011" "111001011001" "000000000000" "110111110110" "001010001100" "111010111110" "111001110000" "111010010000" "110010110110" "111100110111" "001000000100" "111001010001" "110001110110" "010001011110" "010110001000" "000101111101" "000000110000" "110001100001" "110111100010" "111010101101" "000111100111" "010010100001" "101101110101" "110100011000" "000100100110" "111001101001" "000000000000" "110110000011" "111010000010" "110100001010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 325
set hasByteEnable 0
set MemName infer_layer_4_out_V
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 21
set AddrRange 23328
set AddrWd 15
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
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
    port_num 2 \
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


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
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
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 326
set hasByteEnable 0
set MemName infer_layer_4_weights_V_0
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1101000001111001" "1110111111110010" "0001010100100111" "0000000111101000" "0001000100000101" "0000000010101011" "1110111111110111" "1110011111101011" "1111000000101001" "0000010111011010" "0000000000011111" "0000010110111011" "1111001000101011" "0001001111101100" "0001010101111111" "1111111100110010" "1110011001110110" "0001010010001101" "1011010011110010" "0000001101011111" "0001010000110101" "1111000111000100" "1111111010100101" "0001001010010010" "0000101010101010" "1101010011100101" "1111111001001001" "0001000101000111" "1101101001000000" "0001101000010000" "1011101000111100" "1111100110011010" "1101111011010110" "0000111001001110" "0000101011100010" "0000001111101111" "1110100010111101" "1111110101101011" "1110011111011000" "1111110110000000" "0001001100001001" "0000001101110101" "0000101011100001" "0000001000101111" "1111010011011010" "1110110010100011" "1111110001011110" "0001011011011010" "0000100110111001" "0001111100010100" "1010111110110111" "1111101011101101" "0001001101010100" "1111010000101000" "0000001101010101" "0000101110111000" "1110110111101100" "1111001001010111" "1111110001001000" "0000000101000010" "1100100101000111" "1110110100000110" "1101111101110111" "1110111001101010" "1100010100010101" "0001101100101000" "1110101010001101" "0000001111001100" "1111011001001100" "1110100110111011" "1111100000000100" "0000110101000101" "1111011010101001" "1111100100011010" "0001000111101001" "1111110000100010" "1111100010010011" "0001100000110110" "1111111011010010" "0001111110010000" "1111001100100100" "0000011110101101" "1101100011001111" "1101110010101001" "0001111000110001" "0000110000010101" "1111101101100101" "0000010101110001" "1110100000010110" "1111011100010111" "1111101010000011" "1111011111111101" "1101110011111100" "0000110000110100" "1100111111010001" "1101111000010101" "1110101001110100" "0001000000010101" "1111111101011111" "0001000000001110" "1111111111011000" "1111000011001111" "0000111100101110" "1111011111101011" "1111110000100001" "0001101000000100" "1111010100010101" "1111100011000011" "0001011011100111" "1111011011001010" "1111100001100111" "0001000111100100" "0000100100101010" "1111001110101111" "1100101011111010" "1110010100110001" "0001010000100111" "0000111111111011" "0001011010010001" "0000000111000110" "0001010011000001" "0000001100010111" "0000110110100001" "0000110010101001" "1100010100110011" "1111111011101010" "1100010011001110" "1101001010011110" "1110100010111010" "1110111110010000" "1110110101101111" "1111110100110110" "0001010100110111" "0000101011001000" "0001100001011111" "0001000001110001" "1111000100000000" "1111011110001000" "0000001011100111" "0001010000111000" "1111100100111111" "0000111010000001" "1111001000100100" "0001101101010101" "1111101011111000" "0001100001100000" "1101111000010101" "1111010110101000" "0000110001011100" "1110111101101100" "1111001001101101" "1110110100110101" "1111001011111110" "1110001101000101" "0001100110001000" "0001010100000011" "1110101110110011" "1110101010101010" "1011110111000011" "1110100101101011" "1101011110111010" "1111010011111010" "1110100100011011" "0001101011111100" "1110011101100100" "0000001011011110" "1111001111011001" "1111011011010001" "1110100101011111" "0000111010100110" "1111100011010011" "0000101011101001" "1110011100101110" "0001110010001101" "0000010111111011" "0001111010010000" "0000101111001100" "0001001010011110" "0000101111011100" "0001101110110011" "0001101110101001" "1111011011001100" "0001010010111111" "1110101011110001" "1111010000100010" "1111001010000001" "0000101001100110" "0001011000101100" "1110101100100111" "0001010100101011" "1101100010010000" "0000000101011110" "1100001001100001" "0001100100010000" "1111000100110110" "1111010010110000" "0001011000100001" "1101100000100010" "0001011101110110" "0000110111100011" "0000010110101110" "0001001110010011" "0000011101100000" "0001100011011110" "1111111110001101" "1110001010101100" "0000011110001001" "0000000000010111" "1110011100001110" "0000000111000100" "0011011010110011" "1110010011110001" "0000110000111111" "0001001111110010" "0000101001010010" "1110100100100000" "0000101101111010" "1110100110101000" "1111100111111100" "0001000101001010" "1011001111000100" "0000110111111001" "1110000001001110" "1101011111111100" "1100011110010010" "0000100011111110" "1110110100001001" "1111011110101110" "0000100011001010" "1110101101011010" "0000010101101001" "0000110001101100" "1111010011111101" "0000111110110010" "0000100000011000" "0000100011000010" "0000101000110011" "0000011100011000" "1111110010100111" "1111010101101110" "0001100100101010" "1111101101100000" "0011110001001011" "0000110011010011" "1111101001111101" "0000000101010100" "1111100011101111" "0000000000111100" "1110101010111110" "1100100011000100" "0001011001100110" "0000010010010100" "1101001010110001" "0000101110001100" "1010100010100101" "1110011010111011" "1110011100000110" "0001001011101110" "1111101100010001" "0000110000011110" "0001100001000011" "1111001111101011" "1111001011010110" "0000110111010001" "1111111100110011" "1111010101111100" "0000010010001011" "1111000100101001" "0000100011010010" "1111011100111110" "1110011010000100" "1111011001111111" "1111001010101111" "1111111100010001" "0111000101010101" "0010001100111001" "1111001111111001" "1110101000100110" "0001000001010100" "1110101101100001" "1111110111111100" "1111000010110001" "1111011111101010" "0000010111001100" "1011111000011001" "0000111011100001" "1100111100110011" "1101101101111110" }
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
set ID 327
set hasByteEnable 0
set MemName infer_layer_4_weights_V_1
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11011110011111" "11011101011010" "11111111010001" "00010110011011" "11011010111111" "11011110000000" "11100010110110" "00011101111101" "00001011001001" "01100110010111" "11101100111101" "10110010010011" "11111011010011" "00111011111100" "10100110000100" "11001011111011" "11001111000111" "10101110011000" "00011101010111" "11010000110010" "00110010000101" "00001100001010" "00011111000011" "11110111101111" "11000010110101" "10100000010100" "10110110000110" "11011011000111" "00100010000110" "00111101110111" "00000111101110" "11010101100010" "01010101010101" "10010010001001" "11001101000110" "10111000101010" "11101111111001" "00100110010100" "01000011001011" "01001100101001" "10101001011101" "10110110101110" "00001000011101" "11010010110100" "01101000011010" "01001101001010" "00011010001010" "01000010100011" "00001100000010" "01010010001001" "01100000000010" "10101100100111" "11101000110110" "01001010101101" "01001101111111" "10011110000011" "00101001011100" "00011000110110" "01000010111101" "11010011101010" "11100011011011" "11101011100010" "01000110010000" "11010110100111" "00101001001111" "00011001001110" "11100011100110" "11010111110010" "11101001010010" "10101110011110" "00110101001010" "11000110101011" "10110101100111" "01000001110001" "11000100000000" "11101110000111" "11110001010010" "11101110000100" "11100100010010" "00001001100001" "11101111111111" "00000011000111" "00000010110010" "00001110011000" "00111001101010" "10001101111001" "01011010110111" "00010110111010" "01001000001101" "11110101011101" "00011100001111" "10110111000010" "00101111011010" "01010011110001" "00000111010111" "10111100000010" "00010100000110" "00010010100110" "11111000111111" "10100000101000" "01011111010101" "11001011000010" "00010100000100" "01011001000100" "00000000110000" "11010111011111" "10101001010000" "10100100011101" "11111100010110" "11011111101111" "10100101000011" "10011001100110" "11110011000001" "00001010110001" "10110110001111" "00111000010110" "00000011100101" "01010010010001" "10011110000000" "10100110011000" "01100100111010" "11001101011111" "00011000001011" "00001100111011" "00100000110110" "11111001101010" "11100101000010" "00001111011101" "01010011001100" "01000001011110" "00010111011010" "00000011111111" "00000000011000" "00010110010011" "10110111011010" "11010111111000" "00011000111110" "11001000111001" "10011000101001" "11000011111101" "00011011000011" "00010101001001" "00110100100100" "11011000111111" "00110011011101" "10111001010000" "01000100100001" "00110010100011" "11011100110001" "00100000100101" "00001110001000" "11011010110110" "01100011001100" "01010101110111" "11101001000110" "01001110000000" "10111001000101" "00110001110100" "11111110110001" "01010110011100" "00110000001101" "00100110101001" "01011011110101" "11101100000110" "11011001010011" "01001111110010" "10111101110011" "00111100011011" "00001101000011" "01100101100000" "00111100010111" "00101011100110" "10110001100111" "00001110000100" "00010110001010" "10100100000110" "00101011001101" "01000110011111" "00000000001110" "01010101111110" "11111001010000" "11100110111111" "11001111110101" "11100010000110" "10101011111010" "11011000011110" "00101001100001" "10011101010100" "10100001101001" "11111001111000" "01001011010111" "00110100111011" "11101100110011" "00110100110111" "11111010101111" "10011111101111" "01000111100000" "11000111001000" "00100110110010" "00001010110111" "00001010011001" "00011110100011" "10011000101010" "11110110011110" "01001101010011" "11110011111010" "11011101001011" "00101011011100" "11110011000111" "10100110111110" "01011010101011" "01001001111110" "11000100011001" "11010001010101" "00000101011010" "11010011010111" "01011101010111" "10111001100100" "00000110001000" "10110010101011" "00010101110101" "11110110010011" "01001100010111" "01000001000000" "11001111010011" "00010101011010" "11110010100100" "11010101101111" "11111011110100" "10100101111010" "10011110101010" "10011110110110" "01100111001110" "00101011010000" "11110100000011" "00001101110100" "01010111110011" "11000111100000" "10110000000001" "00011111010111" "11010101100100" "11100000110001" "00111111000001" "01010110100001" "10010111100001" "00100111001000" "11100001101001" "11111001010100" "00000000011101" "10011110001101" "11001010000100" "00001010001110" "00001011100010" "00111100100000" "11001111111010" "10100011101000" "10111100111101" "10100011111000" "11101010100111" "10011010001000" "11101000000110" "00011100110000" "10100101001100" "11011100000001" "00010001101010" "00101101010101" "11110011010100" "11111100010101" "00101011001110" "10011111001001" "00011010010100" "01011000010010" "10100111000001" "10111110010110" "10101000101100" "11100001110001" "11110011010001" "11000101111011" "11101010100001" "00011010100011" "01001000010110" "00000010000000" "00100011100100" "00011100010001" "10100011100010" "00110011011001" "01001101010000" "10010000000100" }
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
set ID 328
set hasByteEnable 0
set MemName infer_layer_4_weights_V_2
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 17
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11111100000100101" "11111001110100000" "11110011010011101" "11111011101010000" "11110101100010000" "11101011100100001" "00001001101100101" "00000001010101111" "00001000010110001" "11111000000011010" "00001001100001101" "11110111111100001" "00001100001110000" "11101110100001110" "00001010110000001" "00000011000000101" "11111001000110110" "00000010000001111" "01000001011000010" "00100111010101010" "11110111011011111" "11101100011011100" "00000001100000001" "00000101000010011" "11111010010111000" "11011101000111010" "00001010011111010" "11110110000001101" "11110010010100000" "00000111000010111" "11110100001110010" "00000110101010111" "11011011101001101" "11110011010001000" "00000011001101011" "00001000110010001" "11110100010001000" "11101111100010000" "00001001001011110" "11111000110111001" "00000011001000011" "00001100000001000" "00000000110010110" "11111011000001001" "11111111001001011" "11101000110010010" "00000011111100011" "00000100010001011" "00000111000001010" "00000000101000001" "00101111101101101" "11110111001110001" "11110111011101111" "11110000110011111" "00001100110011100" "00000100000001100" "00001000111011011" "11011011001010101" "11111111101111110" "11110111100011010" "11100011100001011" "00001000101101010" "00000010101100101" "11100100110100001" "11001110011100110" "11110011110110010" "11111111110111010" "00000011001111011" "00000010101010100" "00001010111110110" "00000100111100010" "00000001100010100" "00000000101101001" "00000001011101000" "11111010100000001" "00000010011101011" "00000011101111010" "11111101001011000" "11110110110111011" "00000100110101000" "00000010010010011" "00000111011100101" "00001011101111001" "11010110101111000" "00000111000100100" "00001001011100011" "00001000110001110" "11110111001111000" "00001000010111110" "00000010101111100" "00001001010010011" "00001100100001000" "11010011111001100" "00000111011011110" "00001010101100000" "11100100110110010" "00100000111110110" "11110101011101110" "00000100011100111" "11111000001001111" "00000010110001100" "11111110101000010" "00000111011011110" "11111001110011000" "00000000010111101" "11110111001100100" "11110100101001101" "00000001111001001" "11110011000100100" "00000001001101001" "00001001001010001" "11101000110000110" "00000101010110101" "11111010000001011" "00001111110010010" "00000011110000101" "11111110110001100" "00000110011101111" "00001100101101110" "11110110100000010" "00001001111011001" "00010001101111000" "00000001110000010" "11111111010010111" "00110100100110101" "11111110110010101" "00101001010110001" "00100100100011000" "00110011001000111" "00000010000011010" "11110110111011100" "11110011111101010" "11111011011001010" "11111110101000100" "11111100001010110" "11111000101100100" "00000111001100010" "00000111000001011" "11110110101001010" "11111101110111110" "11110101111011010" "00000101011000001" "11111001111110110" "11101000000011000" "00001001100100111" "11110101010000110" "00010000101100011" "00000000111100101" "11110100001101010" "11110110100010001" "00001100011110100" "11111011101010001" "00001011110001000" "00011011111110111" "00000010000000011" "00000011011110000" "00110111111110110" "11110000110001011" "00111101110101010" "00011111011001000" "00011110001011111" "00000011011100101" "11111001010111100" "00000101000111001" "11111000000011000" "00001101110101011" "00000010101101100" "11111110011011010" "11111001110001010" "11111111000000000" "00001000101101100" "00001101010010111" "00000001011101111" "11111000000100111" "11111001011110100" "00000010010010100" "00000010111000010" "00000010000001000" "11110001101010101" "11101110110100010" "11111001101110100" "11110101010010101" "00000111010000100" "00000100000100110" "00000101001110101" "00010011110001010" "00000011010101100" "00000110101100100" "00100001101100110" "11111101101001001" "00101010111001011" "00000011011110111" "00100110001101011" "00000110010000000" "00000011101001010" "00001110010000001" "00000000100001001" "00010000111111000" "11111100101010111" "00001000010111011" "11111000110011100" "00000001000100001" "00000111011011100" "11110011100001000" "00000011000010011" "00010010100100111" "11110011011111110" "00001101011101000" "11110011000110101" "00001001000101011" "11001111011100110" "00000000111101001" "00000111001101111" "00000101011011000" "11111011111100110" "11110011000110010" "00000100001111110" "00000100011100100" "11110100111010010" "11111001011011011" "00110000111101000" "11111110001000101" "00011011100101111" "00010011011000100" "00100100110001010" "00001001101111001" "00000001000000010" "00000101100001010" "00001001001000111" "00000001111000001" "00000110000110100" "00001011101011010" "00000010100000001" "00001010100100110" "11111111110010100" "00000100101000011" "11111100000001011" "00001010100011111" "11110011110001101" "00001011010101100" "11110100111000110" "00001110110000010" "11100010000111000" "00000011111011111" "00001011100111100" "00000011100001001" "11110101001010110" "00001011101110101" "00001001010010001" "00001101010010101" "11111000101100011" "11110111010011001" "00100010100000110" "11110011000001100" "00010111110101110" "00100010110110110" "00011101100101001" "00001100000011010" "11111010011111100" "00000111000110000" "00001010000011001" "00001011001101110" "11111110110110011" "00001000101100010" "11110001111000110" "11111100111010001" "00001000100110101" "11111011111010011" "11111101001111101" "11111100101101011" "00001001001110111" "11111101100110001" "11111110111111011" "11111110100001100" "11100110000001100" "11111111010101110" "00001010111110010" "11111110101011001" "00001000001101110" "11111111000100101" "00001001010100100" "00000111111010010" "11110110000111000" "11111101011001010" "00100011000011111" "11111101001110011" "00101011011011010" "00010110101001110" }
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
set ID 329
set hasByteEnable 0
set MemName infer_layer_4_weights_V_3
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10100000111100" "00011010011101" "00010111000110" "01000111010011" "11000001110001" "00111111101101" "01101000010111" "10111100011011" "10100101101111" "11111110110110" "11101111001011" "10111100100111" "01000101010011" "11011101111011" "11010111001101" "10101010010100" "00010011010100" "01011111001000" "01001011000101" "01010001100100" "01010000111000" "11001001101010" "00100111001000" "01011010110100" "11000100111110" "00001111100101" "11110111111111" "00111101010010" "00111100110100" "00100010011010" "10100010101001" "01100000100011" "00000100000110" "00111001001001" "11011011000000" "01000000101101" "01000011101001" "11001010000001" "11001011010111" "11100011001000" "00011110011100" "01000100100101" "00100100001011" "00001001101000" "01011100001110" "11111100000001" "11010101000100" "10111000101010" "11001001010010" "00111000011001" "00111000111011" "10010011011100" "00010011010101" "10110010011101" "10100101010110" "00011000100101" "10110111100101" "01011111001011" "11001101101101" "10101110000000" "11101001000010" "11011001110000" "11110001111001" "11010000111111" "11001000100001" "11101110110000" "00010000010111" "10111000001101" "00100101011000" "11111001100001" "10100010111111" "00001100100101" "01000011111110" "00101111100000" "00010011001011" "01011000010010" "00011110110001" "11000010001111" "00010110011111" "00100101110101" "00111110000111" "11100101010110" "10100000000011" "10101100100000" "11001111101100" "00101111010110" "01011101001011" "00010101000011" "10111011101010" "10011010001011" "10101011111001" "00110010100011" "11001011000110" "11010111110110" "00100111011001" "00011010011101" "10111010010111" "11001010001100" "01010111101011" "11111110000011" "00111001011111" "10011011001010" "01011010000010" "00101100110010" "10010010110111" "01011110100110" "00101100010110" "00000011011101" "01011111111010" "11101000001011" "11001100010101" "11001100110000" "10101110101011" "10100000100101" "10101110100100" "11000011011010" "11011010011111" "01010011011100" "00101111010100" "10110011011110" "11110010011101" "00001101101101" "00111000100001" "11100000110110" "00011101101010" "01010101010110" "00010011101110" "00111101111110" "11011101111101" "11100100110110" "01000101010011" "00110000111000" "00111100100000" "00000011011100" "00111000010111" "11001110000010" "00101111111100" "11111010001010" "00010010110011" "01100001111011" "11110110111001" "01000011001011" "00000110101100" "10010110101000" "10100110011001" "11100011110100" "01010010001110" "11000001010001" "11101111000100" "00110111010011" "11010001001110" "11011010101100" "10011111111110" "11011001001100" "10111011110000" "00110110110011" "11011001100101" "10011001111101" "00010000101001" "10111100100101" "11101001000111" "11111001010110" "00000111110001" "01000010000101" "00111000001110" "00010110110111" "10110100111010" "10101010101100" "11000110110001" "11100101111101" "00101001100011" "00100000110101" "11111101100111" "11100111010110" "00101010111100" "01100001100111" "00100001001101" "01000011101101" "00100011110111" "11010110000010" "10111000001010" "10111110010101" "10110011001111" "10011010010011" "10110111110111" "00010110001110" "11111000100000" "01000111111111" "11011011001000" "11000001101111" "00101101111001" "11000100111001" "10101010101010" "11011100100000" "11011111100000" "10010110101010" "10100100011010" "10100101000000" "00111001010010" "01100100010010" "11001110110100" "00001010001011" "00101001000100" "11001011010000" "01001100111111" "10111111100100" "00001010001110" "00001100001011" "01100101001110" "00001011000010" "00011001010011" "01010101100011" "11000101001101" "10101100001111" "01001011110111" "01001111100111" "00000100101000" "00110000100000" "11001110111000" "00101010101011" "00010100000111" "11101001000010" "10011011000010" "01011010011100" "10100000101100" "10100010011101" "11101100011000" "11010111001000" "11010001001001" "00000010011010" "00010100011001" "11110110100111" "10110011111100" "11001011010000" "01011001001010" "01000100000001" "01011110101011" "01011010101010" "00111010000101" "10010110101010" "11101110111000" "11101110011101" "10010110110100" "00110111110011" "00100101011111" "11011000000101" "11001001111010" "00000000101111" "10010111101010" "00101100111011" "11101010110010" "11111101100110" "11110100011000" "10111101101011" "10011100000110" "11101001000110" "00011000011010" "10011000111110" "10100011011011" "11011011011000" "01011111000010" "00000011101101" "00100111110001" "00111010000010" "10011111101110" "11100010011001" "00010100101110" "00001011101110" "00010000011101" "00100011000111" "01010001000111" "11000001100101" "00111011010110" "11110111101100" "00011010111001" "00101000010110" "00110100000110" "00010000010100" "10010111111000" "01001010011110" "01010001111011" "00101100011101" "11001010001000" "00000011000000" "01010100001111" "10101000100110" "10111010010001" "00101100100000" }
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
set ID 330
set hasByteEnable 0
set MemName infer_layer_4_weights_V_4
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "01010111000010" "00010001111011" "11110110010110" "00111010011110" "00010111010101" "10111100110000" "11111000000001" "11011000110110" "11000001100000" "10111110001010" "01011011100111" "11010110011010" "11111011111111" "00101110101100" "11111110101111" "01000110011110" "10101110111010" "10011000111111" "11101010010011" "11111011101010" "10110010000111" "10011000101101" "11110000110100" "01100100011000" "11101011010001" "01010110100110" "01011101100111" "01101000011001" "11011011000100" "10111111010010" "00100000000010" "01011101000101" "00011000010001" "00011101110101" "01000101101011" "10101111011011" "11010001101100" "01010111111000" "11011100101100" "11111010001011" "00011000011000" "10101010100010" "11001101011011" "11100010010111" "00010100010111" "10110101010000" "11111001111011" "01010000101011" "11010011110001" "10011110010011" "11101100110100" "01001110100100" "00001110010001" "01000100010000" "00101111001100" "10110001110101" "10011001101101" "01010010010101" "11011010001110" "00010100000110" "11001001111100" "00110011111101" "11110110011100" "11110001100100" "11010111111010" "11101010110111" "10101110101111" "10110001101111" "01001011010011" "10110111101101" "00010101101101" "00011011001010" "10110001001001" "10010111100011" "00111010011111" "01011110111110" "01100000110001" "10011110000010" "01011000000111" "00000001011101" "11100011110100" "11111111010011" "00001111110110" "10111010111100" "10011111100011" "10011101101000" "00100101011111" "01001101110011" "00011111001010" "11001010000010" "01001111000110" "01011010110000" "10110101100010" "00111010111110" "00100010100110" "00011110110111" "11010100011000" "01000010110001" "11000011110001" "00001110101100" "00010000100010" "11100011110000" "11110101111001" "00101101010110" "10111100110000" "00001010010010" "00110101101100" "01001101010110" "11011101000010" "01010010100101" "01001011100001" "11110010000110" "00100001110010" "00000011111110" "00011111011011" "00111110100110" "00101110110100" "11011010110010" "11000111110101" "00111100100011" "10011100000110" "00111000010100" "00010110111011" "00100000010101" "11000111000101" "10011110001001" "00110000011101" "10011001001110" "01100000001000" "00000000110011" "11101011101010" "00001100100111" "00011100000110" "11010101000110" "01011111011001" "11101001101001" "00001101100110" "11101100011011" "01000110110111" "10101100000111" "10011001100101" "00001011011110" "01000101001011" "00111011000000" "01010100100010" "11100010001111" "10111101010001" "01001110110100" "11001000110110" "10100011011110" "11101011010000" "10110001110110" "11100110111110" "00110110000011" "11010000010011" "11100110000111" "00110001011010" "10100110110000" "01100110011011" "11100001110011" "11011100011111" "11100010010111" "11101010011001" "11011010111001" "00000101010110" "11011000010110" "10011100001111" "11010000001101" "00111111110011" "11000101010011" "11110100010100" "11111010111010" "01100011101101" "10110111011101" "10011011001110" "00011111100100" "11000000010000" "11111011001010" "01000000101100" "10111000110000" "10101100001010" "11011011101110" "11111011001010" "00010000101000" "00111101011011" "11100100111000" "01100100011000" "00010101001010" "00001010001110" "00011010111001" "01011011000100" "11110011011001" "01010000011001" "11100100001010" "00001100010001" "00000010110011" "11100011001110" "11100000110110" "01010011110101" "10100001111011" "11010011110000" "00101110101111" "10111000101111" "01000000110011" "10110101111110" "10110010101110" "01010110001001" "11100010001100" "01100111101001" "11110001001000" "00110011001110" "10101000100001" "10100111101010" "11000011011110" "00111010110000" "11110101111100" "00001111010110" "10101101000111" "00101000101101" "11110111101010" "10100001100110" "01000001001000" "10101101001001" "00111001001011" "11110010000110" "11101101001100" "11100000000010" "11001110001110" "01011110011010" "10011101100011" "00010101001001" "11111110010001" "00100100101010" "00000110111110" "01100110111000" "00000110011110" "10100111110101" "01000010101101" "11011011000001" "00100100101011" "10111001111000" "00100100011011" "10110111100100" "11111101001100" "00010111011111" "10100001000100" "00010111000100" "00001001101100" "11011001010010" "01100001110101" "11101110000111" "00000111010001" "00001111111100" "11010011101101" "01100110001010" "10011001011111" "00101100100100" "01100010101011" "01010110110000" "11100000111001" "11101101101001" "11001100011101" "00011011111001" "00011101010111" "11101010000101" "00011001000001" "11001011011010" "11100010010101" "00111000011010" "11001100101101" "01010101011110" "10011010110011" "10011110000100" "00011010001000" "10110011100101" "00101001100011" "01100101001111" "11011010100111" "11100001111011" "01001010000100" "01010000011111" "01010010110111" "00010111110011" "00001001101010" "00100100100110" "00101101001110" "00010110000011" "01010101000100" }
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
set ID 331
set hasByteEnable 0
set MemName infer_layer_4_weights_V_5
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00101010011101" "00001100111011" "11100101000010" "01001000010000" "11010000111101" "11010000111111" "00000010100010" "10110111011010" "11001000101000" "11100001000010" "11111101101011" "00101001000101" "01100111101101" "11010110010001" "00001000001010" "11001010101101" "10100000101000" "11101011101100" "00011101001110" "00100000011100" "01011001011111" "00011001111100" "11110001010101" "00000000011010" "00100011011100" "01001101100010" "01001010100011" "10101100010100" "11001101101001" "00110011101011" "00111001000110" "11001111011000" "11110100001111" "00000011011110" "11111001100100" "11100111100101" "10111100101100" "10110001000101" "01000101100101" "01001100001000" "01000011100101" "01100110010101" "10100001101010" "00111011010011" "01010100101000" "01000000111010" "11100010010001" "11010100000001" "11010111101110" "10111000101101" "10011011000111" "00110111111011" "11100111001100" "00000011100100" "00110001100010" "11000111011101" "11101010111010" "11010110010010" "00000011111100" "00110110011101" "00000101010011" "10011101011000" "01100000000011" "11001100111110" "01010111011101" "11100010101100" "10101101101111" "01001000100111" "00100100100001" "11100100001001" "10011001110111" "11111000101010" "00011001110101" "00111110100011" "11011101011101" "11110101011101" "11100000011110" "11011000101000" "00101101101010" "11110010010111" "11010010000011" "11000001110111" "01100001000000" "11111001011001" "11101001010111" "00101110000001" "01011111011011" "11010100001010" "11001100011001" "00111011000101" "11010110000010" "01011110110010" "00010010011010" "01000110011100" "11000010010100" "00000101010100" "11011000101011" "10101100111001" "11111110110001" "10100101101111" "01001100101011" "11000110111110" "11011111000001" "00000100101000" "11100001000010" "01001101000001" "00000111110000" "00001011010011" "01000000000101" "10011111010010" "00011100100101" "00101010101110" "11111010110000" "10101011001000" "00001001000000" "11000000101010" "00000000100000" "11000100110111" "01010010010011" "10010111101110" "01011110000101" "00100111110100" "11010100101000" "01100111101110" "00011101011101" "11010111001011" "01011110000111" "00011100110101" "10011010100001" "11001101101010" "01011010001011" "01000000101001" "10011010001100" "11100111001010" "11110011001110" "01000000001111" "00111100011011" "11000011100110" "00101100000110" "10110101011101" "11100111101100" "11101110100111" "11000010010110" "11110000101000" "11101101101011" "10101010010010" "11101100000000" "11000101000100" "00011000111011" "11001011011001" "10111000011101" "10011010110100" "11011000010010" "00100001010011" "00101100101100" "00101001101010" "00110101000101" "11110111001100" "11111111010111" "00101100100011" "11101001101011" "00111100111001" "00111000001110" "11001010010100" "10100111100001" "11010100100110" "01100111000010" "00111011101011" "10110011101111" "01011110110000" "10101100011000" "10111111100101" "01001111010000" "10101001101000" "10100011100010" "10010010100010" "11000001011101" "11000100000111" "10010110100101" "10110110111000" "11110000001111" "10101100001010" "00110100100110" "00101111101000" "01010000100010" "01011000101111" "00100000010010" "01010000010100" "00001001111011" "10111111100010" "01011011100110" "10101011010010" "11010101100001" "11101100011101" "00011100111000" "11001011110101" "01011111001001" "10010011011111" "00011001000010" "00101100010101" "00000100010101" "00110110010110" "00110110100001" "11111010000111" "00001100100001" "01010010011101" "00000110010100" "01011111001001" "01001001011101" "11001100101100" "00010000101010" "00001101000101" "00110010110100" "00111111010110" "10101100111100" "00110101110011" "11101001110010" "10100111100011" "10110101111011" "00001110101101" "11011011010001" "10100101011011" "10110011111111" "10010011010010" "01000110011011" "00010001111000" "00110010101010" "11110001011100" "11100011011011" "10011000001100" "01010011100010" "10101100010000" "00000101000100" "00000000001010" "00100010100011" "11101001110010" "00001010010101" "11101010001111" "10110111000000" "10101110011101" "11101011110010" "00000101001010" "10010001110111" "11011110111011" "11101011000001" "00100110101101" "01010000100010" "11001011001011" "00010101101101" "00000011110011" "11110101101010" "01001100010101" "11100010111011" "11001100011000" "00100010110111" "01010111100001" "01000000001100" "00100000111000" "10110011010101" "00100001011111" "01010010101101" "00100111001110" "11000111101011" "00110100100101" "00010111001100" "10101010010001" "11000100111101" "00110111010111" "00010000000000" "00101101110000" "11011001100110" "11101010010001" "00010000010110" "01010000111011" "11010000010111" "11010100101101" "01000100011101" "00101001000001" "00101101101001" "00111100100110" "11110101111101" "00100111001111" "11000011110100" "10101111010000" "01010100101100" "10101001100101" "11011010111001" "11000111111001" }
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
set ID 332
set hasByteEnable 0
set MemName infer_layer_4_weights_V_6
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0010011000000001" "1111011100010001" "0000110010100011" "0000010000000000" "1111101101100011" "1111101010001100" "0000010101100011" "0001010100110011" "0000000000100111" "0001010111111000" "1110111000101100" "1110101011101111" "0001011000000010" "1110100010010001" "1111010111100000" "1111101000111110" "1111000000001011" "1110011110111110" "0011000010100000" "0000100010110011" "1110110111101000" "0000101101111100" "1111110110100000" "1111000100011010" "0001010011011000" "0001000001101110" "1110011111001000" "1111000011001101" "0101101100111100" "0000110000000100" "0100001100001000" "0001011100110010" "0011011010110011" "1111011000110100" "1110111100101100" "0001000011010110" "1110100111110100" "1110011111011101" "1111001101000011" "0000011000101011" "0000011111000100" "0000110001011100" "1111100101001000" "0001000000001111" "0000110110100101" "1111111110011110" "1110101000101101" "1110000010100111" "1110101001001110" "0001001010010100" "0111101001101001" "0011101000100011" "1110011100101110" "0000111010100000" "1110110001101110" "1111101010011100" "0001001001010111" "0000100100001100" "1110011000000100" "1111111111011010" "0100010101110011" "0000101001011100" "0011100011000000" "0001111111110100" "0010110100100011" "0000011100000101" "0000110100101111" "0000111110100011" "1111110001001111" "0000010110101010" "0001000011111010" "1111001101101000" "0001011110011001" "0001000101101111" "0000110001110100" "1110110100010000" "0001010011101110" "0000101000010100" "0000110001001100" "1111000100101010" "1111101101001110" "1110010100001000" "0111111001011110" "0001101010110011" "1110111001101101" "1101111100101011" "1111010010101000" "1110100110000110" "0001001100111011" "1110011100010000" "0000000011001111" "1111011010011110" "0100000001101001" "0000001111100101" "0011001110000111" "0010000000010010" "0001110110011010" "1111001000111011" "1110101100010010" "1111100011111111" "1111111100100111" "0000011111011010" "0000100011101010" "1110110101111011" "1110110011101011" "0000101100101110" "1111111111110010" "0000101001101101" "1111001010000011" "0010100101101101" "0000001100001110" "0001010000110100" "0001010010001011" "1111100111011110" "1110111100100001" "1111100110001010" "0000101001101111" "0010001010111111" "0001011110111010" "0000100010100101" "1110111001111110" "0010000000110001" "0001001011001101" "0000000101101110" "0100001111101100" "1111101001011111" "0011100011111000" "0001010110010000" "0101000111110111" "0000110100001110" "0000011110101000" "1110111100110100" "0001010001000101" "1110101000010101" "1110100100110110" "1110110000111100" "0000110000111101" "1110110111111011" "1110101100000010" "0001000010100111" "0000001100111110" "0000100000100100" "0000111111001000" "1111010000100101" "0000011101011101" "0000011101010110" "0101101011100011" "0011111100111000" "1111011110101100" "0001101000001100" "1111110010101010" "0001000000110101" "1111010011101100" "0000000010100011" "0001100110001111" "0001000100111110" "0101111111101011" "1110001010111100" "0010110110111100" "0011111101111001" "0110110110101010" "0000001110101100" "1111111000111000" "0000100001010010" "0001011100101001" "0001100100100001" "1111111011111001" "1111001010001110" "1111001000010111" "0001100010000101" "0000101100111001" "0000001011100000" "1110011101101110" "1111100000010010" "1111101110000101" "0000100101110010" "0001011001001001" "1110000001001000" "0101100011110011" "0001110010010011" "1110100000111100" "1111001111001010" "1110100010100100" "1110111111111100" "0000000011101010" "0000110101000110" "1111000110111011" "0001001010101000" "0111011111010010" "0000000000011100" "0101110100001110" "0011011001001001" "0000001101111110" "0000001111011111" "1110110011010001" "0001100000000010" "0001000111011111" "0001100101100101" "1111000111001111" "1111010101011010" "1111001111011111" "0000110001101111" "1110110100111110" "0001011100101100" "0000011001001101" "0001010111011000" "1111000011010011" "1111100011111111" "0000111000111110" "0001011110101110" "0001001011110101" "0011010011000011" "0000001001000110" "0001101110110100" "0001010000010010" "0001011111001111" "1111101010000000" "0001011010110010" "0001011101010100" "1111011110111001" "1111001000110011" "0000101010100000" "1111111100100011" "0001111111010000" "0001000001100100" "1111111001000100" "0001011000111010" "0001011001111001" "1111101110111000" "1101101110010011" "1110101101110010" "1111101010100100" "0001001100110001" "1111000101100001" "1111011101011100" "0000010100101100" "1110101001011100" "0001010010100110" "1110011010110111" "0000111011001111" "0000011111011111" "0001111100010000" "0100011111010100" "0011101111100001" "1111011010110010" "0000011111101101" "0000010010111101" "1111111000111010" "1110111110010010" "1110010001010100" "0001100101001110" "1111110001100011" "0001000101110010" "1111100011001110" "1100011111010111" "0011011001110011" "0010100001000000" "1111010100001000" "0000011001100101" "0001001010000101" "0000101111100000" "0001100110010100" "0001010111000001" "0000100001100111" "0000001000010111" "0001011001100110" "0000000010100111" "0000101000100000" "0001000111011110" "0001001000000100" "1110011000000001" "1110101110100111" "0000010110011101" "1110100110100010" "0101010101001111" "0001000101110101" "0000100101111100" "1110001111110001" "0001001000001010" "1111000100100110" "1111100001111101" "0000101111010000" "1110011110101111" "1110100101110011" "0011110001000010" "1110100111000111" "0011000101110111" "0010011011100011" }
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
set ID 333
set hasByteEnable 0
set MemName infer_layer_4_weights_V_7
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "01010111001100" "00011101110010" "11110101110101" "11011111011100" "00101111010101" "11100100010010" "10100011101110" "01000110010111" "00101011011001" "00111010011110" "01000100110101" "01011010000111" "00001011011010" "00001011001000" "11101101111101" "10100101001100" "11100011011101" "00010111010110" "11010011010000" "00100101011101" "10011011111111" "11111011010010" "11111011110101" "11100111001001" "01100001001000" "11001101010100" "10101111100100" "11011011100000" "10100111110011" "10010111011011" "00010100110111" "01010101101000" "00111001100110" "00110000010010" "00011111010010" "00111101000000" "11000000110011" "10101111101111" "11100010010101" "10100101011100" "10011100000011" "11011101000110" "00001011100111" "11111100010111" "00001000101101" "11100101000010" "10111010011011" "00101000111111" "01100010101111" "10111011101011" "00110011100010" "01001010011100" "00101110111100" "00111100101010" "10101000100001" "00111100111100" "00011101100110" "00010000110110" "11001110011101" "01011001011000" "10101101101100" "10011011001110" "01010100100011" "10101001111001" "00010100101010" "00100100101111" "01100000000010" "11110110110001" "11110110011010" "00010000011011" "11011110111000" "11001111101100" "01001100010111" "10101110111000" "11010101001111" "00000000111010" "01100011010100" "10100011010011" "01000010101000" "11111001110100" "11011011101011" "00111011101001" "01100001110110" "01100101001101" "10011010010001" "10011010101001" "00001101110010" "11100001111011" "10011101011101" "11101100010110" "00011011111001" "11111000000100" "00101000001110" "01001001011011" "11100110000100" "11100110110101" "00001011000010" "11100101100000" "00011101010010" "11111101000000" "00011000011001" "11110000010110" "00011010100100" "10101101100010" "11110001010100" "10110000101101" "01000101100000" "00011000110010" "10101010100101" "11111111111111" "01100000000101" "00000100110111" "10110010010100" "01010101011011" "10011101100101" "00100100001000" "10101001100101" "00100101101110" "10101100001101" "01010111110010" "01011001101101" "00100011111111" "11011101010011" "11011111011010" "10110101110001" "11110001000110" "01000100010111" "01011100110000" "00100011001110" "00001011110010" "01001010101001" "00000000011100" "10011010000010" "00001100001000" "11101011000110" "10110010111010" "11101011011010" "11010110011101" "10111010111010" "01100010110011" "00011001001011" "01100011101010" "11101111001001" "11101110010100" "01001101100110" "00010001010110" "11100000011101" "10110000101010" "00000111011001" "00000110110100" "01011011110101" "11011111010000" "01100111001011" "00010000000000" "01000100110000" "01001110011000" "00100101110011" "00101100010110" "00011100110110" "10111100101011" "11100011110010" "11110011000100" "01011001110101" "10111101011111" "00011100000110" "01010101100001" "00010101011011" "00001110111001" "00010010110011" "11011000101101" "11000010000001" "00011000110010" "11110001001101" "11110110100010" "00000101000010" "01010011010000" "11101110000010" "11100111111010" "01010010101000" "11001000010011" "10101100010010" "11000010000100" "00011001011111" "00011011100101" "00010100011111" "10100000011110" "00001110101000" "10101011011110" "01000010000010" "01011100001001" "00001111010000" "11111011000110" "11100100011010" "01011000111110" "11001010110111" "11110011001010" "01011000001010" "10101011100000" "01001000010010" "01010100010111" "10110101001100" "11011011000100" "01011101110001" "00101101111110" "00011011010110" "00011110101000" "00011011011000" "11000110100000" "00010110101000" "00001001010010" "11111000100011" "10110101110000" "00001110101101" "10111101001100" "11011001010011" "01010111011110" "10110110111101" "00110110011110" "00010011000110" "11001111001001" "00100011111110" "11011011001001" "10111100000101" "00001101011010" "00011111010100" "00110001010101" "00010111011001" "00000000111011" "11100110000111" "00111111001111" "01011111110011" "00010000101101" "00011000111111" "00011001111101" "00010000101011" "11010110101110" "01010001010100" "11110010001100" "00010100001110" "01000100100010" "01001101101100" "00001001010110" "01011101110101" "10101010001010" "11011111111111" "11100010101101" "11000111010000" "10110100111101" "01100100110001" "00100111111101" "00010011011000" "11011010010110" "11101000010001" "01010000100111" "11011010010011" "00010001100100" "10101010011111" "11110110100000" "11101001100101" "00101010110100" "01011101000100" "10101100101101" "11010101100000" "11110110000011" "10100000101001" "00110111001011" "00111101010001" "01010110100011" "11101110010000" "11101001110010" "11110101010110" "11100010110111" "01100010110010" "01011100010000" "00011011010100" "11111110111101" "10011110010101" "11010101111010" "00101001011001" "01011111101100" "10110000010001" "11011011111010" "00000101111001" "11100010111110" "10111111111100" "01000011100010" "10110101101010" "10111011000001" }
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
set ID 334
set hasByteEnable 0
set MemName infer_layer_4_weights_V_8
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00110010010111" "11010011110101" "11010001110110" "11001111011000" "01001111001010" "11100101001101" "11001001101011" "01100011000100" "11001110000011" "00000110011010" "11100000010000" "00010000100000" "00010001100101" "01011110011111" "11010111001000" "10111011101011" "00010011100011" "00010001110001" "00100111110001" "00100010100010" "11010110010100" "11111101100011" "11001001010101" "01000011001000" "00010111000100" "11100100001101" "11000100000111" "11110111101000" "11100100011110" "10101010100100" "11010000010100" "01100001011010" "11010101000100" "11001111001100" "00000011001000" "10011110011000" "11010100011100" "01000110101110" "00110110100010" "00111100000100" "11101011011011" "11010001011010" "01010101000000" "01001101111001" "11011011101010" "00010010101011" "10100010001010" "11111010001010" "10011010000100" "00010100001111" "10100111100110" "11001000001100" "10110111001111" "00110100101000" "10101010100011" "01100101001101" "00001010110000" "11010011000100" "10111100100001" "00101001000100" "10111000110100" "10101101111001" "00000101010011" "11100101011001" "10100010011001" "00101001010101" "00000001001100" "11111011111000" "11011111001110" "11111010111101" "11010000110011" "11101000001111" "01001110101110" "00100001010010" "11010101010000" "00010111111001" "11001010101001" "00011001111100" "00000111110100" "11011110100111" "11011101110100" "01010101101000" "01011100101010" "00010010100100" "10110001101011" "01011010011000" "01000010101100" "00111101010111" "00101000001100" "00100110100000" "11111110100101" "11001110111110" "00010001111111" "11100111111011" "00010000000010" "10111010000110" "11101101010101" "11110101110110" "00101111011110" "01010000010000" "11110011011110" "00010010110011" "10111010001011" "11011000000011" "11111000011000" "01011110000110" "10111001110001" "00111111000111" "00011011001100" "11100110101001" "00000010100100" "10110100011010" "11000001100010" "01001001010111" "00100100110011" "11101010101000" "01000011001000" "10111001000101" "11011011100110" "00001010101110" "11110100101010" "00001100001101" "00110110011011" "00000111001110" "10100110011011" "01001011001011" "11001100000000" "00000100110101" "11000010110101" "00101010001001" "01000011100001" "11011011110001" "10100000111111" "11101100010010" "11010000000011" "01010111101111" "00110011000100" "10011011100000" "00100111111010" "11011101111101" "11101100000010" "00100110111001" "11001011100000" "11000100110111" "11010100010010" "11011100111101" "11010010111010" "11110111001001" "11111010001011" "01001100111100" "01010110100110" "10011100100001" "00100001010111" "01011111010010" "00011001000101" "11000011100111" "11100111110110" "11111011111010" "00000111011110" "11101111100100" "11111110101111" "00001001110110" "11100110110110" "11100110000001" "00101000110100" "11111000111110" "00110101010100" "11010010000011" "00001000001011" "11011110011111" "00011001011110" "11100010010111" "00111001100000" "00100101101110" "00111100011011" "11110001110011" "11110000100101" "10100000100011" "10101100001001" "10110011111111" "10101011010001" "00100101110010" "10100110110100" "01100100110100" "01000010110000" "10110111000000" "10100010001011" "10100110000111" "11100001111100" "00001100100111" "00001101111000" "10010010010100" "10100010000110" "00100001110111" "11101110100011" "00001111010101" "11110101111111" "10111000101100" "11100100001011" "00110011100010" "10111000001000" "00101111000101" "10100011101010" "11100001001111" "10101101000010" "01001011110001" "00010001110100" "11110011001110" "00100001101110" "11011100100100" "10111101010110" "10011101110101" "11111011010101" "01001101101001" "10111010001011" "00001001110011" "00101100000001" "01100001011110" "01100010010100" "01001111000111" "11010100001100" "00111111100101" "11111111110111" "11000111011100" "01000110000110" "10110000000001" "11110000011000" "11110011110011" "01011110011100" "01011011101100" "00001100100010" "00011101100010" "10011111011110" "11010101001011" "11100111011111" "10110010001001" "11011101000010" "10110100110011" "11001111010000" "10101101010100" "11100010101100" "11100101001011" "11011111101100" "11000101111010" "00101010010110" "10101111010010" "10111011001001" "00111101010111" "10100000001111" "10100111001110" "00011001110011" "11111100100111" "10011011100000" "00000000110001" "01100001001001" "10110111110101" "11000001011000" "11001100011001" "00100011000000" "00001110011011" "11101101110001" "11011110011100" "01000000100101" "11000010100101" "11111000100011" "11100111111001" "00110110110001" "00010000000000" "11111010011100" "11101110100100" "01000110101110" "01001000100111" "10101111010111" "10110011010101" "00111000100000" "11111110000100" "01011101100111" "01010001110111" "10110100011111" "10101100101111" "10100111101110" "01010100110111" "00110101001110" "00010110010010" "00111011101101" "00000110110101" "00100111000101" "10111000000011" }
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
set ID 335
set hasByteEnable 0
set MemName infer_layer_4_weights_V_9
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "01011110000001" "10100010100001" "00111010111100" "11011111110110" "10111000111000" "10100000010100" "00011001110111" "11110101000001" "11011101000100" "11000101011110" "01010111011000" "10100010110101" "00101101101011" "10110110010100" "00110001101010" "10100101100101" "10111101011110" "11000011110101" "10111010011110" "00011010110100" "01011010001010" "11000001001001" "00011101111101" "01100000000010" "10011111110111" "10101011000100" "00101100101000" "10101001111100" "00001101001100" "00100101110111" "11110010000111" "01000111100010" "11011110011100" "00111101000101" "00010011100111" "11111100111011" "11001011011011" "11000101100111" "00110101000010" "11110100111110" "01001011111101" "01010110000001" "00101110100001" "10100010101011" "11101010011000" "10011100000100" "01100000000111" "11111100010000" "01010010000011" "11111111001111" "01001001001010" "10101001010010" "01010010111001" "10101111000011" "11101000000100" "00110110010000" "00011000111001" "10110111111110" "00101011100111" "00110111001001" "00000001100101" "10110110011011" "00101110000101" "10100011000111" "00101100011100" "10100001100101" "10100100111000" "11011010000100" "00010000111110" "00011110101110" "11101100001111" "11000000100011" "10110001101010" "00110000000001" "11010000010000" "00110101011000" "11101100001100" "01000011000001" "10100111101110" "11010011001001" "00010001011001" "11010101110101" "11111001110001" "10011110100100" "11100110010011" "01100001111100" "11101000111100" "11000001100000" "00100111100100" "00001000101011" "10011000001000" "01001101101010" "00111001000110" "00000101001011" "00111111101000" "11110101001111" "00010001011111" "10011001101110" "00011110001001" "11001111101001" "00101011001000" "11010001101010" "01010011111010" "01010000101101" "11100000111111" "00110111000001" "11001001110010" "11110110000110" "00111010110101" "01010101100110" "11000000100011" "00011111010101" "10110101110111" "01010101011000" "00111010001111" "00100011101100" "11010101100111" "01011101111111" "11111011001101" "01010111010110" "10100101001101" "10101001111110" "11010010011001" "00111010010000" "01011011011010" "01000001010011" "00100010000001" "01011010000010" "00001101000010" "10110010110010" "01010101001111" "11110000100111" "01001010110010" "00011010100101" "01001011111101" "10101011101011" "10110011010011" "11110011000101" "00101110001111" "11000100000110" "11011111110110" "01001011011100" "00100111010110" "00101000101000" "00011001001110" "11111010110110" "10101000110100" "00000111111010" "10111110111101" "01000111001000" "10101011110101" "11100101000100" "11001011101100" "11111100011101" "11101100010110" "11011010100110" "10101110101001" "11100100110111" "11101100110010" "10010101011011" "11001111101111" "11110000011000" "11000111110110" "00001011100110" "11110100001001" "01010001111101" "11110101011011" "10011010001011" "01001101100110" "11001101111010" "10101001011010" "00101110101111" "11010001100110" "01011110100000" "10111010000001" "10110101000111" "00000110101010" "10111001011010" "11101000010110" "01001011101001" "11011100000110" "11001100001000" "01011111101000" "00111000101010" "00011101001001" "11100100100110" "00110111001111" "00100101111001" "01001000010111" "00101100010011" "10011101101011" "10011011001111" "01001011010101" "00101100100110" "01001000100100" "01001101000010" "00011110010000" "11010101101000" "00100000111111" "01011111111111" "00101010001101" "11001000010100" "00001001110100" "00111011011110" "01001011101010" "00111011101001" "10100111001110" "10110001000000" "11011000100011" "11000001010101" "10011100001101" "01011011101011" "00001111000011" "00001111010001" "01100110001011" "10011011010011" "10110100101110" "00011110101110" "10100001011001" "11001000011010" "01000000001011" "00110111111000" "11001100000010" "11110111010100" "10101000101000" "10110001101001" "10100011000001" "11100011110010" "10110110001100" "11000101011011" "11101011100000" "11011001100101" "11100011110101" "10011111111100" "10111010001111" "00101000000001" "00001010100001" "10110100010111" "11100110000110" "01001111110001" "00100100111100" "00101011101000" "10010110100011" "10110001010111" "11011001001010" "10011111110101" "01001100001101" "01100001000011" "00000000110010" "00000101001100" "10111011110010" "00010000000011" "10011000100110" "00010101000010" "10110010100111" "00010110001010" "11110001111100" "01010110000000" "11001111001010" "10100011101100" "10100110010000" "11101101101100" "10100110110110" "11101110010111" "01001100001101" "10011001010110" "11010010111000" "00110011101000" "11100000111100" "11101101100001" "00111001110111" "00110110000111" "01011010100100" "00011110101110" "01001100101010" "01000111010111" "00000111000111" "01011100101101" "11101010000011" "10011111011001" "11100111111000" "11110001100001" "11100001111000" "00101101011110" "01001101101000" "11110110101111" "00000111001001" "00001011110000" }
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
set ID 336
set hasByteEnable 0
set MemName infer_layer_4_weights_V_10
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11101010000001" "10010110010011" "00001100000110" "00100011010000" "01100010100000" "10101101101100" "00111000001100" "11100010001110" "00111000000101" "01001111000110" "00111011001110" "01000110101100" "00111111100110" "01001110000100" "00110111010101" "10111010100010" "10101000000010" "01011010001011" "10100010001010" "00001111101110" "11000110101011" "11110111001110" "10101011111010" "01011110010111" "11010110000000" "10100011011100" "00011001000100" "01100111110010" "10101011000011" "01001110010110" "11100000100100" "00000001111000" "00001000001010" "10111010100000" "11000010011000" "01001101101000" "01000001100010" "01100001000101" "00111100110001" "10111110110100" "01010101001010" "01010101011101" "10111010111101" "01010111101001" "00100000110110" "01100000100110" "11110101000110" "10011101011011" "00101001010010" "11100110011010" "11001111010001" "10111001101011" "10100000111001" "00011000001101" "11000000101001" "00100001100000" "00011100011000" "10010010111111" "01100000000001" "00000011111001" "11100001011111" "00101110110111" "00100011010000" "00111000111001" "00000100010000" "11111001100100" "01000001001001" "11001111000001" "11001000011001" "00010100010000" "01100000000111" "11001001100101" "10111111010110" "11110111010110" "11011000111100" "10011001100011" "10100110100011" "10111100001011" "10011011101101" "00001010111110" "00101111001001" "00011101001111" "00010101010001" "00000000010011" "10011011110001" "00001100000110" "10011010011011" "00000011010101" "01000100010100" "10110100100101" "11010100011100" "11000000101000" "10011001010010" "01001111111110" "11111101000000" "00000110011011" "10010111010011" "11100011001010" "10101000111001" "11111111010011" "11000001011100" "11101011001110" "11000001101111" "00010011111100" "10100101001100" "00100011011111" "00000000101110" "11101111010100" "11001111111101" "00101011101001" "11101011110001" "01000001111100" "11001010100010" "01011000010100" "10011000100100" "11000001001010" "10011101100011" "00110001100110" "00011010110111" "10111100111110" "11110011011000" "11110010000110" "00101000001101" "10111110001101" "11010010100111" "01010000111001" "00100101101000" "11110000101001" "00110110010000" "11110011100110" "10110111110000" "00111100101101" "11011000001011" "00010000101010" "01000101010110" "11001001010101" "00101100000101" "00110000001110" "00010000100010" "01100101101110" "10101101101110" "00100110111111" "11100101101100" "00110001001000" "11110101111111" "11011000001010" "01011110011010" "00110101001001" "00100010110100" "11001010110000" "01010000000100" "10111010100011" "01010100110110" "00001011001000" "10100111100000" "00010010000101" "10110110001001" "10101011100010" "00110001001101" "00110110101101" "11100101100111" "00101100111001" "10111111010000" "00111001110100" "10011010011101" "01010000111100" "11111001111010" "10011001100111" "11011111001001" "00011011001000" "11101110101110" "11111110101011" "11110001101101" "10111011000110" "11001011111001" "00100101000000" "00011111110011" "10110010101011" "01011011001111" "01000001000111" "10101111100111" "11000110110100" "11001110110101" "00101001000111" "00100101111001" "11111100100101" "01000000010011" "00111111100000" "00010110000110" "00010010001110" "11001110110011" "10111010011110" "11011111110111" "11010111001101" "10101001011101" "00010010011100" "01011111001110" "11010101000101" "11101010111101" "10100111001001" "11001000000110" "11111110110001" "00111011000010" "10101100011001" "11001100010011" "01100000011001" "01001011111011" "11011001111101" "11100111110011" "10110001111100" "01100111100000" "10101101101010" "11001011111001" "01001111110001" "10100001000010" "01100010010010" "00001000111000" "10010101100111" "00000101001101" "00111011011001" "11111100100001" "10010111010000" "00000110000010" "10010101100000" "11100110111111" "10101100101001" "01000110111011" "01011100101100" "11110000001010" "00100100010110" "00010011011111" "00001001101101" "11110110011011" "01000011110001" "00111001011010" "11010000011011" "00010001011000" "11100000110101" "01010101111100" "00100110101000" "11100100111101" "10101000111110" "10010111100100" "00101000100000" "01011101001010" "00111011011100" "01000010110100" "01011010010000" "10101100110010" "01001110001110" "01001111000110" "11011011111011" "01011110000010" "10110010011100" "10101011100011" "01000010001010" "11110100101101" "10100001111100" "01000010001000" "00000011100011" "10101011111100" "11011001100000" "10100110000000" "00110100001101" "00110011110101" "00101111001111" "01011100100110" "10100011111111" "00100011110111" "00100111101101" "00101011101101" "10101101100000" "00000011001011" "10110110101101" "00111000001001" "01011101110110" "11000010100111" "01010010101111" "00101101010101" "11010101110110" "01010000100010" "10010111110100" "01010000001010" "10011111101110" "11000010000011" "11000111110010" "11100110111000" "00111100010100" }
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
set ID 337
set hasByteEnable 0
set MemName infer_layer_4_weights_V_11
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10101010001101" "00111010101010" "10111010010100" "00111010011000" "01011011011100" "00100110001000" "00001100001100" "11010010011010" "01010010111001" "01000111011111" "00011101100111" "00111101000110" "10100011100010" "11000110101110" "01010000111011" "00101010011111" "11010111001101" "11101100001000" "11001101001111" "01001111110011" "01100000000011" "10101000100101" "11110001100001" "00110010111010" "00110000010111" "00110101000001" "00111000111101" "00001110111111" "00110010011001" "10110111111001" "10010110100111" "11111110110101" "10101100111011" "11011101011111" "11010010000100" "11000100000010" "00111011001110" "00000001100010" "10111110110010" "11010010111011" "10101011101000" "10100110110010" "01100101110000" "10100011101110" "10100001100101" "01000101010001" "11101010101111" "11011011011010" "01100100100111" "11001101111000" "00111111001000" "00000101100110" "00000001011011" "11100100011100" "11110001000000" "00101100111101" "01001101010010" "11111000000110" "00110001011100" "00010111011111" "00001110111001" "11100001111110" "10011001000111" "10111010111001" "00000110001101" "10101111100100" "10111000110000" "00110101000011" "11100000010010" "01010010011000" "00001001101111" "00000100011101" "00001100101000" "11001111001101" "00110011101111" "00010111011011" "11010001100000" "11111000101111" "11110110000111" "11000111000100" "00011001110110" "01011011101100" "00011000001100" "01010000101100" "11001000010101" "11101010001101" "00001110110000" "00110101111111" "00111001100101" "01000010000001" "11110100000111" "00000100011101" "00001011000011" "11011100110111" "11110001010110" "11111000001010" "10110001110011" "10101110001010" "01100110011101" "11110000010000" "00001100101011" "00100101001100" "01011011000010" "11101001100100" "10111001011000" "11000100001110" "11001111011110" "00111101100111" "00101100100101" "10011001100011" "10110110111111" "00000110111101" "11100011011101" "10100101000110" "11100001000010" "10011001000011" "10110001111111" "00000011011000" "00000001011011" "01011101110110" "10110111101000" "00001001000001" "11101010111001" "10101111001110" "01001000000011" "11111010111011" "10110011111111" "01001001101110" "11001011100010" "01011010101100" "00000001101000" "11010100000010" "11001010001111" "01000011010000" "10110010010111" "01100000100101" "10010101101111" "11000001001011" "11111110111100" "10100111101001" "11101010000101" "00100100000110" "01100000011000" "10111001101110" "01011010110111" "10110000101111" "00010000010101" "01011101000101" "10111010001111" "01010011101011" "00101010001110" "00010010100010" "11000100100100" "00101011001010" "11000110000111" "01001101101111" "11111001011000" "00011100100101" "01010010101100" "00110001010100" "00001001110010" "01100100111000" "11100100111001" "00001101100101" "11100100010100" "11011110011100" "00001011100010" "01000010011000" "11011000011100" "01100000101001" "11111001110111" "00100111010101" "11111101011101" "01001010011110" "11101000100011" "10111110101010" "11011010000011" "10101000101010" "00111110111011" "11011010100110" "11111110111001" "00011101010010" "10101010010100" "11100011111110" "00011010101010" "10011001110011" "11000110000110" "01001011010100" "11110111110101" "00000001001110" "11101000000101" "11101001011000" "00100100010000" "11011111100001" "00101000001010" "00110101000011" "00001011110011" "10111111001000" "01001011110001" "00000000011000" "01011110001011" "10011100110110" "01000001100010" "10100111100110" "10111001011011" "10011111100100" "00011100000000" "00110000100100" "11010111011101" "00110100011011" "11011001111110" "11100111101101" "01001010110001" "11111100000100" "00001111110010" "11110111100111" "01010000110101" "00101100011111" "01010110010010" "11001010011010" "10010101110100" "11001001110110" "00000011101111" "11101101000111" "00111010101111" "11110001101110" "11000010001011" "01001011100111" "11100100100111" "01010000000101" "11111101101001" "00000000101110" "00011001111011" "00111100010110" "00101100001101" "11001111011101" "00101000110001" "11011000011000" "11011011110111" "10111101001001" "00100110011000" "11010101010010" "01010011001010" "10011101011101" "00101111111001" "11010011011101" "01010111011000" "10100010001010" "11010010100101" "11010001001011" "10111111100011" "00111001001011" "00110111000101" "10011011010100" "01100011011001" "00101010101101" "00000010001111" "00010101101101" "00010011100010" "10101000101100" "10110000101001" "10010110101111" "10100000010001" "11010000110100" "11110001011111" "00010101111100" "11101001011001" "00111001100100" "11011100110111" "00110000001111" "10011110110000" "11101000011001" "11000101010101" "00111010111001" "00110100111101" "00111111011101" "01001110001010" "11001000010101" "11101010100010" "00111111110100" "00001101000011" "00010101011011" "00100000110101" "11000011101101" "00101110110010" "00110100100111" "11000001000011" "00110000010000" }
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
set ID 338
set hasByteEnable 0
set MemName infer_layer_4_weights_V_12
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0100001111101000" "0001001000100110" "1110100000011110" "1111110001100100" "1110011101011101" "1110001100100110" "0000110100001100" "1111000011110001" "1110001010010010" "0001011000110011" "1111011110001101" "1111010010111000" "1111011111000111" "1110010100011110" "0000001101011111" "1110100000111101" "0000010101101101" "1110001001110100" "0111101010100010" "0010110000101010" "1110110101100001" "0000011100100100" "0001011101011000" "1110101000001100" "1111100000011000" "1110101001010100" "1111001001010000" "0000101001101100" "0101111000011111" "1110001011110110" "0001011000001010" "0011110100110000" "0101001100010100" "1110100000010101" "1111111111001011" "0000000100001111" "1110111111011011" "0000100100011110" "0001100101110000" "1110101000011111" "0001010010101110" "0001011000001101" "0000110100010111" "1110100100101100" "1110110101010000" "1110011000111010" "0001100100010110" "1101110100000100" "0000100001100001" "1110110101010000" "0011101001000110" "1110011010001111" "1110001001010001" "1110110100010000" "0000011010110100" "0000001101101011" "1111101001001001" "0011101000000100" "0001010110110111" "1111000001000010" "0101001111011111" "1110000011001101" "0111111001010010" "0010101110001111" "0010010101101011" "1111110110111010" "1111110010111110" "1111001111100101" "0000111011010111" "0000101100010010" "0000110110110110" "0000010011100110" "0000111011000100" "0000110110010111" "1110110001001001" "1111000001111000" "0001001111101100" "1111010111100010" "1110110000010101" "1111111001010001" "1111101111010001" "1110001001000111" "1110011000011110" "1011101101110000" "1110110011011110" "0001010001000010" "0000111000001001" "0001000100011111" "1111100111010001" "0100100100100101" "1111100011111000" "0000110101001110" "0100001100000010" "1111011001110111" "0101011010101100" "0010100111000011" "0011010110011100" "0000111011011010" "0000111001000011" "1110111110110001" "1111101110000000" "0001001000110011" "0001011000110011" "1111011011100001" "1110100101111101" "0000010111011100" "0000011101000000" "1111000011100111" "1111010010010111" "1111101110000111" "1111011001101100" "0000000111110011" "1110111011010111" "1110011010100100" "0001001011000100" "0000010110000111" "0001000111000101" "0000010010001011" "1111111010000001" "1111100101101101" "0000011001010111" "0001111001100000" "1111000110100100" "1111110111110100" "0110000011001000" "0001000111100100" "0100010101000001" "0100011011110011" "0100010111111110" "0000111000110010" "1111010000001110" "0000101011011101" "0000010101111101" "0011011101000000" "0000001101100000" "1110010111101111" "0000110010100100" "1111001000101101" "0000100000111000" "1110100010111000" "0001000100011101" "0010011010100011" "1110011111000100" "1111111001010001" "0000010001111011" "1111101001101011" "1010000001011000" "1101100001100011" "1110111101010101" "0001010101111101" "1110111000011110" "1110101111111100" "1110110000010111" "0101011101111001" "0000100100101000" "0001000100010110" "0101001001000000" "1111111101101000" "0100111011010000" "0010100110110000" "0100100010111011" "0000000010010010" "0001100001110010" "0000000001100111" "1110011111010000" "0001100110011001" "0000110111011100" "0001010100100001" "0000001000100111" "1111110000110001" "1110101000000010" "1110100111111000" "1111100010001000" "0000000010111111" "0001010010101011" "1111101100110110" "0000100101000000" "0000111100001101" "1001100001001001" "1110100011100100" "0001000110010010" "0001110011001000" "0001010110100111" "0000111000111101" "1111011011111010" "0100000010011110" "0001001001111011" "1111101101100000" "0100100001100000" "1111010111110100" "0100010011000000" "0100000000011110" "0011000100110111" "1110110001100011" "1110011110011010" "1111011111000010" "0000011001001101" "0000000101110101" "0000101110011101" "0001000011110011" "0000101001100111" "0001000001100110" "1111101011000011" "1111111110100111" "0001011101110111" "0010001110100100" "1111101010011010" "0001101100100101" "1111001110000100" "0001101111101110" "1011111000001000" "1101110001000010" "1110111000001010" "0001011011100110" "1110111100110011" "0000001010100010" "1110011000100111" "0001010001111000" "1111001100010011" "1110011111101101" "0100011001100000" "1110110100110100" "0101000110000110" "1111110011100111" "0001010010001100" "0000111000011011" "1110111001001100" "0001110101100101" "0000110101111110" "0000011101010001" "1111000101000011" "0000100101110001" "1111111010010100" "1111001100010110" "1110100110101011" "0001101011101100" "0000000111111001" "1111110000111101" "0000101011110110" "0001111001011010" "0001000100110111" "0001011011001101" "1010000111011000" "1111100011000111" "0001000100110111" "0000110101010100" "0001010111110011" "1111110001010011" "0000011100010100" "0001011000001110" "0000010010111111" "1110011011001101" "0000000000010110" "0001010010010101" "0100101100100110" "1111011001000010" "1111010011111001" "0000011100011101" "1110011111010100" "1111011101111010" "0000110100001111" "0000000001000010" "1111111000011001" "0000101110011110" "0000110010001001" "1110100000001110" "0000011001010111" "1111000011011010" "1110100101111010" "0001110101010110" "1111010001001111" "0001111000001001" "0000110111100111" "1111110011001000" "1011001101011000" "1111110111100000" "0010000010101011" "1111010100010111" "1110101010010111" "0000111001001001" "0001000000100100" "0000001011100010" "1111011011101010" "1111001101101100" "0010100001110000" "0001001111100000" "0000000101100011" "0000101111101011" }
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
set ID 339
set hasByteEnable 0
set MemName infer_layer_4_weights_V_13
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0100101110101000" "1110101000001001" "1111111000101011" "1110111010101011" "0001011100001100" "0001011110011101" "1110100111011010" "1110111001110001" "0000100000011101" "1110110100111011" "1110111110101101" "1111001111110000" "1110110100011010" "0000111111010000" "0000010011000000" "1110110101100110" "1110111101100101" "1111110100010010" "0000011010100110" "1110001100010110" "0000000000000001" "1110010100111001" "1110011110101110" "0001001100111110" "0000010001101101" "0001110100100110" "0000100111111101" "0000101100001011" "0110011010111000" "1101001110011101" "0101011101110110" "0010011111100000" "0101101001111111" "1110110010101000" "0000011101000110" "1110100111010101" "1111000001100101" "1111110010010101" "0000110000111010" "1111110011010001" "0001010000001111" "1111010100001110" "1111010101010010" "0001000000001101" "0001100111001100" "0001101001010101" "0000011010000101" "1111111100111011" "1111010011101011" "1110010110010101" "0000101111110100" "1110010101001001" "1101110010100010" "0000101010000000" "1110011000001111" "0000011011100010" "1110110100111111" "0001001111100110" "0001010001110010" "0001010000000010" "0110100100010111" "1101110000000010" "0100011110101111" "0100111001110111" "0011101111110101" "0000010000000111" "1111010111000100" "0000101010000000" "0000101000010011" "0001100111001011" "0000110000101110" "1111010110100101" "1111000100001110" "1111011101011011" "0001011110001110" "0000100110101101" "1110101100010010" "0000101111110111" "0001001111110111" "1101100001011010" "0000110111101010" "1110001001111011" "0011110000000111" "0001100100011010" "1110011100110100" "0000110100100010" "0001010110001001" "0000000110110001" "0000110010001000" "0011000100000001" "1111110101110011" "0001011110000011" "0101000011101001" "1111101100000100" "0101011111001101" "0001111111000010" "0100100000010111" "0001110101001110" "0001001010110001" "1110110001010010" "1111000100011100" "0001110110101101" "0000000100001011" "1111110011110000" "1110011111110000" "1111101100001110" "1111111011100110" "0001010011110110" "1110101111010111" "1111110001111000" "0000011001111010" "1111100100101100" "1110100110100001" "0000100001011100" "1001111100001110" "1110010100000100" "1111111101100101" "0000100010100110" "0000101001111111" "0000101000001011" "0000110001110001" "0011111111101111" "0001011101001001" "1110011001100000" "0101001001001110" "0001010111101001" "0011001010100110" "0011000111111101" "0011010101001011" "0001010001100110" "0001011111000010" "1110110011011011" "1111001111110110" "1111001010010101" "1110100101111011" "0001011010000010" "1111110101110011" "1111011100000100" "0001000011110101" "0000001110100101" "1110111100010111" "0000000011010011" "0000010001001111" "0000100000101100" "1110011101000001" "0001000111011110" "1010100111110011" "0000001101010100" "0000001001000001" "0001001110010000" "1110100101001100" "0001100011001011" "0001001111110001" "0010101001111000" "1110011111110100" "1111011101000111" "0011001010101101" "0000100100111101" "0011010000100110" "0011011100100001" "0010100100000010" "1110101011110101" "0000000111001100" "1111000101011001" "1111110001000101" "0000111010101101" "0000011110101101" "0000100100000110" "0000010000010001" "1111011011101101" "1110011010110111" "0000110100000011" "1110100010001100" "0001100111101111" "0001010010110110" "1110100010000010" "0000000010110100" "0000101000100000" "0000100101110010" "0001111001101001" "1111001011011010" "1111110000110001" "0001001000110001" "1111010001011110" "0000010100101100" "0001000101000000" "0001010011011111" "1111110000010110" "0100110011000000" "1110101001011001" "0100011100010001" "0001111001110010" "1111111010011100" "0001011001010010" "0000111100110000" "0001010110000100" "1110111011111010" "1111100111100001" "1111100010001111" "1111010100100010" "0000010111011000" "0000101111111110" "0001000101110001" "1110101000011001" "1110100011000101" "0001000000110010" "1111100110010111" "0001011010011101" "1110100011101011" "0001111110100101" "1010011011011101" "1101011101011001" "0001000001011101" "1111110111111100" "0000001101111011" "1111101111010011" "0000101001001100" "0001010001011101" "0000011111011101" "1111111010101011" "0001011111000100" "0001110111100111" "0011101111110001" "1110010001100100" "1111000111010011" "1111111001111110" "0000110010111101" "0000100101111001" "0000001001101000" "0001000011011010" "1111110101000110" "1111011011110001" "1111100000000110" "0000000100011001" "1111000011001111" "1111010100101011" "1110100001000111" "0001001010110000" "0001010000011010" "0001110111001010" "1111010010100010" "1111011000001111" "1011101111110101" "1110110001010010" "0001101011100100" "0001001100110000" "1111100000001110" "0000111110100101" "0000101100010101" "0000101000100101" "0000110110100110" "1111100011111011" "1111110001101000" "1111111000100011" "1110110101110101" "1111011010010001" "0000100000000010" "0000010110000011" "0001010100101111" "1110110011110110" "0000000100110110" "1110101110010010" "1111011100011110" "0000110000111110" "1111010010010010" "1111001000001100" "1110111010111000" "1111001111001010" "0001100001111100" "0001000000001101" "0000000100110110" "1111111001010011" "0000110010101001" "0000001100001111" "1110101011011100" "0001100001101001" "0000100111001101" "0000010001011111" "1111011111001110" "0000100011101100" "1111110111110001" "1110110011001101" "1110110001110110" "1111110000101110" "0100001010010111" "1111100111000110" "1101100110001011" "0011011100001100" }
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
set ID 340
set hasByteEnable 0
set MemName infer_layer_4_weights_V_14
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11011100100011" "01001111000111" "11011111011101" "11010010001010" "11000101011110" "11001100110111" "11000001011110" "01011111110111" "10110100010100" "11001010010010" "11001011100000" "00100100100010" "11110100110000" "10010100011110" "11010001101001" "01000000001011" "00110110100100" "00111110101010" "01001101000011" "00000111001110" "00101101100101" "00000110110110" "11100110111011" "11011101010101" "11110010001100" "00010100000111" "11101110010101" "10111111101000" "10100111011001" "11101110110111" "11111011111010" "11010001101010" "00010101111000" "01001100110011" "00011001101100" "00001000001000" "00100100100011" "11110011100101" "00110101010010" "00110101001101" "10110110010111" "01010110111011" "01100010110001" "10100000001111" "01010100010101" "00011110100001" "11101011011111" "10110011000011" "11010100000100" "10011100110011" "00001110110001" "00111011111011" "00011111110000" "11000000001000" "00010111111111" "11001111101101" "11111010100011" "00100110000001" "11101110011011" "10100001001110" "11011100110000" "01001011111100" "10110111010000" "10110101001101" "00000011011011" "10111101001101" "00001001100011" "00110100010001" "11000100001110" "10101010100010" "11110010001101" "00100101001001" "00001110101100" "10111000011111" "01001011011110" "00101001110011" "01000010110111" "00001001111001" "10110100010001" "01001110100100" "01011100111100" "10011110000110" "10111110010011" "10110011001110" "00010100100101" "10100001010001" "00100010011100" "01010111001011" "11111011000000" "11000110001101" "00111011111100" "00110000000001" "11011011001000" "00110110010101" "10110010111001" "00011101110001" "11011001000110" "00100010111101" "11100011101100" "00101110010100" "11111100100001" "00000011110101" "10111100000001" "11011011010111" "00011101001001" "01100001001110" "10101000001110" "10111010011011" "00000011111101" "01011110001001" "00010010000101" "11001100111000" "00111011000010" "01001110111110" "10010001000001" "01000010001111" "00101100100011" "00010101100110" "10101001011111" "10100110000111" "01100001111010" "00101100010111" "00011100101111" "01100011011001" "00000001100110" "10011011000001" "10100011110000" "01010110000101" "01010110000110" "10011110110111" "11010010101001" "00010101110101" "01011001001100" "11110010101100" "01010000111111" "00010110001100" "11101100011001" "11001101011111" "00101111000001" "01000010010101" "10111110100011" "11111111111011" "11100110010011" "01000011100101" "10110011010111" "11001101111100" "11111111011011" "00011110001101" "01010100110000" "11010011110000" "11010110100000" "11111100111110" "00011111110111" "11000110011011" "11101000000110" "11110011101000" "11011100001100" "00010010001010" "10101011101100" "11011000000111" "00010001001001" "11000100111001" "00100010100000" "10100011101101" "11010000001101" "11110010001001" "10101110111010" "00101000101010" "11011011100011" "11011000110000" "00110101100111" "01001000000010" "00010110001001" "00000110110111" "11100100010101" "10010011110000" "00101100010111" "11111000011011" "10011010110001" "01000100000011" "11110110010011" "11101001111011" "11100111000111" "00111001001001" "01000011000110" "10110100011010" "01000010011000" "11010100000001" "00110010111100" "11101010110001" "01000110100101" "10011011011111" "00111001000111" "00001001011011" "10101010010101" "00101100000100" "11110111001001" "11111000000010" "10110100011011" "10111000000011" "11110110011000" "11110110100000" "10110101001100" "11001001011100" "00000100101001" "00001110001011" "11000011101011" "11000110111111" "01001110000001" "10011001111101" "11111010101110" "00100110111011" "11011100001001" "00000101010000" "01001110001010" "01011110001011" "00001000100010" "11101001010111" "01100001000100" "00001001010011" "00111111100110" "00110101101011" "11010111000111" "00010101100011" "11000011100010" "00010000000110" "01000111001100" "01010100011111" "00110011100100" "01001111111000" "11001110011100" "11110100000010" "11011011100101" "10101010010101" "11100101000100" "11101101000011" "10111001101110" "10101011111100" "11101010110100" "10010010011011" "11001101001101" "11010001011110" "00111000110110" "00101000110101" "00010000111110" "10110010100011" "11110110101011" "10011011001111" "11000101000110" "10011011100001" "11000000101001" "11001101000110" "11000101111100" "01001100001011" "11001011010100" "00101001010011" "00101000000001" "11110000000101" "11000011010100" "00011010000101" "01010001010011" "00000100110011" "00110100110111" "01100101011100" "10110011011010" "11110101110010" "00010010010110" "11000001100011" "00001100111100" "11111100110101" "10100000111000" "10110101001010" "11000001001110" "00101011101110" "11011000111110" "11000101000010" "10111001101001" "00001010100010" "01001111111010" "10111110100011" "00011101011010" "11000111010110" "01100000111010" "11011111011000" "00010111000101" "00001110000011" "00011110101000" "11011101001110" }
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
set ID 341
set hasByteEnable 0
set MemName infer_layer_4_weights_V_15
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1110101011010101" "0001010010000110" "1110011011010001" "0000010010110110" "1111000001101110" "0000010001110111" "0000001100010010" "1110110000011111" "1111101000010111" "1110100001100010" "0001000001100010" "0000101101111101" "0001100010111110" "0001000110111101" "1110101001100101" "1111001110000000" "1110011000001000" "0001000111101001" "0000101000011100" "1111011011010110" "1111111001111011" "1110011101100011" "1111001111101110" "1111000010011110" "0000010101010100" "0000010000000111" "0000110100000111" "1111010001110001" "0000010011110110" "0000110111000010" "1111100011000111" "1111010011001001" "0000010101101110" "0000010111000100" "1111010111111101" "1111001010101101" "1111101100000101" "0000101000101100" "0000010010000110" "1111000000111101" "1110101010101001" "1111010111111110" "1110011001110001" "0000100001111111" "0000101010001100" "1110010110000000" "0000010001011110" "1111010101000100" "1110011111011010" "0000100001010110" "0000011010001011" "1111110011001110" "1111001100111010" "0001001001011011" "0000000111011100" "1110110111000110" "0001001011110100" "1110101111100111" "1110100010011010" "0001010010111110" "1111101111100001" "0000111101111000" "0000001111010011" "1111010101110001" "0001000001001101" "1111011110010011" "1111111111101001" "1111110100100111" "0000101100001011" "1111111001101111" "0000001001101011" "0001000011010011" "0000001011111111" "0000010100101001" "0000111000010111" "0000101101000111" "0000000110010011" "1111110000100001" "0001000101011111" "1111110000000000" "1111001010110011" "0000000100100000" "0011001110100100" "0000011110000110" "0001011011111001" "1111001000111011" "1111001000100001" "1110101000001011" "1110110101001000" "1111011000110111" "1111101001111001" "0001000111010100" "1110001000000110" "0001010001000010" "1111001011001001" "0000111101111010" "1111100001111110" "1111111111001110" "0001100111010011" "1110100001110011" "0001000011100100" "1111110100111100" "0000011100011111" "0000110100101010" "1110100111100001" "1111100101100111" "1111000001011000" "1111001011100101" "1110100100010010" "1111001110011011" "0000100111111110" "0000010101011001" "0000001100011001" "1111111111010111" "0010000110001101" "0001101110001001" "0001101011001100" "1111011100101110" "0001010000011111" "1111001011000000" "0000110011000001" "0000111101011110" "1110101011001101" "1110101011110111" "1111100000010101" "1110011110001101" "0000000011111100" "1111010100000010" "1101110001000011" "1111000011010111" "1110100110101111" "0000011001100001" "0000000101110101" "0000110001111011" "1111011110000000" "1111101110101001" "0000111000001110" "0001100001110111" "0001011101000010" "0001000000011001" "0001011101001100" "1110010100010110" "0001100000000100" "0000100110111100" "0001011011011000" "1111111000000011" "0010000101010000" "0001010110000000" "1111110010000011" "1111011111001000" "0000010111111100" "0001011001001000" "1111111101001010" "1110110100101011" "1111001011110111" "1111110000110101" "1101110100100101" "1111000101100111" "1101011011110101" "1111011111010110" "1110110000110101" "0000100011001110" "0001100100110111" "0001000100000100" "1111111110011000" "0001010110001111" "0001010110100101" "1111100110000100" "0001001100110000" "0000000011111111" "0000110101011111" "1110011101000011" "0000000101100001" "0000100110110111" "0001100100001000" "1111100011000101" "0000000001100100" "0000111100000111" "0001110110001010" "0000011001000000" "0000101001100111" "0000011101101101" "0000101101101001" "1111100011000011" "1110100010111111" "0000101101001111" "1111101011000100" "1110100011100111" "1111110101101010" "0001001110101101" "0010010110110100" "1111010110111010" "1101001101111100" "1111100001111111" "1111001011100000" "0000011000010110" "1111000100110100" "1111100000000011" "0000101011101011" "1111001101111010" "1111010001101011" "1111101110000011" "1111000011011110" "1111001000011011" "1111011101111101" "1110010110100101" "1110010111111110" "0001100001010001" "0000011011010011" "0001001001110001" "0101110011000110" "0001110010001100" "0000001100110011" "0000110100110010" "0001010011111010" "0000100101000000" "0001000001001101" "1100111110011100" "0000001001101001" "1110010111101101" "1011011110011101" "0000100111101011" "1101101000011100" "1110000000011100" "1111001111101100" "1110011001000000" "1111101110111111" "1111101010010111" "0000111011011010" "1110111101011111" "0000111110100110" "1111111110110011" "1110010101110100" "1110100110100010" "0000101011011101" "0001011101100001" "1110101100011010" "1110101010010001" "1111101111111101" "0000100010111110" "0001100100100001" "0001000010110101" "0100101110001001" "1101111110000111" "1110010001000110" "1111011010100001" "1111011001110100" "1111010000111111" "0000100010101000" "1110100000110010" "1111011001110100" "1111111001100101" "1111001110000001" "0001001001100011" "1110000111110101" "1101010101011110" "0000111010001010" "0000000001110010" "0001100010011101" "1111110000111010" "1110100000111100" "1110101001111001" "0000111000100010" "0000101111000110" "1111100110111011" "0000100010110000" "0000111000110111" "1111010110111100" "1110110001011010" "1111011110101101" "1110100010111111" "0001010101000100" "0000111001011000" "0001100010110001" "0000001110111000" "1100010011000100" "0000100100100000" "0000100110010101" "1110011010010001" "0000011010100011" "1110100011100111" "0010001011000000" "1110011010110111" "1110110110100101" "1111001001011010" "0000111110110110" "0000011100110110" "1111100101010110" }
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
set ID 342
set hasByteEnable 0
set MemName infer_layer_4_weights_V_16
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "000111100111110" "000111010100110" "111010110011001" "001110000000000" "110110001001111" "110110010010001" "000010100001101" "000111000111111" "001101001010110" "001000010110110" "000000100101110" "111110010011101" "000011011011000" "111110001010110" "000000001001000" "111100011101101" "001100100011100" "111010000000111" "101111001101101" "111001110011010" "001011000100100" "110110101001000" "000000001001010" "110100001100000" "111100010100110" "111010100011011" "000101101010011" "110110011011011" "110010110010110" "110101110100000" "111001001110100" "111100011001101" "111011101101100" "111001001111001" "001010101100000" "001100101111110" "110111101111100" "110100000001110" "001011111011110" "111000000110100" "000111000110110" "001011101001000" "110110011111110" "000110010100001" "110111110011000" "111000101110110" "110101001010100" "000001001011010" "111101000011110" "000000001101111" "101111110001100" "000111010100101" "001110001010101" "110110111000011" "111100000010100" "000110101001100" "000100110100001" "000010010010111" "000110110010101" "111010011100000" "110111111010110" "001011001100000" "111011010101011" "111011000100101" "000011000011011" "000010000101111" "000110101110100" "001010000000000" "000011001110111" "111011010100001" "111011101011101" "000100111000001" "111000001110110" "110110001011011" "000110001001010" "001000011000011" "001100001010001" "111111100111110" "000011011111010" "000010110011011" "001011100101011" "110111011011100" "010101011100100" "111100001001110" "000101010010100" "000011101101111" "000000111010100" "111101100001010" "111001010111111" "111100001000000" "110100000000001" "000100000110010" "110011000011000" "001001010001101" "101111101010111" "001001010010011" "110000110110001" "001000001010000" "111000001000011" "001101110000000" "111100101111110" "001001010100110" "000000101110100" "001010100111011" "000111001010100" "110111100011111" "000001001001000" "110101000100000" "000111010101000" "001110011010111" "000010001000110" "000100011100011" "000110000000101" "001101110000111" "111001101011101" "111111011001000" "111011010100100" "111000100111101" "000010101110101" "110011101000011" "110101010000011" "000111111101000" "111001010101101" "001000001100101" "101110000011101" "111111110110111" "110011001001111" "111011011001011" "001101001101011" "000111010100101" "111111111111010" "001001010111010" "000101101111011" "000001100011010" "111010000011000" "000100000100110" "110110010110010" "110111011000100" "000000000101101" "111101101001110" "000001001011010" "111010100000100" "111110110111000" "000111011110101" "111000101011011" "111011000001100" "001000101011111" "010001001110110" "001000001001011" "001101000011011" "111100101000110" "111111001000100" "000101000101011" "110101000001111" "110110010001111" "000010100010011" "111001101011011" "110101010011010" "001000011000011" "001000110110101" "111001101011010" "111101010110111" "110110010111001" "111110000110101" "001011001101111" "110011111011101" "000101010101001" "110101001001010" "000100110111001" "001011110001010" "000110011000011" "001001001011011" "110111001011111" "000111110010110" "001000010001111" "111111001101011" "111101110111000" "001101011010111" "011100011101100" "001000010010011" "001101001000011" "110101001001011" "110011100110101" "111101000100011" "001010110111111" "111110110010110" "110101101111011" "000111101011001" "000011100010000" "110110110110011" "101011100011101" "001001101100111" "111011111110100" "110111100110110" "110011001010010" "001111000010001" "001001011100101" "001000011110000" "001010010000000" "001001000101101" "001101010110110" "000110010100011" "000100011111110" "110110001000101" "110100000101101" "001001111011101" "111111001001010" "000111100100100" "111100111111101" "000101101101010" "110010011010000" "110001011011101" "001101000100110" "001111101101000" "000011110111001" "000101000110001" "001011010111011" "001100001011001" "000000010111000" "001010101101101" "100100100000100" "001000001001101" "111101010011010" "000011000111110" "101100110000001" "111100010101000" "000100110011111" "000011100110011" "110010101010000" "001000101001110" "001001110100010" "000110110101100" "111011010100110" "000001000110101" "110110101000000" "000111100100110" "111001000111011" "110100110110000" "000110011000011" "000001000000010" "111110000001010" "111110001100110" "011110001101110" "010111000011001" "000010100011110" "111100101001011" "000100110001011" "000001110010101" "111111011001000" "110110100011010" "000010010111111" "000110010100101" "110001100000111" "001001000100000" "101011101010000" "111101011001101" "000111110111110" "000110110011000" "000111000110010" "000100110101001" "110010110000001" "111111101111001" "000010001010100" "001011101001101" "001011011001001" "110110111110001" "110101010010111" "000010101001000" "000001111110101" "000101000100111" "001011001100001" "110011001001110" "111010101110011" "000011010001001" "011001011111011" "010010001111001" "000000110111101" "111001101010000" "000111011011001" "000000010100011" "000011111010010" "101100110001101" "001010010110110" "111010100001001" "110011100101111" "000111011010000" "101101010011110" "111111000000010" }
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
set ID 343
set hasByteEnable 0
set MemName infer_layer_4_weights_V_17
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1111001100111100" "1110101011111001" "0000100101111010" "1111101100100111" "1110111110000001" "0001000010110001" "1110110000110001" "1111110001111110" "0000011011001111" "0000011100000011" "0000100000110011" "0000011110110111" "0000010010000011" "1111000111001001" "0001000000000001" "0001000111101000" "0001001110110110" "0001100101001111" "1100101110110110" "1101011001000000" "0000001111011011" "1111000001111001" "1110111110000000" "1110101101010110" "1111100010100100" "1110101010110101" "0000000111001011" "1111010110111011" "1100010011100011" "0001010001110011" "0000001100001110" "0000111001000011" "1110000010010111" "0001001000100111" "1110100111001000" "1110101001101000" "1111011110100001" "0001001000011001" "0000100010110011" "0000000011101000" "1111010101001110" "0000110101101101" "1111011100110100" "0001010011000000" "0000000001011100" "0001000111110001" "0000010101101101" "0001010001110010" "0000111101110101" "1111110111001011" "1011111000100110" "0000000001101111" "0001101001100101" "0000111111010010" "0000001011000010" "0001010010100010" "1111011011011001" "1110110111110000" "1111011101010010" "1110110000011110" "1100001111111000" "0000010000110011" "1101101010101110" "1111001001101100" "1111110110100011" "0000101010100000" "0000011010000000" "0000011110100101" "0001010011101100" "1111101110000011" "1111110001100110" "1110100001100111" "0000011110010011" "0000110001101010" "0000001000000001" "0000011111111110" "0000010010100000" "0001000111010001" "1111110001000111" "1111011110001101" "0001010010100111" "0000010110001110" "1101110101000011" "1111111010101010" "0001011000011000" "0001001001110100" "0001011011000011" "0001010110010100" "0000011011111000" "1111001000110000" "1111000110011011" "0000100001110110" "1100001111001111" "0000001100111110" "1111100001011011" "1111010000010101" "1111011111110000" "0000100100100001" "0000000011110010" "1110110010001101" "1111101010110000" "1111101110111011" "1110101000110011" "0001010110101000" "0000000011011000" "1111100111010011" "0000010001010011" "1111110101100010" "0001000011000110" "1111001000110010" "0001010111111110" "1111010110001111" "0000001100010001" "1111111111011010" "1100010000101011" "1101000011100110" "1111010000101011" "1111000011101010" "1111001011001110" "1111011110101101" "1111010011000001" "1111111001000110" "0000011111111110" "1110111111010000" "1101011001000011" "1111001001000110" "1110011110011000" "1101010000111000" "1110110101101011" "1111011110000010" "0001100101100011" "0000011100000000" "1111100011111000" "0000010100100000" "1110111001010100" "0000110110011100" "1111100001101000" "1110100001001111" "0000111101000111" "0000100011110100" "0000101110001100" "1110101011010110" "1111001001010100" "1110111100011000" "1110110111010110" "0001010111100101" "1100000001101011" "1111100101111111" "0001110010010001" "0001100110111100" "0000011001111011" "1111100000111100" "0000010011100011" "1111111101100100" "1110110001111001" "0000111000001100" "1100010100111011" "1110100101011011" "1100110000000100" "1110000100001001" "0000011101000111" "1110110101011011" "1110111011100101" "1110101010110110" "1111100001101110" "0001000110100110" "1110011100110100" "0001010001111111" "0001001100110111" "0000101010110011" "0000100101110111" "0000000101001101" "1111101000001110" "1111011000111100" "1111011000100001" "1111000000100010" "0000010010000111" "1111010001011111" "1111011110001011" "0001111101010100" "0000101011100001" "0001011000010010" "1111110011010001" "1111010010001001" "0000100101111111" "1111100010010100" "0000110100001110" "1111011110111110" "1100010011011001" "1111111101011101" "1100010101100101" "1111011011110000" "1101010101100010" "1111010001011110" "1111011111011110" "1110011100001010" "0000101100110111" "1110110100000100" "1111100111011100" "1111011101100110" "1111111010000010" "0000010011111001" "0001010001010101" "1111011111100110" "1110100011001000" "1110100001000011" "0001100010011010" "1110011110100101" "0001100101011000" "1110001010011111" "0101010101100000" "1111100010001001" "0000110011010101" "0001000101111001" "1110100100110111" "0001000011101110" "1111001111011100" "1110100111010100" "1111000100001111" "1110100110001010" "1101001010010101" "0001011100000011" "1111000000101100" "1111111010010110" "1011010000110111" "1111111100001111" "0000101000111000" "0001000101001101" "0000010100110000" "1111001100000111" "0000100100010000" "0000100101111000" "0001001111011000" "1110111111110101" "1111111111100011" "1110011001001100" "1110100011010000" "0000100100010110" "1111101110111111" "0001100011011010" "1111000001111000" "0000111101101100" "0100100101101011" "0001001001110000" "0001001010101000" "1110010101000110" "1110110011110011" "0001010110000010" "0001011110000101" "1111011010100001" "0001001001110011" "0001011000010001" "1010000011001101" "1111110101000100" "1010011111110101" "1110001000100001" "1100001000110011" "0001100000011111" "0001011110011100" "1111111001100101" "0000111110000000" "1111000010111000" "0000010010000111" "0000100101011110" "0000101001111101" "0000011010011000" "1110101111000000" "1110101111111000" "0001000111000101" "1110010011101100" "1110111000111100" "0001100110101000" "0001010110101111" "0000010011001110" "0110110000011110" "0001101001111001" "1111001111100101" "0000100100001011" "1111111011111111" "0000111000101001" "0001011101110111" "1101111011100111" "1111110000110111" "1111001010000100" "1010000011100110" "1111011000110001" "1010100001110000" "1101111101110110" }
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
set ID 344
set hasByteEnable 0
set MemName infer_layer_4_weights_V_18
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00011110110111" "10010011001101" "01010011001100" "00010000011011" "01010100000111" "11000000011100" "10100001111000" "00111110011010" "10101110010110" "00100111001001" "11010011100100" "11111001110101" "10111110000111" "11110100100000" "10101011110111" "10100000000010" "11101010100101" "11110111111101" "00111101100110" "00100111111111" "01010100101010" "11011101010110" "00100100100110" "10110011001111" "01100000101110" "10100000111101" "10111101001001" "11011100011100" "11111000000001" "01010001000110" "01011101111010" "00011110110000" "01000100000000" "11001010000010" "11011111000110" "10110011100111" "01000000111000" "10111101010111" "00010100001101" "00100011101100" "00110000100000" "01011000000100" "11111010001101" "10100011111001" "01000110010000" "00110010111010" "11111111101101" "10010100000111" "11001100000101" "00110001100110" "11101110100110" "11011001101000" "00001010101101" "11111100111011" "01100110100111" "00111011011111" "01000000001000" "11001000011100" "11011101110101" "11111010101111" "00111000011010" "11000010101011" "00100101101101" "00111110010101" "11001011001101" "01010001011101" "11110100110000" "00101001110111" "10111011110111" "10010111110001" "10110010100011" "10111011010100" "11010000101101" "11001011000011" "10101100100101" "00001100110100" "00100100001001" "00110001001110" "11100100011101" "00011111011010" "00000000010000" "10110110001100" "00110110010111" "10100010110011" "11011111111001" "01011000001101" "11111000110001" "00000111011000" "10111101011100" "01010010101100" "01001111000100" "10111011001010" "11100111111001" "10010011110110" "11110101011111" "01011011010101" "11111011100101" "00010010011000" "11110011100000" "11011000111001" "00111000011011" "01011100001101" "11101110100101" "00110011110100" "11010101101001" "11010000000011" "01001100110101" "00110011001011" "11011010011000" "01011101001000" "10110111101000" "00001001101001" "01000100011010" "01001011001001" "00100000001100" "01011000000110" "00001110111001" "10101000010110" "00100000001110" "11101110110110" "11101001110000" "10111101010010" "01011011010000" "00011001111011" "11110111110000" "01000101011000" "11010111010000" "11110000101110" "11001001011010" "00010001111101" "11011010000011" "10110000011001" "01010010000101" "11100111011100" "11000101011100" "11001101001001" "11010110100110" "00111100101000" "10110001111010" "00101100011010" "11010101010000" "11101011111000" "11100000010011" "11001011101100" "00101101010000" "10101101110010" "00110010101010" "00000010000110" "11110010010110" "11001011001100" "01001001110100" "10100110110101" "00010001011000" "01010001100010" "00001100110110" "01000001010001" "00000000010010" "10010001100100" "10101000011111" "01010111111000" "11100000111110" "10100111101001" "00111100101001" "11111101000010" "01000010010011" "00110111000111" "01010000000001" "00100001100100" "01000010111111" "10101010011011" "00101110111100" "11100101001100" "11011101000011" "00011001100111" "00000010010011" "11100101101000" "10011001011010" "11000001111010" "10101000100010" "10101010111100" "11110111000010" "01001010000111" "00111010000101" "01000100010110" "11100111010101" "10100010011010" "10100111000100" "11101010110100" "00101100101001" "11010000011110" "10100010001001" "11110001110011" "00111011100101" "11110011000110" "10110101001101" "11000110000000" "11001000101001" "10011000000100" "00001100010110" "11100110111111" "11111010111011" "11000011100010" "00100101000101" "11000011011110" "00100000101111" "00000110010011" "01001010100100" "11010110011101" "01000011010100" "10110101000110" "10110101110101" "11110001010010" "00101010110100" "11010111110111" "11011101101010" "00000011111110" "10100000110100" "01000101100110" "00001111110111" "11001010011000" "00001010110011" "01000100011001" "00001100101100" "11110001110001" "00011101011100" "00101110110101" "10101011010101" "01011011011111" "10101000111010" "00110000000110" "00100111100000" "10011011010110" "00010101111011" "00111101101101" "10011001011101" "00100110011111" "01100111110001" "00001010011000" "01100011110000" "00101010000001" "11010110101010" "11111100011110" "10101010101110" "01010110000010" "00110110110001" "10100101101111" "01010001010110" "00001100001010" "11111000000110" "00110101110000" "01010110111110" "00111111100101" "00011001000010" "00011001000110" "00010001110000" "00011010011011" "00001000110101" "11001001111000" "01010110101011" "11001001010011" "01000010100101" "10111000010101" "01011001010000" "01010010010110" "00111100000101" "10111011011000" "11010011010000" "11011111110111" "10011101000010" "11011011001001" "00110100111001" "10111110010000" "00111000110011" "11001011010010" "01010111101100" "10100000100111" "10100110100000" "10111001011011" "00111110001001" "01001011011001" "11101000111101" "10110001000001" "10101100101011" "00100011001001" "11001001111100" "10100100000010" "10010100011010" "11111001001110" }
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
set ID 345
set hasByteEnable 0
set MemName infer_layer_4_weights_V_19
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11101111000011" "01001110011100" "00001010011001" "01001111111011" "11111101111000" "01001110010001" "10110100000011" "01010100101001" "10011011001010" "01010010001010" "00001000110011" "10101001101000" "10111111001101" "00011010010100" "11010111100001" "11011011001011" "11101101100011" "11100001100100" "00101101110110" "00010111011110" "00000101111101" "10110111011101" "11110101000100" "01001001111001" "00101101000000" "01010001001110" "11000010110001" "01000001110101" "11100011100010" "00101111111111" "01000101101101" "11101011000111" "11100101110011" "01000011000101" "01010010111110" "00111100000010" "11100010100001" "00111011101010" "10101101100010" "11100100011000" "11011111000010" "11110001111000" "00011011101100" "01010010001110" "00100101001100" "11011110111100" "10100010110110" "10101000011011" "00100011011000" "00100110110001" "10111000111110" "00100111111100" "11100111111000" "10101110111001" "01011100000101" "11000010001111" "00101010110011" "10110101001011" "01001000100001" "00100110111011" "11011000011001" "10011111101011" "10101011100001" "01010110000111" "10010110110011" "01000100110110" "10110101011100" "10110100111011" "01100011110100" "01011000111100" "00010010011111" "11011000101101" "11000000101101" "01001110000110" "01100100011111" "00111011001110" "00110010000101" "11111000110100" "00111000010011" "11110100011000" "11101111001110" "00000001000100" "00000101101110" "00000001010100" "10111110110110" "11101011110111" "10111000101001" "01000100101011" "10111001101100" "00011101111110" "11101111001011" "00101001110110" "01010111011001" "00111100000011" "00101001101101" "00001100110001" "00010110100011" "11011100110000" "01011100001111" "00100001101110" "01000111110011" "11100100000101" "01000111101111" "11111001011101" "10011110100001" "11010100111000" "00000010010011" "01001001001010" "11100000101010" "10111101001001" "01001010110100" "00010001011111" "00000110111110" "11100101010001" "00010110101010" "11001001111110" "11110001001101" "10010110111111" "00001000010000" "10011101110001" "01011000100000" "00111000010001" "00111010001110" "01000101100010" "00100011111110" "11110010011111" "10111011000000" "01001111000001" "10110101000101" "00011101000111" "10011010000001" "11011000100110" "11011100100001" "11110101010110" "11011110000001" "10101110100000" "11110000000010" "11010010001011" "11110010010011" "00010101101101" "11111110100000" "11011000011110" "11010011011000" "10110001000111" "00101010010011" "00101101010000" "00110000100000" "11110011100101" "11001100111001" "11110001011010" "10101110001000" "11011011111100" "11101000011011" "01010101010100" "01000100010011" "01100000000110" "10101000010111" "00101100101101" "00000010110000" "10110111011011" "00101000010111" "00011111100110" "00001011110010" "10100001111100" "00111101000010" "11100001010111" "11110001111000" "00110000110000" "00110100000001" "01011011000110" "00000011111011" "01011000011001" "10100111000001" "01001100000000" "00001011010110" "00000001110001" "11000011000010" "11111101101011" "01001001100011" "00101100111110" "01001110110110" "01000110111111" "00110011110100" "00001001101000" "01010101111110" "10110111010111" "11100001000011" "01010100000100" "00000011100100" "01011000001100" "11000101010000" "10110011111110" "10100111001010" "01001011111001" "11101111011010" "11110100001000" "11111111000100" "10101000100010" "11101111001101" "00100111111110" "00001110111010" "00001000110110" "11110010001001" "00000010111011" "11010001101010" "00010000100010" "10110011001101" "10110100011010" "00100010101110" "00001110110100" "00011110001001" "10110110011001" "10111000111100" "00010001011010" "10110100101010" "00111000010110" "11111111100110" "10101100000011" "11100000100100" "00001001011010" "01001101101000" "01001110111101" "00110011111100" "01000110000010" "01100000010010" "01000111101001" "10101111001000" "10101100101011" "10111011100000" "01000011011100" "01100101010011" "01010100101110" "00001100101010" "01011101010110" "01011000111000" "01001001011011" "01001100100000" "01000001111100" "01100100000110" "11110011111111" "11001000011010" "00001111110001" "11100000110100" "01010010100011" "00000111010111" "11001111000100" "11110001110000" "10110011011100" "11100100101010" "11111011111111" "10101011100111" "00100010011000" "11110101000111" "00000111011000" "10100101100101" "01100000001110" "11010100110001" "00111110001010" "11110111100010" "10011011100110" "01001011010011" "10101111111010" "00101010101001" "10100100111111" "10100100101010" "10110010010111" "11010111111101" "11000110111001" "00101110111101" "11100101000000" "11010011000010" "10011011110001" "00100001001010" "11101101111001" "11000101100110" "10011001111110" "00101111111100" "11110110110110" "01001001000100" "11101001011100" "00111101001100" "00001111101100" "01010100011111" "00000101010011" "11101001001101" "10110111011101" "11011010000100" "10111110110000" }
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
set ID 346
set hasByteEnable 0
set MemName infer_layer_4_weights_V_20
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "01000110000110" "00101100110010" "10111000111010" "01010101011101" "01011101110011" "01010010110000" "00101111110010" "01100011000001" "11011101100001" "11001101000001" "00011010001100" "00100110110100" "11100011001010" "00101010011001" "10100010000111" "11111000000010" "00001111110110" "00000100001010" "00001010101100" "11000001001100" "10100100000101" "00010111111100" "00101011011100" "10110000000101" "01011111011010" "01010011111000" "11101110111101" "10010111111101" "01010110001100" "11001100100010" "00101001110111" "10110111011000" "00000010111011" "10011100001000" "01011100111110" "10110100111111" "10110100010101" "00001010100111" "10011101100101" "11110101010011" "00001000001000" "11010101110011" "11100110101010" "01100000101101" "00100100010111" "00110101010010" "01010011010000" "10001001011001" "11101101010111" "10010100111110" "11000011000101" "10011101110111" "11010001100110" "11101100101011" "11100001100001" "00100101000011" "00011100011111" "01000011000010" "01001110001010" "00001000101011" "00111100110111" "11010110010111" "01100001111000" "11101101110111" "11010011010011" "00010001110010" "11011011010111" "01011110010011" "01010001011001" "11011101000000" "00110000110110" "10111001100110" "11010101001101" "11000101101001" "11010000011100" "11100100101101" "11101100110111" "00110010110011" "10110110111010" "01001011001100" "00110111100110" "00111000000011" "11110111111100" "00100100110111" "11111100100000" "01010110101001" "11000101000101" "00001100011101" "10111101111000" "01001101011110" "11011010101011" "01011000000010" "11011000010011" "00110000111011" "01000011100100" "00101101100101" "10101101111111" "10101110100101" "10111111110000" "00011001101111" "10110100111011" "01000100111001" "01010001010000" "11011101100110" "10100010101001" "00001110101101" "11110010100001" "11010001101110" "11101010011100" "01011111111101" "01010000101000" "00111101100010" "00000000011100" "11000111001110" "11011111001000" "11011001101010" "10110000010101" "10010110010101" "11101001010011" "01000101101010" "10111011000000" "00011001000011" "00011000000100" "00000011100111" "01010011000101" "01011011101011" "11001010101000" "11110110110011" "10101001000010" "10110000101010" "11010001001101" "11010000111100" "01100011001111" "01001011110111" "11101100101000" "00001101001110" "01000101010111" "00110110100111" "10111100011010" "00001100001111" "01000101000101" "00101000111010" "01000011010110" "00010001110000" "00111100101011" "11101101111101" "11001101011011" "00001111011000" "00101011111111" "01010011001011" "11001111001000" "11010110111000" "11101101111100" "11100110110110" "11001110101010" "00101011110110" "01001010110101" "01001001001100" "11001011001000" "11111000001111" "10010100010110" "00100000110111" "11111111011111" "11011001000101" "00101110101110" "01011100111001" "11010000011100" "00110010100111" "01000101110000" "11110111000110" "11110110010011" "10011000101011" "01100111010111" "01010011100110" "00101100111001" "00000100110001" "10110111101111" "00011100000111" "10011001110100" "11100011010111" "01000100111011" "00111110001111" "00010010010100" "01001100010110" "00011100010011" "11000010101111" "10111100111111" "00001001111111" "00000000110110" "00111101010101" "01011111100111" "11010111111010" "11011101011011" "00101100100100" "01001010101110" "11110111111101" "11111110010000" "10111100111100" "00011011010111" "00000001110101" "11100110010111" "00010001011001" "11000011101010" "11001000011110" "11110011101100" "11110011010001" "11001100001101" "00101100010110" "00100010110110" "10011010100001" "00000100000011" "00000111101000" "11011111001000" "11011011011011" "01011110101001" "10101101010100" "11101101111100" "10111110101010" "11101101100100" "00100101110000" "00010101001111" "00011001111011" "00011010100100" "00011100011111" "11101001011011" "11101001101001" "00100010111000" "10100011111101" "10101000101000" "01100001111110" "10111001000011" "00000001001110" "10011111100010" "10100001111111" "01001101100001" "00011110111000" "00101101111101" "01011100000010" "10110100010001" "01001010110111" "00000100111010" "00010101111111" "11101001010100" "00010000001100" "10010101011100" "01000111110110" "11110011000110" "00011111011100" "10100100100110" "10100111001010" "11011100001000" "11111011000010" "11110100101100" "11011100110111" "10101001010010" "11000011111100" "01010010001010" "10011011101110" "01001110010101" "11100000010011" "11101101110001" "10110011101110" "00111100111101" "11011010101100" "00100010000110" "11101111110011" "00011001001011" "00011010011111" "10100011001010" "10101101001001" "01100101011111" "11001100010001" "01010100001010" "10100101000110" "01010100100011" "00110000110100" "11001010000000" "00111010011110" "11101101011010" "01010111111111" "11111100100101" "00110111100110" "00000111100010" "11111110001011" "10111001000101" "11111011001101" "01001100000001" "10110010010000" }
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
set ID 347
set hasByteEnable 0
set MemName infer_layer_4_weights_V_21
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "01011010101010" "00100100010010" "11100000011100" "01011000111111" "11010000110000" "01000001010000" "01001011101111" "11100011110000" "10100101001001" "11011000111100" "01011010000010" "00010101011010" "11010010000101" "11101000101101" "00001011111000" "01100010010011" "10010111101111" "00010010110111" "10101001000001" "11111010100111" "11101000001010" "11010010001100" "11011110010001" "11001010110000" "00100000110110" "11010101101100" "01011001110110" "11110001010001" "10110100011011" "01100001111101" "10010111100110" "00001000000110" "00101001101010" "00111110011100" "00100000110101" "11110111100000" "11011100101000" "00101000110010" "00001100010000" "01011110010001" "01011001111010" "11111101011110" "00110011101110" "11011101001010" "11111011111100" "00001101110000" "00000001010010" "11010110100111" "11101100111010" "10010110011110" "11110000010100" "00111100001010" "01000100010010" "11000100010001" "11110110110010" "11110111001100" "01001010000010" "00000101010000" "01010010010001" "11001101100001" "10100010001101" "01011011000101" "00000100011000" "00101101111000" "10111111111101" "11110111000111" "11011000001000" "00100010000111" "00000111010111" "00110011010001" "10011000001100" "00111000100101" "00101001100011" "01010100010011" "01011110110100" "11010100111110" "11010000010110" "11111100100010" "00101100010111" "00001101110010" "10011110010010" "00101000101000" "11010000001111" "11110110011100" "11010110111100" "11110010111110" "11110010111000" "10101001001111" "00111010010111" "00001101011000" "11000101011110" "01000000001111" "00111011000101" "11110111011111" "00100010100101" "11111001111010" "11110101011010" "11111100010001" "11110100101100" "00010000001101" "00000010101001" "11011110110011" "10100101011100" "00101101101000" "00000100011101" "00100001101100" "00011111011001" "00001111011011" "01010100110010" "00000010001110" "01011110010011" "00100110101000" "00001101111111" "10100001101110" "01000100100100" "00101010110010" "10110000010100" "10111001000000" "10011010101100" "00101101011011" "00010101100110" "00011100000001" "00110101100101" "10011001000100" "10100001011000" "10101111000011" "01011100110010" "01000111101000" "01010110101111" "10101010011000" "10111001001000" "11101110010100" "00110110110100" "01010101010011" "00111111011110" "01100010001010" "11100001101001" "00110011100000" "10100001111001" "11100001101000" "00010110011011" "00010110111011" "11110111001001" "10100101010001" "00011100011100" "11101110010111" "11011100111110" "00001111001111" "11101100100011" "00000011010000" "01000100010100" "00101010000110" "00011111011011" "00100111011000" "11011110011111" "00100010010111" "10101111000001" "11100001101100" "11111110111011" "11111011110101" "10101111110001" "10010100100010" "01011011000000" "01100001111101" "11101101100000" "00111010011010" "01010100010101" "11011000001111" "10110010100100" "00010110010110" "01100110011000" "11110101011101" "00001110000000" "10010010101010" "11110100010001" "01011111010101" "11011011000001" "11001101000110" "11101101111010" "01001110001111" "00000101011000" "00000100111111" "00010001000110" "01101000001100" "10101000010001" "11011011001101" "10011101111111" "01001101010010" "01001011010100" "00001001001000" "11000000011100" "01001011010010" "10101001110010" "00001100000111" "00101111000000" "11001111110001" "11000011000000" "10110011111110" "10100101111111" "11111011010000" "01001101010011" "00101000001100" "00110001110100" "11001110011111" "11001000100010" "00101010110011" "00010100000100" "01000011011110" "11111001001011" "10100010000011" "10011110100011" "10011001010000" "01100010110000" "11011101100101" "00101010011001" "00000011111000" "00000011011001" "11110010000010" "00101111101011" "11000001100110" "00010110100000" "10101111110011" "00111001110001" "11111011111001" "11111101101001" "00001101000000" "11010100110100" "11011000000010" "11110100111101" "01010010010001" "11000011101101" "11111100100010" "11110101101001" "10111111010000" "10010111101101" "00111101110110" "00100011101011" "11010010001010" "00000111001010" "00000111111010" "11001111000011" "00011001100000" "00100100010000" "01010111001100" "11000000000010" "00111100111100" "10110000000011" "01010101011101" "10111000100011" "00101111011101" "01001011101011" "01000110110101" "00110011001000" "01001001001100" "00000101111110" "00000101101001" "11101101001010" "00001101101001" "11101010001000" "10111011110011" "11000101100111" "00101000100110" "01011111111000" "11000010101101" "01011000000000" "10011011100001" "00001101110110" "01011111111011" "01100100000010" "11001010001001" "11111010000010" "11000011000011" "00000011011110" "00101111100001" "00101010110011" "10010100000111" "10101111111001" "11100111110110" "10100101011011" "10100110111000" "11111111010100" "00000101111100" "10110001001010" "11100111010010" "00110011111100" "10011000011110" "10110011001010" "10110010111010" }
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
set ID 348
set hasByteEnable 0
set MemName infer_layer_4_weights_V_22
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 17
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00000110101110010" "00001100001101011" "11111010111001011" "00000111010010001" "11110011000010011" "00001111101101101" "00000001011111001" "00001001011011001" "00001001000000000" "11111001111011001" "11111100110001110" "11110101101000101" "00001010101101001" "00000001010111011" "00001001100111000" "11111110110110000" "11111010100001011" "00000101011010001" "00000001011100001" "11111101010111010" "00000000101111100" "00001110011110111" "11111001110101101" "11110110010110101" "11110100111001010" "00010001110011000" "11110111001010001" "11110100001111111" "00000000011101011" "11111111011111001" "00000110001100101" "11111110001111101" "11110011100001010" "11111111100111010" "00000111010001111" "00000100100100101" "11111110101011111" "11110100111111110" "00000111101000000" "11111000110110110" "00000100101011001" "00001000000010110" "00001000010101100" "00001010101001010" "00000100100011010" "00001100001101001" "11111011101011011" "11111100110100001" "11110101000010101" "11110110000000101" "00110010001000111" "00101011100110001" "00001011011100011" "11110100101110001" "11110110100000111" "00001000010001110" "00000100010011011" "11101110100011100" "00000110011111100" "11111110010111110" "11101110010100010" "00000000110100011" "11100110001100100" "00001111010110001" "11101011010010111" "00001010111110010" "00000011000110100" "11111010100000001" "00000111011111001" "11101010011101010" "11111101010000100" "00000010001011010" "11111011111100001" "00000110111100010" "11111100010110100" "11111111111000101" "11111111110011000" "11110001110010100" "00000001111000000" "11111111010000111" "11111011111001110" "11110010011011001" "00111010110010110" "00100000011001110" "11111011010111011" "11110011111010011" "00000110110110111" "00000100100110001" "00000000010100101" "11011111011011000" "00000011111001000" "00001010000110001" "11011010111010001" "11111011101100111" "11111001101011000" "11101100100101101" "00010100100100001" "00000001100001001" "11110100101001011" "00001010010100111" "00000000001110110" "00000111100110000" "11110100011010001" "11111101110000001" "00000001010000111" "11111001011111110" "00000000101110000" "11111110010000010" "00000001110110110" "00001011000010100" "11111010011111101" "00001000001010010" "00001010001011011" "00000000000011010" "11111000111110000" "00001110000011011" "11111101101111001" "00000110100111101" "11111100110000110" "11111101001101000" "11111110101101100" "00010111001111011" "11111111011111010" "11111110010110010" "00100100001010111" "11111101010100001" "00011101000101100" "00011001001010010" "00011001010010100" "11111100001011101" "11111110101110010" "00000110001011001" "00001000010110111" "11111011100101001" "00001011000010100" "11110111101010110" "11111001101111011" "00001010110000111" "00000011001101011" "11111111001010110" "00000001001011001" "00000111111011110" "00000001011011000" "11111000011010001" "11111101010010000" "11111101111001110" "00110000100100111" "00101100100010011" "11111101101111011" "11111001110110101" "11111100100011001" "00001011100100011" "00000001110101101" "11110101001010110" "00000101010010000" "00001100111011100" "00100111111111000" "11101110100101100" "00010100110010100" "00100100110110100" "00010101011101100" "11110001101010010" "00000100010010101" "11111011010000001" "00000011000000001" "00001010111111000" "11110011100110110" "11110011101010100" "00000000101010111" "11110011001001011" "11111110100000101" "11110100010111111" "00001011001001100" "11101100111100110" "00000110010111111" "11101101111101010" "11110101010010011" "00000000111011010" "00110110001011001" "00100011011001010" "11110010000000010" "11110010010010110" "00000101101000011" "00001100011001101" "11110111101000000" "11111101001000000" "00001001110110001" "00000001001110111" "00110011100111111" "11111010011111010" "00011111010100110" "00101010001001100" "00010111011000001" "00001101100000110" "00000010100000110" "11111010111000100" "00000011011101110" "00010000110110001" "11111010111111001" "11111001011000001" "00000110000010000" "00000101010101010" "11111010101000011" "11111001110110101" "11111101111101011" "00000011001100100" "11111000001111100" "00001011001110110" "11110011101010000" "00010000010000111" "11110101100011101" "11111101001110000" "00010010010111110" "00001111101111001" "11111111010010100" "11111100111001111" "00000010000001010" "00001111101100000" "11110011111010001" "00000101011111000" "00100111111111011" "11111110110010110" "00010010001011000" "00001100100001000" "00100111100011111" "00001000100110001" "00001001011001110" "00001110110001101" "11111101001110100" "00000110110101011" "00000011110001101" "00000110111111001" "11111011000001011" "00000110010101011" "11111010110110101" "00000011101101001" "00000101101111011" "11111110111111001" "11111100110011011" "11110110101111111" "00000110010011010" "00000010111011110" "00001110111101100" "00001101100110001" "00001011011010000" "00000111101111110" "11111100111111000" "00000000101111110" "11111101011101101" "11111000001111011" "00001001011001001" "00000110000001101" "00101110000010000" "11110110101000011" "00000010000010101" "00100111111110101" "00011111010010100" "11111100000011110" "11111010100010011" "11110000101011001" "00001011000101111" "00000111011110110" "00000111111101010" "00000000101001100" "11110011111101001" "11111100111001111" "00001011001010011" "11110100000011010" "00001000101100011" "00000010000001100" "11111010011000000" "11110001001011011" "00000000000111011" "11111111101000000" "00010000010000001" "00010101000010010" "11111100001001101" "11110110010000001" "00001011101000011" "00001100011110010" "00000000001001111" "00100001110100101" "00000100010111100" "00000110111000110" "01000000100001110" "11110111100001101" "00110001011101011" "00011010001110010" }
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
set ID 349
set hasByteEnable 0
set MemName infer_layer_4_weights_V_23
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 17
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11100111001011101" "00000001111010110" "00000111000111010" "00000100110110010" "11110101011100011" "11101001101101011" "11111001010100101" "11111101001110111" "11111110010101010" "11110100101001001" "00000100011111100" "00001100000010100" "11111000001001000" "11111001000111000" "00000000111101001" "00000101011111000" "11110011010011101" "11110101111110011" "00111101010101100" "00100000010001100" "00000010010100111" "00001001011001110" "11110101011011101" "00001001110100111" "00000101001010111" "11100111001101101" "00001010001110101" "11111111111100010" "11110010110010000" "00000010100110011" "11101011011011101" "00010110011110001" "11011000011101011" "00000100100010000" "11111110010011001" "11111010001111010" "11111011011010000" "11110001011001001" "00000000111000111" "11111110111111111" "11110101010100100" "00000101010001101" "11111001001111010" "11110010110001100" "11110111111001100" "11101101100000110" "11111100001100011" "00001000111110011" "00000101100010111" "11110001101110111" "00111010100000011" "00000100111101101" "00001010001001001" "00000110101011110" "11111000110100001" "11111000100001010" "11111100010101111" "11101000001010001" "11110101100100001" "11110110110100100" "11010100110100111" "11111000001000001" "11110001010101000" "11101101100100001" "11111000110000111" "00000010100010111" "11110101100011101" "11111110101101100" "11110011111001100" "00001011010001111" "00000101010000011" "11110100101011001" "00001100111111010" "00001010110111010" "00001010011111110" "00001011111010010" "11111100001110000" "11111111101101110" "11111101000101000" "00000100011011100" "11111110111101011" "00000110000111100" "11101101000110110" "11011111101001100" "00001011011001100" "00001100111011011" "00001000101100100" "00000011001000011" "11110011001101110" "00011000111000101" "11111101110001010" "11111011110100110" "11011011001011111" "00000000111110111" "00001010111101000" "11100110011010100" "00011011100001001" "00001100000101011" "00001011011000010" "11111000100011000" "00001100000111010" "11110000000010100" "11111000000010111" "11110011100011100" "00000101111001000" "11110011000000100" "00000101000011001" "00000010111000011" "11111111000000010" "11110111111000111" "11111100110111101" "11110000011110001" "00001010010101000" "11110001101010100" "01001011000100011" "00101101010110010" "11101110110001011" "00000100101101101" "11110110010110011" "00001010001111001" "00001100110110010" "11100011100000110" "00000110010100001" "00000011010000011" "00110000001010011" "11111100011011101" "00000010111110100" "00101001101000101" "00100001001000001" "11110101110001000" "11111011101111000" "11110001111101110" "11111101110101101" "00000100100010100" "11111011001010010" "11110011010100000" "00000001010101010" "00001010110000101" "00000101000110010" "11111011001001100" "11111011110110010" "11110110100000101" "11110011001010111" "11110111011111100" "11111100110010010" "11111010001001010" "00110101011000011" "11111101110100111" "00000001010000100" "11110100110100011" "00000110001101010" "00000011110000100" "11111110110101111" "00011100000010011" "11110110110101111" "11110011010001011" "00011011101000100" "11111100110111101" "00110101110100101" "00000010010111010" "00001010011101101" "11111011110000101" "11111111001101111" "00001101110100100" "00001011000010000" "00001001000111001" "11111101011000100" "11111010010111110" "11111111110100100" "11111101000111111" "11111010101011010" "11111101001100111" "00001010111010100" "00000100001101001" "00000011111000110" "00001000111110101" "11110011000000110" "11111001110100010" "11010001100011100" "11001011100011010" "00001010000010101" "00000010101010011" "11110011100100001" "11110011001010101" "11111101110110101" "00010111001111001" "00001010101100011" "11110111000000100" "00001111101110101" "00001011011000001" "00100101010000000" "11110001000001111" "00100001100010010" "00001101001111100" "11111101000111111" "11111000101000001" "11111001000110111" "11111101101000100" "11111101101000110" "00001100111010111" "11111011000000101" "11110111000011000" "11110011001011111" "00001100010100001" "11110101100001100" "11111101111101000" "00001001110101100" "11110001110101101" "00000111001001101" "00001011000111101" "00101001110110100" "00010001110000110" "00000100011001000" "00001010110111010" "00001100111110110" "11110101101111010" "00000111110101000" "00001101010111110" "11110011111011111" "00001000001101011" "00101110000111110" "00000000110101110" "00010010100111110" "00011000100000110" "00101010011011111" "00000000010100100" "11111111010010000" "11110110000011101" "11110011101010010" "00001000001111000" "11111110010010001" "00000100101110010" "11111001010100111" "00001011110101010" "11111010100101000" "00000010010100110" "00000100101010011" "00000010000100110" "00001010001100000" "00000000110001001" "11110011010011010" "11110110101001001" "00001110101110010" "00000100110000100" "00000001001110000" "11111011110111010" "00001101000010110" "11111111111000011" "00001010111010101" "00001110000110110" "00001000101110001" "11111011101110101" "00100001011010010" "00000100010011101" "00110001011110110" "00001100110010000" "00000101100101101" "00001000101011100" "11111000000001010" "00001010010001011" "00001001110000000" "00011001010110111" "11110111000010011" "11111100000101110" "11111101101111010" "11110100101001010" "11110110100010001" "00000101001010010" "00001010001110001" "11111101110000101" "00000110100001011" "00001011100100111" "11111001111100001" "00001100010000111" "11000100000011110" "11101001001001110" "11110110000100001" "00010001110010001" "11111001010110100" "11111111101111110" "11110011011011100" "00100111010000110" "00000001101111101" "00000100010010011" "00101000001111100" "00010011101110111" "00111000001000011" "00000001010011011" }
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
set ID 350
set hasByteEnable 0
set MemName infer_layer_4_weights_V_24
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 17
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11101000111001111" "00000100101110100" "11110011110011101" "00000111000000010" "11111101100100010" "00001010010010011" "11111110011001001" "00000011011100101" "11110011101111111" "00001010001000100" "11111101101010101" "00000110010101010" "00000000110001110" "00000000000100000" "00000101001111110" "00001101110011101" "11110111111011001" "00001011011101011" "11011001101111101" "11111010001111000" "00010000010010110" "00000111010000010" "11110110110010100" "11111101011101001" "11110110110001111" "00010010100111000" "00000101100000010" "11111111101011011" "11010100011011100" "00000100101011100" "11101101000111001" "11100101111101011" "11101100011100101" "11111011000011101" "00000000001101101" "00010000000101100" "11111011001010100" "00000000110000110" "11111110100010100" "11110011101011011" "11111000100111111" "00001100101011001" "11111010011111000" "00000000000010100" "00001100111100110" "00001100011011011" "00000100111110110" "00010010000100000" "11111001110110001" "00001111000011110" "00001010011101001" "00010111001100001" "00001101110011100" "11111111000001011" "00000111000000100" "00000001110101110" "00000111100011111" "11111101100101011" "00000101000100101" "11111101001001101" "11010111010011010" "00010000010000110" "11011110000100010" "11111011001110101" "11111010101011000" "11111001111010011" "11110101001110111" "00001000100101010" "11111101000001010" "00000111011100100" "00000010101011000" "00001001010100011" "11110011110110010" "11110100000111101" "11110110000010110" "00001011000011110" "11110101101101110" "00001001101010010" "11110101011000001" "00001010100110000" "00001000010001011" "00001110100110010" "00001110110000100" "00010011100100010" "00001001111001110" "00001011100111110" "00001001111111010" "00000001000001000" "00001001011100101" "00000100110010000" "11111101011101111" "11111010100111001" "11100101000111011" "11111011001100110" "11100011001101110" "00000011111010001" "11010101110101011" "00000111010001101" "11111101010110111" "11111010000110000" "00001010010110111" "11101100110010000" "00000111101111111" "00001011101010110" "00000111111011101" "00000101010111001" "11111111010010110" "11111100010111111" "00000100011001000" "11111111010100001" "00000100101101100" "00010001100010110" "00000111101000101" "00000000010110010" "00101001111110100" "00001110101000110" "00001101000101101" "00001000110000110" "00001001001011010" "11111001111100101" "00000101000100010" "11101101110110110" "11111010000011011" "11111100000100011" "11000100110111101" "00000111011010111" "11011100000111000" "11011110010100101" "11000101010101100" "00001100110111101" "00000001000110110" "00000001111001100" "00000011100110111" "11101011011101101" "11111110001101000" "00000010011001101" "11111000101001110" "00000100000100110" "11111011110010111" "00000011001101000" "00000011011100111" "11111101011000101" "00000101010111011" "00001011101100010" "11111001111011000" "00001000001100010" "00111010101100011" "00011110100110110" "11111100000110001" "00000101111010010" "00000110101010001" "11110011000011011" "11110100110111110" "11010000110000100" "00001011101111011" "00000011101001110" "10111111001010011" "00000001100101000" "11000010111011111" "11110100100001000" "11100011010000101" "11111110110010110" "00001010111000010" "00001010111101100" "11111100010101100" "11101111010011001" "00000100111111011" "00001011000000000" "00000110010111100" "00000101011110101" "00001011101010100" "11111011100100111" "11111010001111000" "00000001000101001" "00000001001011000" "11111011000111000" "00000001101100110" "11111110110001000" "00101001111010010" "00010001000111111" "11110010101011000" "00000000111001010" "00000100010110001" "00001011010100010" "00001100011000101" "11110011011110001" "00000101000100100" "00000011000011011" "11011001111101101" "11111110011000100" "11010111011110011" "11100111101101101" "00010010101111111" "11110010111101001" "00000100000100001" "00000101010101111" "11110100100000111" "11111000011111010" "11110100111001101" "11111001101000100" "00001010001000010" "11111111011001010" "11111100010101101" "11110011101000011" "11111000010101001" "11110011111011010" "11110100110100011" "11101001010001101" "00001010010101110" "11110010111001000" "00111010000010110" "00011101110101101" "11110000011111010" "11110100111000100" "00000110000001100" "00000001111001000" "00000100011011000" "11101011101011010" "00001001100110010" "11110110100011101" "00011011011111011" "11110001001110010" "00010011011000010" "00001100000000010" "00001000011100010" "00000100001010010" "00000110010000011" "11101100110111100" "00001001011000110" "11111000011011111" "11110100011101111" "00001011000100010" "00000111000010101" "11110101100100101" "00000010001101000" "11111111100111001" "00001000100101101" "11101111000110001" "11111111001110101" "11111000110000110" "11111101111001110" "11101011011110000" "00110111100010000" "00001110111000001" "00000000001110011" "11101010000011011" "11110011110100100" "11111101000100001" "11111010000100110" "11101001111111111" "11111010111000011" "11111110000000001" "00011101000010100" "11110010101111001" "00001110001000000" "00010111010100111" "00001110000001010" "11111000001011001" "00000111101111110" "11111111010001010" "00001011111000000" "00000111111111111" "00000000011101111" "11110011100111110" "00000110001010001" "00001001100100111" "00001011010011110" "11111111110011101" "00000101011001101" "11110101001101110" "11111100101101010" "11110111000111000" "11111000010101101" "11101110010100100" "00110001010100100" "11110011011111110" "11111110100100011" "11101110101101110" "00001011010010101" "00000010000001100" "00000110101010100" "11111110001011110" "11111000011011110" "00001010100011001" "00010111100101011" "11110011100111110" "00100001110001100" "00000100010011110" }
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
set ID 351
set hasByteEnable 0
set MemName infer_layer_4_weights_V_25
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00011101111001" "00000111100001" "00110000100000" "10010010101110" "10011110000001" "00011101111011" "10011000001100" "00010101110010" "11011001101100" "10010111110101" "10101111000110" "00100011101010" "10110110010011" "00101110110011" "10011011011110" "00000011111000" "11000010110001" "11010100101001" "01011100111000" "01010000001010" "00100001000100" "00000110000001" "00100010011001" "10100000100000" "00101111000011" "00100100101001" "11001010011011" "01011001001011" "00011001010100" "11101000000101" "11111001001111" "11101111111011" "11010011001001" "00001101101101" "10110110011000" "10010100110010" "00000011100000" "11100001001001" "01011111100011" "00100110010010" "11010111111001" "01010001011001" "10100111001111" "00000010110001" "10101010101111" "00000011010000" "10110101001111" "10011011001100" "11010111100010" "00101011011111" "11001111101000" "10101011001110" "00001011010110" "11001000011101" "10011111100001" "10100011011110" "00011000001110" "11001011010010" "01011110001001" "00001000100100" "01000110010101" "11101010010111" "11000010000111" "10111010011111" "10111100000101" "10011000101111" "01100101101011" "00111010101011" "10110110000000" "11111010100100" "00010100000000" "01000001000001" "10011000100000" "01001001100001" "00111011111100" "10101000010100" "00100001110000" "10100010011011" "00101100110000" "00111110000111" "01010001101101" "10001111100000" "01000110001001" "10010010101111" "00110110001101" "01001011011101" "01000110010000" "01011010011100" "10011101100000" "11000010100011" "11100011001001" "00110101101111" "00110011101101" "10110011000000" "00111010010110" "11001111011110" "11101110001011" "11100111000010" "01001001000111" "10100011000011" "01000011110110" "10110111101000" "11100011111011" "11100010111011" "00110101100011" "10110001010001" "01100110010000" "00000111100101" "11100010101011" "11001100010110" "10101100110001" "01001011011001" "10110111000000" "11110001001001" "01010111001100" "00001111101111" "00001010100101" "10010010001100" "00010000101111" "00100100001001" "01011101001101" "11001100100001" "01001110101010" "00001010111000" "10010111110001" "11010001101110" "11111111111000" "11101001101110" "00111110011000" "11110010011000" "11000110100111" "00001000010011" "00000001110110" "00101101000000" "10101001100101" "11011001001011" "00100101111110" "00010000000110" "10110011001100" "00111000000011" "10110110111101" "01011101001001" "10101010000100" "11110000001010" "01000100101111" "11000111000000" "00001000111000" "00000000010110" "11110100101101" "10011001110001" "10100000100111" "00010001110100" "11101110110111" "00010000110010" "00001000111101" "00010101010110" "00001111001101" "01000100011101" "11000101110101" "00010001100111" "10101111001010" "00001001111000" "11110011101111" "11100010000100" "00011110100000" "00011000111110" "00101100001011" "00101000100010" "11111100110111" "11000101110000" "11010110111010" "10111010001111" "11011010110101" "01011110010111" "00000010010001" "00010100111111" "11001111010110" "11111111011100" "11000001111110" "11100110111010" "01001000111010" "00100110011011" "00111011000010" "11011111000100" "01100110110100" "10100110000011" "11011000110111" "10011101111100" "01000010010011" "10001110000111" "11000001101001" "01001000000111" "00110110001011" "00110010100000" "11010100110011" "11011010001000" "10110011001010" "00110000110111" "10111001110010" "01011101110111" "11110110001001" "10110110001000" "11100011100100" "10100110011011" "00111100110010" "10101100110010" "01011111010011" "10110011000000" "11110100000000" "11010000110001" "10110111100100" "11000001011011" "11001111100101" "00011101001010" "11001101011000" "11011101011100" "01001011001111" "00011101011011" "00001011010000" "01001010100010" "00100010011110" "11000100111110" "11100101000101" "00100010000110" "01001110111001" "10111001111011" "01000000010101" "10100010100111" "11100100001011" "11100100001100" "11001111011100" "00011001111111" "00010100000000" "00111011111110" "11000011100001" "11101011110011" "11111101011001" "10010010001011" "10110110111000" "11001010110110" "00001100111110" "00000101010000" "00110100111010" "11110000100101" "11011001110111" "00111101000110" "11011111010100" "10111110111100" "10101100011110" "01000111110010" "01100111010110" "11011000110011" "10100011110111" "00000110110101" "00110110110100" "00111001100101" "10111011000000" "00101101000111" "00001000001001" "11001010001101" "00001001001110" "11100101000001" "00011011010110" "00100000111100" "00010011111110" "00011011011110" "01011000011000" "11111001001000" "10110111110101" "00010000110101" "00010100011011" "10010100000011" "10101000010010" "01000110100001" "11100001001111" "11001100011101" "00111001111001" "00100110110010" "01010010100110" "00000001010000" "11010001101011" "01000011011001" "01011011010101" "00011110100111" "11000000100011" "11110010010001" "11000010000010" "01010111100101" }
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
set ID 352
set hasByteEnable 0
set MemName infer_layer_4_weights_V_26
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 17
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11110100110011011" "00000101001110011" "11110101000010110" "00001100000100101" "11111010000101001" "11110010010010100" "11110110001000110" "11110011110100001" "11111010110011110" "00001010100100111" "00001000100100110" "00001000111100000" "00001010100100101" "00010000001001001" "00000000110011101" "11111010011010001" "00000111010000000" "11111101111000001" "00101111001001010" "00010111000011001" "00000011111111011" "00001101100011110" "11110110010100101" "11111101011000100" "11111111111101100" "11111110111001110" "11111100110000010" "00001101000001010" "11011100000000001" "00010010001111111" "11101001110000001" "11111111110010001" "11010010100001000" "11110110110010010" "11111101010011010" "00000110111010010" "00000010101100010" "11110101011010001" "00000110011001100" "00000110001000010" "00000011001000000" "11110111000001011" "00000101111011001" "11110101001010111" "11111011011100100" "00001011100110001" "00000110111001111" "00000100000100011" "11111101010101000" "00000111010111111" "00100110111101110" "00000101101110001" "00001110001010001" "11111010110001100" "11111111110110010" "11111110010011111" "00000011000101001" "11100001001101100" "11110101000001101" "11111101100101101" "11001111000111001" "00010000010000110" "11010010000000101" "11111110101001000" "11101100111000110" "11111011000010000" "11111110110100001" "11111001101000011" "00001100100110101" "00001001111111010" "11110101011001001" "11110110001010100" "00001011101011000" "00000111000010110" "11111001110001110" "11111001110011100" "00000001100111011" "00001010110011111" "00001000100010110" "11111111010111100" "11110011001001101" "00000111101100100" "00010100011111010" "11101101001000100" "11111011111100101" "00001101001011101" "11111101011000101" "11111110000011100" "11111100111110000" "00000010101111111" "00000010011101110" "00000010001010100" "11100000000000111" "11111111111111101" "00001011001000100" "11100111101010000" "11111110000011001" "00000111100100101" "11111110100010100" "11111011000010111" "11111011010010101" "11110010101010111" "11111001000010011" "11110101011111011" "11111001010000011" "00001011010000000" "11111110110000101" "11111101011000000" "00000010100010011" "11111001011110100" "00000100100110110" "00000101000100010" "11111010100100111" "00000011110110001" "01000000010010010" "00110000010011111" "00000110100110111" "11110110111011111" "11110100001011101" "00000011110000111" "11111101011000011" "11100101000110001" "00000001111111111" "00000010000100100" "11111000011000010" "00001000110000001" "11100111101100000" "00011010000111101" "11111011010000001" "00000101101011100" "00000001100111100" "00000010110100010" "11110110100010110" "11101010000001001" "00000100100100101" "11110100001111001" "11110110001001001" "00000100000010011" "11111000100111000" "11111110100100100" "00000000110100111" "11111000110010111" "00000011011000111" "00000110011100010" "00000000010111101" "00000010110000100" "00101011101110001" "00011001011011011" "11110101101100011" "11110100000010001" "11111110101010110" "11111000111010010" "00001001110010011" "11101111011111010" "00000100011001010" "11111000101001111" "11111100111000111" "11110011010011000" "00001000001111000" "11111010011110001" "11101110010100010" "11111001010001011" "00001100100111000" "00000100001001111" "11111101011010110" "00010110110010110" "00000000011000000" "11110110111100110" "00000011101101000" "00001001100101101" "11110111111011101" "11111111011010001" "11111011110000111" "11110001101110101" "11110011000011000" "11111110110000010" "11110110100010100" "00000110011100101" "00000100011010100" "11001111010000000" "11110011010010011" "00001000101110100" "11110110111011010" "11111011010100101" "00001100100010011" "00010110000101011" "11111000010111000" "00001001100011011" "11111111110100001" "00010000000100011" "00101100101001000" "11100111010101001" "00010001101110011" "00001011100111001" "00000100001000000" "11111110010010110" "11111111011111100" "00000011011001111" "00001001000101010" "11111111110100110" "11111111011101011" "11111111111101001" "11111101111001110" "11111011010010100" "11110111110100011" "00000001100111001" "00001001110101000" "11110011101010011" "11110111010000000" "11110101010011110" "00110011110110100" "00011001001011101" "00000011011000111" "11110101000011011" "11111101001101100" "11111011110011001" "00000100100110111" "00000010010110110" "00000010110010011" "00000111110000011" "00101001100000011" "11101111110110000" "00000111110100000" "00001010110110010" "00101000100110010" "11111111000111000" "11111011010111110" "11110010110010111" "00001010010111011" "00010110000101100" "11110101011000010" "00000001111111101" "11111010101111010" "00001010001101111" "11111111001111110" "11111110001110111" "00001011110111010" "00000101100001010" "00001100101110111" "11101100111111000" "11111011100101001" "11110010000010101" "00011010011111100" "11110001101100111" "11101110000110011" "00000000001000010" "00001011001100111" "11110011001001011" "11110110011111011" "00100011001000011" "11111011010100110" "00000001111111110" "00110100111100010" "11111100000101011" "00101111100101011" "00010111110010011" "00001111111000101" "11111001111001110" "00000011011111110" "11111100101100001" "11110100001000111" "00011010101010011" "11110101100011111" "11110110110000100" "11111010101101101" "11111100111101111" "11111011110100110" "11111011000010000" "00000001110100100" "00001111011101110" "11111011101100101" "11111101001010011" "11111011010111100" "00000110000110101" "11001010000000011" "11011011001000011" "00000000111111000" "00000101000111111" "00000011101100010" "11111101100100001" "00000100100000111" "00101010001101001" "00001000110101001" "00000010000001011" "00100110101111100" "00001110101000101" "00110101000001110" "00001111110100111" }
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
set ID 353
set hasByteEnable 0
set MemName infer_layer_4_weights_V_27
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00010010001110" "11111101001011" "10100111000100" "10101010111011" "01010101010011" "11000010111100" "00101110100011" "10110010100011" "11100110001001" "10110101100101" "10111010101100" "00000100100101" "01001111110111" "10100101011000" "10101101110011" "11100000100001" "11111110110101" "10111111101100" "11101000000101" "11001000011110" "00100101001110" "00001101001100" "00111010000101" "01010100101001" "11001000110100" "00101101001000" "01001001001101" "10110101000011" "10100100011011" "00010111001101" "01000010011000" "10011010100100" "11000001011101" "00010110011010" "01001011101100" "10011111011010" "00111011010100" "11100110111111" "10111100110011" "10111011000100" "00111111010001" "00001011010110" "00110011111100" "00101010100000" "11100001101011" "10111110100100" "10011111100110" "00001001011001" "10111010110111" "10010010011000" "00110111000001" "11111111110001" "11010100000001" "11100001000001" "01001111100111" "00000001110001" "11000001101011" "00100111011111" "00010100100110" "11000110100000" "00110000100100" "00110000011001" "11010110111110" "11101011100011" "11101000110110" "00111011100110" "01000001011011" "01011011110110" "00010111101001" "11010000100100" "11101011101011" "11111100010101" "10110001111010" "11111001001110" "01010111000110" "00010110011111" "01010010110001" "11110100011111" "10011110010001" "10111100101000" "01010010110100" "01000101011101" "01000011000011" "00000110010110" "10010010100111" "01011011100100" "00000111110100" "10011101111000" "11011011111011" "01000000010000" "01100111100001" "10011110001001" "01011000100000" "11011100110000" "11101110000110" "01011100010101" "00000001010011" "00110101110000" "00101010001111" "00001100001111" "01001000101110" "10101111001010" "00001110101000" "00101110010010" "11111101101111" "00010101011010" "00100000000100" "11111000110111" "00011000010011" "11011111101100" "00110011001110" "11011110000111" "11101111001111" "01001100011111" "11100110100111" "01010111011111" "11001110010111" "00001001001110" "00010101101111" "10011000000100" "10100110011001" "10010100001010" "00010010111011" "11100011110001" "11110100011101" "00111000001110" "00111000001111" "00101011100110" "11010001010010" "11101111000111" "00111101100001" "11111010101011" "11101110110000" "11011111110110" "00110011011001" "10110101100011" "11000111111010" "00011110101111" "00110001000100" "00001000001000" "11011010110111" "00001000111100" "10101010000011" "11000110111011" "00101001011000" "01100001010001" "00000101000110" "01010001011001" "11111000100101" "11111101100110" "01100111110010" "10100101101000" "01000000000010" "00110100101100" "10101110000000" "01010001011110" "11110000111100" "11101000110100" "00001111011111" "00001111000110" "11110111111100" "10100010010001" "11010100110000" "11111101010010" "01100101010011" "10110010111000" "10011100111001" "01100010000001" "11000110000010" "00101100001110" "11011000001100" "11101110011111" "10011100110011" "11010101110000" "01011110111011" "00000101001010" "11011100000010" "10111100011011" "00100010011100" "01000111011100" "00010010101010" "11100001011100" "01011010100111" "11010000011000" "00000111100100" "01001101011011" "11011101111111" "10100100010111" "00010110001100" "11011001110010" "10010011110101" "11000100010001" "11110011011000" "01010101011111" "01101000010011" "10110111001001" "11110110011011" "10011101011001" "10101001010010" "11001101110111" "11001010100010" "01000001110101" "00000001000111" "00010100100101" "11011111010011" "01001000101010" "10101110110000" "01000011110111" "11110100010000" "01000100100100" "11110010000101" "00100011110110" "10111111101101" "10010111011000" "00000110111101" "00101011011010" "11110011101001" "00001111000111" "01010001000101" "11010110100001" "01011000011000" "00100100110010" "01000000001100" "00001000001101" "11011011010011" "10101010000000" "10101000100010" "11100000000110" "10110101110110" "10101101001000" "00111001100010" "00000010111101" "00000010001010" "11000011111101" "01100000100001" "11010010010001" "00100001101010" "00000001011000" "00111101010101" "01001110111010" "00001010110010" "10101110111111" "10111010010010" "11111011000010" "11011111101011" "00101110111000" "00110010101111" "00000100111100" "10100011101101" "11010101111111" "01001110000111" "00011011001010" "00001011011011" "01000001000000" "00001100000101" "11001101000001" "01100001000010" "10100101011110" "01101000000000" "00010111011010" "10011101110110" "11000101100101" "00010101110111" "10101010101010" "00011000011010" "10011011011000" "00010010100111" "11001011110011" "10011011100101" "10011011000011" "01011000000011" "11111100101100" "10011011010001" "00001111100110" "11000011111011" "11111010111001" "01010000010100" "01000010101010" "10100010111011" "11111001000110" "00011100000000" "01011000100100" "00010011110000" "01100000001001" "10110101001011" "10010011100101" "00100001000011" "11110010011110" }
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
set ID 354
set hasByteEnable 0
set MemName infer_layer_4_weights_V_28
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00001000110110" "01001000101010" "10011000011001" "10011101101010" "00101010010111" "10100111110111" "01100100010010" "00101100111001" "01010110100111" "10100110100110" "00010000110011" "01000011001111" "01011010111010" "00011001111010" "00100011011001" "01000010101000" "00101001100010" "01011110101100" "10111000010100" "00100010111001" "10100111101100" "00001111001100" "00110000010101" "01100000111110" "10011010110111" "11111000111011" "11110010000111" "00001000110101" "11010000100111" "00110001010010" "10110110001101" "11010111011011" "01000111111001" "11011010011111" "00101010101001" "11011100001111" "01000000010111" "00000001001100" "00010001100111" "11100010110101" "01100000001101" "00000100000111" "00000100010000" "00001010011001" "01000000010110" "10100000100001" "11110001110111" "11010000111010" "00001010000101" "01101000001000" "01001110001101" "00011010010000" "11001011111001" "10011011111000" "01010110011101" "10110111101001" "00101011011001" "10111101000101" "11111010110001" "11111001000111" "01100100001011" "10011000101001" "11000111100111" "00000101010010" "01010010110110" "00011101111101" "00010110100101" "11011010101011" "01000001001101" "00110111000000" "00101101101101" "11101101110000" "01100110001001" "11000101001100" "11011000110001" "11000101111000" "10110011101001" "10101010011110" "01001100101111" "11000000101011" "10110010000000" "10101111010010" "00111101011010" "00111100111101" "01000000010100" "00101111101111" "00100011101000" "11110111011110" "11111101011011" "01000010100100" "00101010100111" "11000000001001" "11111111100000" "10100001101000" "00101000110011" "00110111111111" "01011000001011" "11101001000111" "10100110000011" "01100110100101" "11101101010010" "01001011001010" "00011110111110" "11101011000111" "00000011000110" "10110011101010" "11111110101110" "00100010110000" "11110011011110" "01001111001011" "11011000100100" "11000101010110" "00001111000011" "10011010010000" "00010111101011" "00011011010010" "10100101001101" "10101111010000" "11000101110000" "11011110000001" "00010110111101" "10110000010010" "00010010001110" "00111101011111" "11010000110011" "00011000000000" "01000110111111" "00001010100011" "01100001110000" "00110000001011" "01000101101000" "10100101100110" "00101110001011" "00011100101111" "11101001010001" "01100001111001" "11111000111010" "11111001000100" "01000110101111" "11010011010000" "11110011110101" "00101100100010" "00011100101000" "00010001000101" "00100101000100" "10011101110000" "00010011101001" "00111110010100" "01010101100000" "00001111111001" "01000000000111" "00100110101011" "11100011100111" "11111000010011" "10101011010101" "00001111111110" "11011100111111" "00100110000110" "01000010101110" "11100000110111" "11111011111010" "00101000000011" "11011000110011" "10110111001000" "00010000101000" "00001010111101" "00000000010011" "11101100111100" "11100110010000" "10101011110001" "11010010100010" "11001101010001" "11011010111001" "11010100001011" "11000111000011" "11110110110010" "01010100001010" "10101001111000" "10100110101111" "00001101000100" "01000011111001" "01011011110001" "01101000010010" "00001001001110" "01011110000101" "00011100011100" "10100111111010" "00010010010000" "01100110111001" "11011111001100" "00101101100100" "10110101011011" "11000101001100" "00000011011010" "01010110011000" "11001101001001" "00110000001101" "00111001110100" "11111101010100" "00010111111111" "10101010000011" "01000101111110" "10011110000110" "10100011111001" "11101010011011" "01011101010101" "00001011001110" "11100100001010" "11010101001011" "00011111111011" "11100000010111" "01001000100111" "00001101111010" "10100101011101" "10101000011101" "11011101110010" "00101110010101" "10011101101100" "10011001010100" "01011001111011" "11000111011100" "10011010010100" "11010001110011" "10011010010001" "10110001100100" "11100011100011" "01010010000011" "10011110000101" "00010110111100" "10111101111111" "11100001001110" "10111110100100" "11000110010000" "11000001001000" "01010000110101" "11011100011001" "10011110011100" "11110010101101" "11001101011110" "11111000111101" "10111001000011" "00101111101001" "10100000000100" "01011111001100" "00010000001111" "01001100010111" "00010001001010" "10110000110001" "01000011010111" "01001111010000" "11010101011000" "11101000011000" "00011010001110" "10011110110100" "00011100001000" "11000101111110" "11000011100010" "10100111001010" "10111010100110" "00010101100110" "11111111110100" "00000000101111" "00110100010001" "11101001100110" "10011000110111" "11100011111100" "10110111111100" "00000110000001" "01001011100010" "10110101101010" "00111100110101" "11111000100010" "11011111110010" "00010100010110" "00011111011011" "01100010110100" "00001100110001" "00111001001100" "11100011100011" "01001010010111" "00011100000011" "10100011100111" "11101110110110" "00111110110011" "00011011111001" "01011000010111" "10011111100111" "10010111110110" }
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
set ID 355
set hasByteEnable 0
set MemName infer_layer_4_weights_V_29
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11111110111111" "11000010110000" "11010010111000" "11110100001110" "10110110010111" "00100010101100" "00111100101000" "01001011111000" "00000111010101" "11001100100011" "00010100100100" "10111110110111" "10011101010100" "00000101000001" "01100110011111" "01010100000101" "00010100110000" "10010110111100" "10010110110010" "00000100110111" "10110011100100" "01011010010100" "00011101100100" "01010001010010" "11000111110001" "01001100010111" "11010100000010" "00000011101010" "10100111111100" "10011001000101" "10010111110000" "11110011010101" "11111110111000" "11100011100010" "00001100011011" "01011001111000" "11010100100101" "00111101111111" "10100000101111" "00101011010011" "11100001111111" "01011010101000" "11001011010001" "10011100011110" "01010001010110" "01100001010101" "10101100110100" "00101000011101" "00110001000010" "00101101100111" "10101011111001" "01001010010101" "10011011101111" "10100111100101" "00001101111101" "00001101101010" "11111100110111" "00111101001010" "10101010011000" "01001011111010" "10111000100011" "00110000010101" "00011100101110" "10100011010001" "01011001010111" "11000001010010" "11000100001110" "00111000100010" "11001110010110" "00010110111001" "01010010001111" "11010100100110" "10100011111111" "00111101100110" "01010111000000" "00111000110011" "11010111001011" "11100111000101" "00111011100011" "00101001010111" "00011111100101" "11100010101101" "01001111111001" "11010010000010" "11001000000010" "11110101010110" "00111111000101" "00111111000010" "00111010101010" "00011101111011" "10011101110010" "10111111110110" "11101110111111" "10011111000110" "10110011100101" "01010011111101" "11010011101110" "00001000110100" "00011011111101" "00000001000111" "11111000101011" "10101001010000" "00000100101011" "11011111000000" "00100001111010" "00010010111001" "10100111010010" "11110010100000" "11001111010101" "01010101011011" "11001111010100" "11010000101110" "11001101110000" "01001011001011" "00010100100000" "11000110111011" "01011111011001" "01010001000101" "00011101111111" "10101011101101" "00101101000000" "01000101011111" "01010100110111" "01010001011001" "00000101111100" "00110100101111" "10111000101000" "01100100100111" "00000010011001" "11101000010100" "01011111011110" "10110100010110" "11001111001001" "11110010110111" "11010001001000" "11001111001011" "00010110110010" "10100011010011" "11010111100111" "01010100111110" "11011011011100" "10011110110110" "11000111011001" "01001111110110" "00110000101010" "10100010110110" "01100010100011" "01010000110001" "10111001110010" "10111001011000" "00110011011001" "00001001100110" "01000110011010" "00011000011000" "11001101111101" "11001110111010" "10101000111110" "11111100011100" "00000001000011" "11110100010110" "10101010111011" "00101000010011" "10101101000100" "00100101101101" "01010010110110" "01100010000101" "11000000000100" "11111110011101" "00111001000011" "01100110011001" "10110101001100" "11001011110000" "10100100011101" "00011101001111" "00001101011000" "11111101101010" "00010001101101" "10110111001010" "11011100010010" "01100100000000" "01001010100011" "00111000100010" "11110011101001" "11011100001100" "01011100101000" "10111100011001" "01011100001011" "01100000110110" "11010101011011" "11010111000011" "11100010000010" "00111100010110" "11001000010111" "11011001010101" "10011011001111" "00110000101111" "01000010101000" "10100001110110" "01010110001011" "10111011111000" "01001000111001" "00101001101010" "11000101010100" "00111000001111" "10111001010110" "11010010100010" "00100110000110" "11001011110100" "01100110011101" "11100001001110" "01000100100011" "11001101101110" "10110101010110" "11101010101111" "11010011001110" "10011000111001" "00010010001000" "10101111100111" "00001011000110" "10101111101001" "01100101000001" "00001000001101" "00100000101111" "10101111111011" "01010001111110" "10100000000111" "00001001101100" "01000000111110" "00111010110101" "00000011011111" "00111010011010" "11100001000011" "11000011000110" "10110110101000" "11111111101001" "10011000101000" "01100010100001" "11001011010100" "00101101001101" "11101111011111" "01001011110011" "11000010100000" "10101001110011" "00011110010000" "00100111011000" "01010111000010" "11010100000101" "01010000010011" "10111101100110" "01001010000001" "00010111111000" "00011111001111" "10101000011000" "11110100011100" "11100100101001" "00011110111011" "11010010100001" "01000100001001" "11111000101000" "00110111101011" "10101101000101" "11011011001110" "00110100000111" "10110101000100" "11101010100100" "01100110110000" "10101001011011" "00111001100100" "10110011101110" "00000111100100" "01011110101101" "00101011000011" "01100101010001" "11001001100100" "11100000000110" "00100010000000" "10011110010100" "01001010110011" "01000011100010" "00111000110111" "11001011110001" "11101001101110" "00100101100100" "00101011000001" "10111100100100" "11011010010100" "11101111111000" "00011100010011" }
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
set ID 356
set hasByteEnable 0
set MemName infer_layer_4_weights_V_30
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00011101100010" "10111010110010" "01000101011100" "01001111001100" "01000111001000" "00111111000000" "00010010011100" "10110000011111" "11000111101001" "10101111100011" "11010000001111" "11001101111100" "11010001111001" "01100011001011" "01000011100010" "11000010110111" "10011110110010" "10111011001111" "10011001100001" "10011100100101" "11110000010100" "01010100011010" "00000110101000" "00011010001100" "11011000110011" "00010001011001" "10111100110001" "11000101000010" "10110100101001" "10011010001001" "00001101001001" "11010100111100" "11110110011110" "10101011101111" "00111010100111" "01010010110111" "00110101010010" "00001001111110" "11111001100000" "01001110110111" "11000000111111" "10101100100011" "10111000000010" "10110001011011" "11100010011011" "00110100011101" "01011100110010" "11111100111100" "00111110011111" "00011111011011" "11101000110110" "01011101100011" "11000010100000" "10011000111010" "01011001011110" "10110110010011" "00111110001111" "11011011100100" "11101001111010" "00001000000011" "11111010110111" "00100111010110" "01001001101111" "00000111101010" "01010110101011" "00001010001110" "11001111001101" "00001110011000" "10100101101001" "10100010001100" "01100000011001" "00110001001001" "01011010100111" "11000010100011" "11001001010100" "10111110101100" "01011011001000" "00100110010011" "10010111111100" "00110110001110" "00011010100000" "11101110000100" "01011110010011" "11010001010001" "10010111000100" "00111010100110" "01000110101010" "11000101101101" "00110111111000" "10111001010000" "00110001010001" "11100101001110" "11101010000010" "10011000010100" "00001100100101" "11011011110110" "10101101110010" "11010010111101" "11001000010010" "00011100110101" "11001100010100" "01011110111100" "10101101011110" "01001110011110" "00001111000000" "01001111000000" "00010111100111" "01000000100000" "10100000110110" "01001111111100" "11110011101100" "00101000000001" "00010101011100" "11100111111101" "10110010110110" "00111001100011" "11100000000011" "00111011111001" "10110100100001" "10100101110101" "10011011000010" "11111011010101" "10011001111100" "10101111011000" "00001100110111" "11001101010001" "00101011111011" "11110010010100" "11101011000011" "00101011111111" "00111000100101" "11110011100011" "00110100010011" "01000011000001" "10100001111101" "01100000110010" "01100001000000" "00100101111000" "01011111000010" "00001001010001" "11000000000111" "11011000010111" "01000001100000" "00101111110001" "11111010111011" "11001010001111" "10100000001111" "01010001000001" "00110100100101" "10100000010111" "01010001101001" "10100110100110" "11001011010010" "10110110110001" "00011001111001" "00111110011010" "01010010011001" "01001101001000" "00011011000001" "00110110101001" "11001010000100" "11010000011101" "10100001010000" "00011010011011" "11010010011101" "00111010010101" "11101001001111" "01000011010100" "11100111000000" "10100011111010" "00110100001001" "00011000011101" "11100011110011" "01001010011101" "00001111010010" "11000010000100" "11100000110110" "00001010010011" "11101111110010" "00111000010111" "00101101001101" "10010100101110" "11111011111100" "10011010000101" "10111000110000" "01000001001110" "00100001110011" "11010011010110" "11010000000000" "11111011111111" "11101011010101" "00001001011101" "00111111010000" "00001011100011" "01000111110111" "10010110111011" "10111001101001" "10110100101011" "00000010111001" "00111101111000" "11111101100001" "10011000110110" "11000011110000" "10101011000111" "11100010001010" "11011011001110" "10101011111000" "11001001100100" "10100100111101" "11110000111011" "10011101010110" "11111100111111" "01010011011011" "11101101101100" "00101100111110" "11011001101011" "11110010110001" "00010100101011" "10101000100100" "01100100110101" "00100110000001" "11011110001000" "11000011010111" "00100011110001" "11111010111101" "01011101101010" "10100100000110" "00111000110000" "11001101010100" "11101010010101" "10110011101011" "10100101110010" "11001011110010" "00100100010110" "01010000011001" "11101010010011" "01001101000110" "11110000000000" "01001011001000" "01100001101111" "00010000101101" "11001001101011" "01000001111101" "00100110111011" "10011011100110" "10110100000010" "01011110001101" "11001000100101" "10111000000101" "00000011101011" "00100100001100" "00101000100100" "11110001100001" "11000011000111" "01000111001100" "00111101111000" "10011011001000" "01000100000011" "00110011001001" "10010110011000" "00010000010111" "10011101110110" "00101000100010" "01010001111110" "00000100001001" "00011011101110" "00110101011011" "01010010011110" "11000011101110" "10011110000001" "11100101010100" "11111010100101" "11111001000110" "10100010100101" "00111011011111" "11000110010011" "01010110011011" "00000110111011" "11101110101100" "10100000001010" "00000011100001" "00011001111001" "11011001101101" "11010110101011" "10011010111111" "11010000101001" "11101011000001" "01011001010011" }
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
set ID 357
set hasByteEnable 0
set MemName infer_layer_4_weights_V_31
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00100010101101" "11010111001000" "10100010011111" "11101010001000" "00110111010110" "10010001000101" "10100101111001" "01010100101111" "01001110111011" "11001000111101" "00111010110101" "10110001100001" "00011001010110" "01000011111110" "10111101000000" "10111000000101" "01000110011110" "11111000100000" "00111001011000" "01011011101001" "11101110100111" "01001011111010" "10111001010010" "01010101100100" "11011111001110" "11001010100110" "11011000010111" "10100011100011" "00010001110111" "00110111111110" "10011100100011" "00100101111011" "00010000000110" "00110001010101" "01100111001110" "10100100001000" "01100010001011" "11011111000011" "11111101111101" "10011011010000" "01001111101011" "01100010010001" "10110011000110" "11101100001110" "11001101010011" "10100100001100" "00100000010001" "00010011011001" "00010010011101" "01001110111111" "00010011110110" "10011011001110" "10111000010000" "00101100001110" "11001000000110" "01010111101001" "01011001111000" "10011001000001" "01011001110010" "10111011111010" "01001110101110" "00011111010011" "11011001110001" "10100101101110" "00110011110100" "00000100110000" "00001101111101" "00011101010001" "00011101101100" "01000111011101" "11111101010001" "01000111000011" "10100110101010" "10100000001000" "01100111111110" "11100011011110" "10101111110000" "00110001010000" "00110010101111" "10011110101011" "11111111110111" "11101100011000" "10010001100000" "11001110001011" "11010110101000" "11010110001110" "11111000001010" "10110011100011" "00101101000010" "11011111010111" "10100001111011" "10110010011111" "11111001000100" "11010101011110" "11110111111101" "11000110001000" "10101110110010" "10111000111100" "01000101011001" "00100000100101" "00111000110001" "11101001111011" "10101000101010" "11001101110011" "11001111001101" "01001001101101" "11001001110101" "01000100110011" "10100000111110" "10011110111100" "11110110001011" "00110100111100" "10111001110100" "10100110010011" "00110000100111" "00110011111010" "10110100101011" "10110101010101" "11001110111110" "11100011010110" "10111101111100" "11001111010010" "10111001010010" "10011101000011" "00001100111111" "10101100001000" "11100001001110" "11001111011101" "10111101100101" "00111001000010" "00011001011001" "00011100011110" "11100011000100" "11010100001101" "11000111001100" "11001110001100" "11101011001010" "01001011010101" "00011100000111" "01010000110101" "11010010000100" "01000111110010" "10110100011100" "00000100010111" "00011101101110" "01000011101100" "00010000001010" "00100110010110" "11011111110000" "00110000111111" "10101001011110" "01010111100101" "11010001010011" "00110011110100" "11111011010011" "11110001011101" "00110101110110" "11000000001101" "01000100010100" "11011111001011" "11001001011110" "00000011001111" "00011101111011" "10011001000101" "11000100010011" "11000110111001" "01000011110011" "10110111101011" "01010101110001" "11100101000010" "10101100011100" "01010001101000" "10100001110010" "11101000110100" "01000000000101" "11100111100010" "10100000011110" "11010011101010" "11110100110001" "10101001010111" "10101011101101" "11001110010001" "10101100010100" "10011110111000" "10100100101000" "01001011001111" "00011100011011" "10111000111010" "01011100111110" "10100110000111" "00000101000101" "00110011101011" "00010000001100" "11101110100100" "01011000000110" "00010011111110" "11110110000110" "00011111100011" "11011010111000" "11101111111010" "10100101011001" "11101111100011" "01011011111010" "10111010110000" "11000000000111" "10011111000110" "01100111011100" "00111101110001" "00111010001000" "10011010000000" "01010111000010" "01001101000110" "00100111001000" "01001010111011" "00000111001101" "01010001111111" "00101111001110" "01010011100011" "00110100011100" "00011011001001" "10101010011110" "01010111101100" "00111011110000" "10101001110101" "10101100010000" "00000010011101" "10100000000111" "00001010010000" "00001011101000" "00100110011010" "10111001010101" "11000011100100" "11000011101001" "11101011110000" "00010011000000" "11110000100111" "11010100001001" "00000101110101" "01100100010010" "11101000111001" "11010011100110" "10111101010110" "00010101110011" "11111100111000" "00000110001011" "10001100011111" "00110001010010" "01100011111010" "10011011011100" "00010000111110" "10110000111111" "01000110010000" "10001011111000" "01011011111100" "10110000101001" "00101010100000" "11111001000011" "00001001010011" "10011101000011" "00011100001011" "01001100101110" "11100101010100" "10100011001000" "11010110100000" "01010111010001" "00001011110001" "11011111010111" "10011101110101" "01010101100110" "00000011110011" "11010101010110" "00110000010001" "11111111110100" "01000101011011" "11001100101010" "00011110000110" "01010101010011" "11111001101010" "01011001110100" "11100000011001" "01001100000100" "00100010110100" "10111101010010" "01010001110010" "00110000100000" "00101101110101" "01000111101101" "01011010001101" }
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
set ID 358
set hasByteEnable 0
set MemName infer_layer_5_out_V
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 21
set AddrRange 5408
set AddrWd 13
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
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
    port_num 2 \
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


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
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
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 359
set hasByteEnable 0
set MemName infer_layer_6_bias_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00000000000000" "11100110010100" "11101011000000" "11110111001011" "11111001111000" "11110000010010" "11111100011101" "00101100100001" "11111000001111" "01010111010110" "11111000010001" "11101111100110" "11101110111101" "11101011110010" "11110110110010" "11001101101010" "11111001011101" "11101000011011" "00000000000000" "11101110101111" "11100011011001" "11110000110110" "11001011111111" "00100000011010" "11111010111000" "11011110100100" "11110111000110" "00001000011101" "11111001110110" "11101110111110" "11101010101101" "11101110101010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 360
set hasByteEnable 0
set MemName infer_layer_6_out_V
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 21
set AddrRange 3872
set AddrWd 12
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
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
    port_num 2 \
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


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
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
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 361
set hasByteEnable 0
set MemName infer_layer_6_weights_V_0
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11111011001000" "11100100101000" "01000001011111" "00101001111111" "11100011000110" "00001110010011" "00011010111100" "01011111000001" "01010010010011" "11110101011000" "10110110001100" "11000000000110" "11010000001111" "00001110101010" "11110111011001" "10100110101111" "11000100000100" "00111111101111" "10011101100010" "00011111010110" "11000111111110" "00100110000001" "01011111100000" "01010010011100" "00111111101101" "00110101011100" "10101001110100" "10100011100010" "01001100011100" "11100110011000" "10111010000010" "11010111101000" "11100001001000" "01000101000010" "01000001010100" "00111010010101" "10110101011110" "00001001001111" "00000101100111" "11010111011010" "11011100111100" "10101100000000" "00010010011110" "01000100100111" "00000111101010" "11100110101100" "10110110101101" "10100011010110" "11110011010011" "10111000000011" "11110001010110" "11000011110000" "11001111011110" "00000011110111" "01001011110110" "11000101011110" "00001100011000" "11011110010011" "00010001011100" "11111011111000" "11011010010001" "11101110110110" "01010001010101" "11110101110011" "01010111100110" "00110111010101" "00011100100011" "11110010111001" "11101001111001" "10101101000011" "11110010101011" "01011111100001" "00010010101001" "11110010100001" "01010001100010" "11111110001010" "01001101101001" "10111011101001" "01010111001000" "11111110001010" "11011000110010" "01010010101010" "00001000110100" "11001101000000" "00000111100101" "10011110101111" "11011100000101" "11111000110111" "11100100011001" "00000101000011" "00111111100101" "01011111000110" "00101111000100" "00011100101010" "00101010011100" "11000011010101" "10110110111011" "00111110100100" "00011110111111" "10100100100011" "11111100100001" "00001010101111" "01001100110000" "00011010101110" "11010011000011" "00100100111000" "10101011011010" "01010011101100" "00000010010111" "11101100101010" "10010111100011" "11011001100001" "10101001101001" "10111100010111" "11100000001000" "10100101111100" "01011111100100" "00000101010010" "10110000100100" "00111001000111" "01001100110001" "11110111010011" "11101101100001" "01100110011101" "11001011000000" "01011011011010" "00110001111010" "10111011100110" "10111001001111" "00101011010101" "11110100100110" "00110111101100" "11101001101011" "11110011101010" "11001010000000" "11111100001101" "01000101001110" "00000110111010" "10101000101010" "00011000011101" "10100011110010" "01010000110100" "01011000000001" "00011111000010" "00101111100011" "11001110111001" "01000010001011" "11101010011110" "01011111110010" "00101101000011" "01011100111110" "01000000000011" "11101110100100" "00011101001011" "11001001001100" "01100110111000" "11111010010001" "00001000100111" "10100100110001" "11101101100010" "00101111110110" "00111001000011" "01011101010101" "01100100011000" "00101111011110" "00100011101110" "11111100101110" "00100111001000" "11111000011111" "10100111010100" "11111000100110" "10111111000010" "10011110101100" "00100010110101" "11001110010111" "11111011010101" "11110100101000" "01000001000100" "01001011010011" "11011000110011" "11101101000000" "10011011110001" "00001000100010" "11000111000101" "11110001000011" "11000010111000" "00100100011110" "00010000000100" "01001001110100" "01001010100000" "01011101110001" "11010010110000" "11000110110001" "11100010100111" "11011010111000" "00100010110101" "10101001100100" "11011000100110" "11100101100011" "01001010110000" "00010111000011" "00101111001101" "11101111001100" "10111110101110" "00100011101101" "11010111011001" "10101110100011" "11110000011011" "11110011101001" "01001110000100" "01011000101111" "00110000011000" "11011101001010" "11000101101010" "11110111111111" "00010000001000" "00001011001000" "00111110010010" "00011110010000" "11010111110100" "00101001101010" "11001010000100" "11111010011101" "11011100110110" "10011100010110" "11101010011111" "10100101010001" "10110000010010" "00100101110000" "00110110111110" "10101010100001" "01001001100100" "01010100111110" "00100010011001" "01011111000000" "11011101001110" "10100001010010" "11001011100110" "01011011000011" "00010110110100" "11010111010101" "11101100111001" "00101001001111" "11000011100111" "01010001101100" "10111111010000" "11111100000010" "11100000000111" "00110001001010" "11100000001101" "10011101011001" "00001101001111" "01000110011010" "01000010100110" "11110110010011" "00001010011101" "00011100111001" "11010110000011" "10111000011110" "01010110010111" "01100010001101" "11011010111010" "00011100100110" "11001111010011" "01010110000111" "01000111010101" "10011111111111" "11001100111010" "01010111001000" "10100011100001" "11110110101100" "00011001001101" "11000000110101" "01100001100101" "00111100000001" "01100110000101" "11100001101001" "00101110000111" "11001001101001" "11000111011110" "11110100000100" "11001101111111" "10111010001001" "00010000100000" "10110010101011" "00101101010101" "00001011010110" "10011011101010" }
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
set ID 362
set hasByteEnable 0
set MemName infer_layer_6_weights_V_1
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0000001110111000" "1111001010111011" "0010010110011100" "1111111011111110" "1110100111010100" "0000001100011111" "0011100011110110" "0001011101101111" "1111111011001101" "1110101100010010" "1110011001110100" "1110101001101111" "1110001111000101" "0001001100110111" "1110010011011001" "0000100100100011" "1111110010001011" "1110011111101110" "0000110000010111" "0001000001101100" "0000110101001101" "0000010110011110" "0010010101111001" "0100101000000000" "0100000000010100" "1110111111100010" "0010100110110101" "0000110011110110" "1111000010011100" "0000010111111011" "0001010011010100" "0000010001101100" "1110101010110000" "0000011010110010" "1100111111001010" "0000001001101110" "1111010000111000" "0000000110101010" "1110010101010011" "0000100111010010" "1111111000011110" "0001010000000011" "0000001011111111" "0000010100001100" "1101111010000010" "1101111100001110" "1110101111000101" "0001101011000011" "0001000010101110" "0001110110011110" "0000001000011001" "0001001110001111" "0001001001111010" "1110101100100100" "1100000000011111" "0011010110100110" "0000111000001111" "1110111000000110" "0001001111111001" "0001010011010000" "0001001010111011" "1111101001101011" "0000010101101001" "1111101101100101" "0000111111100001" "1111111011100000" "1101001010110001" "1111101100000010" "1111001110001101" "1110111100010111" "1110101001111000" "1110101100101111" "1111000010110011" "1110111010110111" "1110100100100100" "1110110101010111" "1011001110101101" "1100110111110000" "0001000111011111" "1111101100010111" "1110110111011010" "0001010110111111" "0000010011111111" "1111110000000101" "1111011010111011" "0001001000101001" "1111110010101011" "1100010101000110" "1100101111101110" "0000110010000110" "1101001110111110" "1111101110000101" "1110111100111100" "1111101010000000" "1111001010101010" "0000111010111101" "1111011100111101" "0000111001000001" "0011011101001101" "1111111011000001" "0000000111011000" "0001011101010101" "0010110111110100" "1110100010000001" "0000000111000100" "1111101100000110" "1110101001111010" "0001001111001111" "1110011101101101" "0000011110010010" "1110100001010111" "0000000100111111" "1110110001111101" "0000100101110100" "0000010110000111" "0001000110001110" "1111001100000011" "0001011000001010" "0010100011100000" "0010111100110011" "1110111110111110" "1111110111010101" "0001111111010011" "0001010111011100" "1110011000100000" "0000101001000001" "1111100101111010" "1110111100101011" "0000110110011110" "1110110101100001" "0000101101001011" "0000000011011000" "1111111111001101" "0000111100000111" "0001000011001010" "1111111100011111" "0000010101111101" "0001000110001001" "0000011000010010" "0001100011101000" "1110100000000000" "1110101100001110" "0000111110111110" "1111101100010011" "1111110001111111" "0001110111111111" "0000101101000011" "1111011011000110" "1111111001100011" "1111001011001011" "1110100011100000" "0101110010100100" "1111110111011110" "1111100101110010" "0000000111110110" "1111000010111101" "0000111110101000" "0001101000010101" "0001100010010010" "1111010001111110" "0001001111000010" "1111110101100001" "1100100001000000" "1111101010000111" "0000110010110101" "1111010100001100" "0000001011101011" "1111000011010011" "1110011101001101" "1110101011110101" "0000100111011010" "0001100011110110" "1110101100000111" "1111011101111101" "0000001010110001" "0000011101001010" "0000100001010101" "1111000010101111" "1111111001010010" "1111101110001001" "0001100010010101" "0000001010011110" "1111011001010101" "1011101011010010" "1101011110010000" "0000110010000111" "1100001000100011" "0000111001110111" "0001010110010000" "1111101100110000" "0001000011010111" "1111110110101111" "1110100001001101" "1111111100110100" "0011000100000111" "0000100101000000" "1111110010111011" "0001000010110001" "0010110000101100" "1110111100100100" "1111001010000010" "0001000101100110" "0001011110110111" "1111011010000101" "0000011011110001" "0010100001110000" "0001000001100111" "1111100101010000" "0001000111110001" "1110011111000001" "1110110110011000" "0000010111000011" "1111011100111100" "1110110100101110" "0100000011000000" "0011000100000111" "1110010001010110" "0000100001010010" "0010100000011011" "1111110010110101" "0000111111011100" "0001001000101000" "0000000010101101" "0001001011101111" "1110011001001100" "0000111001010001" "0011001100111111" "0001000011010100" "1111111010110111" "1111001010010010" "0011010110010110" "1111010100101001" "1111010011101010" "1111000111000000" "1111001010100010" "1110101101111110" "0010001101111100" "0001101001111000" "0000011110000001" "1111100110010100" "0000110111010001" "1111011110110100" "0000100101101000" "0000111000110010" "0000011100100100" "0000000000110001" "0001111011100110" "0100010011001111" "1111010001100001" "1110101110110100" "0011000111111000" "0000011000000110" "1111001010001010" "0001001000101111" "0001100011101111" "1110101101101001" "1110111001011000" "1111001000000011" "0000000110011110" "1111011011111001" "0000010001101101" "0000010101110011" "1110110111111011" "0001010111011101" "1111001110101100" "0000111100011100" "1111000001100011" "0000111000000000" "1101001100000000" "1101011110100100" "1111010100110111" "0000001101111110" "0001011111011010" "0000100000001101" "1111101000101110" "1111100100100101" "1110101001001011" "0000000010100001" "0001011100011100" "1110110001100100" "0001001001111101" "1111100100101000" "1111000110001011" "1110101000010011" "0000110010010111" "0001001011011101" "1110100101101101" "1111111111100110" }
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
set ID 363
set hasByteEnable 0
set MemName infer_layer_6_weights_V_2
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0000010011000101" "0001100000000110" "0010100110000110" "1111001110111000" "1110110100110110" "1110110101011000" "0001000001110010" "0000000001010011" "1110011101000000" "1111000010110101" "0001010001111101" "1111100100011101" "1111000001110001" "1111100100001100" "1110110010011101" "0000011000110011" "1110110010100110" "0000010100101110" "1111010100100110" "1111010111100011" "1110101011000011" "1111111100010111" "0001001000010011" "0000101010101110" "0000001110010101" "0001100001110001" "0000100000010110" "1110101110101111" "1111100011010101" "1111011000100001" "0001000110001000" "0001000011110110" "0000110110010101" "0000110100111001" "0010110110001011" "1110101011101111" "1111101000101001" "1111010011111001" "0010001010100000" "0000011101011001" "1111100110001001" "1111001101110000" "0000100001010001" "0001011000011110" "0010010111000000" "0000010011100011" "0000000111001111" "1110111001101111" "1111111100000011" "1111011011001001" "1111000100000100" "0001011100000100" "0001000100010100" "0001010010001010" "0000000000100011" "0001110001110010" "1111111100110100" "1110111000111011" "0000011010001101" "0000000001010111" "0000110110001111" "0000011101101010" "1111010000100001" "0000011001010111" "0000001110001010" "0001100011101010" "0000100010000101" "1111000010001100" "0000110111001110" "1111110010101011" "0001011010110100" "1111001011110111" "1110101101100111" "1110010101010000" "1110110101101100" "1111111011001100" "0010100100000011" "0001010111011000" "1110100100000100" "1110110001110000" "0000010010100001" "0000011100011110" "1110011010011011" "0000110111001001" "1110010101000000" "0000001000010101" "1111101100111001" "1111101100010001" "0000010100011101" "0000011011011001" "0000111111110010" "0000010001100100" "0000000000010111" "0000110011010011" "1111101110101010" "1111010000110100" "1110010100000100" "1110100010010000" "1111100110110101" "1110110101001100" "1111000010100110" "0000000011111100" "0000011000001100" "0001011010100010" "0000000111000000" "1110100101100001" "0000011100101101" "1111001001111110" "0010001000010011" "0000011001110101" "1111101101101100" "0000111001001001" "1110111010101101" "1111000101110001" "0001100110110000" "0000111011100010" "0000111001110110" "0001001001101000" "0001000100000000" "0000101111110000" "1100011100000101" "1111011100000110" "1110110110110001" "0001100000000111" "0000111110111010" "0001000100110100" "1110101000111011" "1111110010010011" "1111100001100000" "1111110111101001" "0001111111111111" "1110110010111010" "0000111110111000" "0000011100011110" "1111101111111001" "0000001110110001" "1111011100010100" "0000110110000001" "0001100101100010" "0001011100101001" "0010011001101000" "0000001001011000" "0001011100111010" "1110110010011001" "0000001110101011" "1111011100010101" "1111100001011101" "1110110100101111" "1111000110011001" "0000101101011010" "0001010010110110" "0001100101101101" "1011100111001011" "1111110011100111" "1110010111001011" "1111111011100000" "1110011011110110" "1111101101011101" "0000100100100011" "1111110000100001" "0001011110111101" "1110011101101001" "1110111110111100" "0001100001010110" "1110011100010000" "0001011110011111" "1111100011011111" "1111001110010100" "1110111100111111" "1111111011001000" "1111011111011110" "1111011101000110" "0010011001010110" "0010010010111100" "0001001110011011" "0001000000000110" "0001010000011000" "0001100010111011" "0000101011100100" "1111000011001011" "1111110100100101" "0001001110101111" "1111010010001000" "1111100100101000" "1111000101111011" "0001100010010000" "1100111001011010" "1111101011001100" "0001011100000001" "1110110111010111" "0001100011001011" "1110101011010001" "1111100101011100" "1111001100001101" "1110110110011000" "1110011111101110" "0001011111100001" "1110111011001101" "1110100101011001" "1110101001101100" "1110111011001001" "1111001110001000" "1111001001011010" "0001011001001000" "0000000110001110" "1110100111110011" "0000001010101010" "0000000101100110" "0001100111000011" "1111111001101000" "0000100011001110" "0000101110110101" "0000100110111100" "0001001011011001" "1101011001010101" "0001000110010100" "0001001101001110" "1111011101010100" "1111011101101110" "0001010011000100" "1110011010000111" "0001011010001010" "0001100001011000" "1111001100101010" "1111011100001111" "1110101100000011" "1100110101001100" "0000011000001100" "0001011000101001" "0001010111001100" "1101110101110111" "1110101100110110" "0001001000101000" "0001000101001000" "1111001000000000" "1111010000111011" "1110001011110101" "1111110010001011" "1111011110110111" "1111111100101011" "0001101011011110" "1111010100010101" "1111010101111101" "1110101111000010" "0000001110011001" "1110101000001011" "1110100001110101" "1101000010010011" "1110100011101100" "1110101010010001" "1101011010011011" "1111110111100111" "0001010010011100" "1111100011001011" "0000011110001110" "0001000011011101" "0001001101110110" "0000110110110010" "1110000100101100" "1111011000101110" "0000101111001101" "0001011110000110" "1110101101111010" "0000011000010111" "0000001011011111" "1110101000011101" "0000000101111010" "0001011010100100" "1101100011010110" "1110000111011010" "0000100000110011" "1110110001000110" "0001101011000100" "0000100101111111" "0000010011110100" "1111111001001000" "0000110101100010" "0000010100100001" "1110110110010110" "1101101001101101" "0001000000110110" "1110110000000111" "1110100000111000" "0000000110100001" "1111011110100110" "0001011000000111" "1111100000000010" "0001010001101111" }
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
set ID 364
set hasByteEnable 0
set MemName infer_layer_6_weights_V_3
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0001000010010111" "1110100010001001" "0001100011010001" "0001001100001101" "1110011010110110" "0000110010100001" "0010110001011110" "0001000101011011" "1111001011011110" "0000101001011011" "1111111011000101" "0000101000111011" "0001010000000100" "1111001011011111" "1111101001110011" "0000101100000111" "1110011000111111" "0000100100100011" "0001010110011011" "1111001110010011" "0001011111001101" "0001010000110110" "0000010101011011" "1111011100110111" "0001000010001100" "0001100101100000" "1111111110010000" "1110101110000111" "1110100011100101" "0000000011100010" "0000101000110101" "1111011110110110" "1110011110111011" "0001010101101011" "0010000101101001" "0000001110001001" "1110100111110101" "1111001101110000" "0000100111010010" "0000011000000100" "1110011111100110" "1111001010011100" "1111100101101100" "1110011011011001" "0001110100000011" "0001010111000011" "1110100010100111" "1110010101101110" "1111100000110010" "1111011011011111" "1111100000111110" "0000111010000001" "0000000011010001" "0001000011001100" "0010111010100001" "0001110000011000" "0000110111101101" "0000111111110110" "0000001100111011" "0000001101001100" "0000010111001001" "0000101011001000" "0001000011000010" "1110110011101111" "1110100010010100" "1110100000101100" "0000111110101000" "1110100011011100" "0001001011011001" "1111001101110111" "0000010000010110" "1110101011111010" "0000000110110000" "1111110101011111" "0000100101111011" "1110011011110000" "0000011101000111" "0001000000100111" "0000010100111101" "1110011000011101" "0000011000001000" "1110100110010110" "0001010011000001" "1111011101011000" "1111000100011100" "1111111000101100" "1110110111001011" "0001111100110101" "0010100001101111" "1110010111110001" "0010010001010100" "0000101011010111" "1110011110110101" "0000100111110001" "1111010110011111" "0001011100101010" "1111100101000000" "0000101001011001" "1101111010001011" "1111111001010100" "1111000100010001" "0001000110111010" "0000000101101111" "0001010001100111" "1111011001000101" "1110100010111100" "0000101010111110" "1111100011100000" "1110000110001001" "0000000000110100" "0000110000011110" "1111111110110110" "1110110101010000" "0000001111100010" "0000001100011000" "0001011101101010" "0000010110110100" "1110101110100000" "0001000010100001" "0000101111011011" "1110101001011111" "0001010110100111" "1110111011000111" "0000110000101001" "0000111010110010" "0000010111010110" "1111100011101111" "0001001100001011" "0000110101110111" "1110101000110101" "0001010010111110" "0000100110000011" "0000100111100110" "0001001110100010" "0001110000111001" "0000000101101000" "1111010111011110" "1111001000010000" "0000000101110111" "1110010011110000" "0011000010110001" "0010111000111110" "0001011010101110" "1110101110111110" "0000100111001111" "0000100110110000" "0000000001101010" "0001010010100011" "1110100011010011" "0000111101000111" "0001010001010111" "0000111001111111" "1110010001000111" "1111010001111111" "0000111110100100" "1110101001110001" "0000100110111100" "0000111010011001" "1111000011100011" "1111101010111101" "1110111110100110" "1111000111110011" "0011010110111001" "0000011000011010" "0000001101101011" "1110101011110010" "0000011101010110" "1110111110000101" "0000100011011000" "1110110101101101" "0000001110001011" "0000110010110000" "0010000110000101" "0000010010111011" "0000000001101011" "0001010111110100" "0000100101110010" "1101111110101101" "1111110010110111" "1110100001100100" "0000111000011111" "0000001000111010" "0010000100100100" "0100000000010011" "1111011100001110" "0000011111110100" "0000111101111011" "0000001111000011" "1110011100100010" "1111000101100000" "1111001100011011" "0001001001111111" "1110111011100110" "0000000110011100" "1101101100000011" "1111000100110011" "0000001110001001" "1110110001000111" "0000100000100110" "1110011010010000" "0001011010010100" "0000110001110010" "1110111111101001" "1111010111010010" "1101001001100110" "1110011100000100" "1111000101010011" "0000110111010000" "0001010110011010" "0000100001101001" "1111000101110111" "1111001000101011" "0000010011010101" "1110101100010000" "1111000000010100" "1111000001110101" "0001010111100001" "1110101100010010" "1111101000101000" "1111100001101010" "0000100001010011" "1110111110000010" "0000100000001011" "1111100101000011" "0000001000101001" "1111111010010101" "1111011110011100" "0000110110011011" "0000000000010110" "1110011101000110" "0001111010111111" "0000110000111100" "1111000010011010" "0001000110111011" "1111010101001101" "0001000101111100" "0001011001101010" "0001111101011011" "1111011110110000" "0001010001001001" "0000110011001010" "0000000001000011" "0000010010001111" "0000010000111101" "1111110011110111" "1111101111100000" "0001010111011100" "1110100001001001" "0000110100101101" "1110001001000110" "0000001110001101" "0001000011011101" "0001011110110110" "1111111000101000" "1111101011110011" "0001011001110110" "0000011000001100" "0001000010111001" "1111100110100101" "1110100010001111" "0001100010010101" "0001001000111000" "0001000100000111" "0001000100100110" "1111001101001111" "0000101110101111" "1111111110111101" "1110101001100001" "1111011111000101" "1111001001010110" "0001100100100011" "1110111100010000" "1110011101110001" "1110111000101011" "0001001101100110" "1111100110100001" "1111110010011100" "0000001100110011" "0010011010011111" "0000111001101000" "0100100110001010" "0000001011001000" "0001000010000001" "0001001001110101" "0000111111110000" "1111001110010111" "0000011010110011" "0000100110000010" }
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
set ID 365
set hasByteEnable 0
set MemName infer_layer_6_weights_V_4
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11011000001001" "00111000010011" "00011101111111" "00110001000000" "10110111100000" "10011101010111" "00111010100000" "10111011101000" "10110100011110" "00111010001101" "10100101111111" "00101101111000" "11010000110110" "00111000111101" "10101010101100" "00000010101010" "00010011011010" "11100111011001" "00011111000100" "00001010010110" "10100011010101" "10011111110001" "11100001010101" "00110011000110" "00000100101000" "10100010010101" "11111000100101" "01100000000100" "10111011011111" "10100000101011" "00001011101100" "10101101010110" "11010111001001" "11110011001110" "00001110011011" "11101111000000" "01100101101001" "11000101001011" "11000110111001" "11100010100101" "00010011111110" "11111001000101" "01011100110100" "00100101011100" "11011101111001" "10010111011100" "11001011000101" "00110000010110" "11001001110110" "01001100100001" "10100000001100" "00110101011000" "11100011100100" "01100000001100" "11000111011011" "01001001010000" "11100110011010" "00001010010011" "10101100101100" "11111110011000" "01100011101011" "10101110110000" "10011000001111" "00111111111000" "01100001011000" "00000110100011" "01000111000000" "00110001011010" "00111110001111" "00101011100000" "11011001100000" "11111010100100" "11111110111010" "11010011111110" "10101000111000" "11100000010000" "11101111000010" "00110001100001" "00000010001110" "00010001011100" "11110000000111" "10110101000110" "11010000101111" "10011001100011" "00011001001000" "11010101101111" "11001110101001" "10100111100001" "00010011000011" "10100000001000" "10100000001110" "10100101010100" "00100111011101" "00000010111111" "10111100000011" "11111000110000" "10011001000110" "00110010100101" "11011100001000" "11001110010010" "00011011000001" "00010010110010" "11101010010001" "01010011110001" "00110100110011" "00000111111001" "01001100010001" "00111101001110" "11010011010010" "11001101101011" "10101011111110" "00011100000010" "00000110110001" "11111011010110" "10101011001010" "11100110001010" "11110000001011" "00100011000101" "01010111001100" "10100110010001" "00000111001000" "10011111100000" "00101010111101" "01000101101100" "00101111000100" "11010001010110" "01001010111000" "01010100100110" "10110101101010" "00011000101110" "00110110011100" "11110111010110" "11001010100101" "00101010001001" "11100110110001" "11001001110010" "01100110001010" "10110101101001" "10111100110011" "11110101001001" "00100001001011" "11101011111001" "10101110010101" "10101000111101" "11111111110011" "10110110111111" "10111100111101" "01010100011100" "00110101101100" "01000111100100" "11111101100011" "10101101101101" "00101110000011" "11011110010100" "10101101110100" "10100111111000" "10100001110001" "10111010100101" "01001011110101" "00111111010000" "11100100101001" "10110001001000" "11101010111100" "11110111100100" "01011111001001" "11111111011100" "01011111011111" "11011110000001" "11101011111110" "10110101000010" "01000101000100" "01010110100000" "10011111001101" "00111010111111" "01001110010010" "11110110000100" "10010011000110" "10100101100001" "00000111110110" "00110000111101" "01001100111101" "10011100100000" "00100010010101" "10110011110011" "10101100011011" "01011101010001" "00011001000101" "11011011010011" "01001010100100" "00111010011010" "01011111110001" "00010110111111" "10011100000101" "10011000011001" "00110111001010" "00010100100010" "11100010000100" "10111100000111" "00010101011110" "11110011110110" "00111100101110" "01000111110100" "10100001010011" "10101101100100" "11001010100110" "01001110000011" "01011001011011" "10101001110010" "00000011111100" "11011010111100" "10100100111110" "01010011110101" "11000011010010" "11000001100100" "10111011101011" "00110100111101" "00001010110010" "11000000001010" "10101100101101" "11100001001100" "10011111010001" "10101101001100" "00011111001010" "11100000101111" "11001110001000" "01100001000111" "00110001001001" "11010100110111" "11101001011010" "11100100011000" "01010011101000" "10100100010011" "00100001001010" "00001100001011" "01010001111111" "00111100101111" "00000101101000" "11000010001100" "11111110110101" "11011011010000" "10100100000001" "01001110001110" "10101001100111" "00010101011100" "01011011110110" "10100001111111" "00111100101100" "00011000000111" "00011001101100" "01100100011110" "00101100100110" "00010111001100" "01010011011000" "01001111000000" "11001111010000" "00010101001101" "11010011110000" "10100110000001" "11001011010100" "10111000110010" "10101000001101" "00011101011111" "00111011111111" "11101110010001" "01100001110000" "11001110111110" "10100010110010" "01000001010010" "00111110101110" "00010011011000" "01010001010111" "01001010001000" "01011010111001" "10111000001111" "00011000100110" "11100000011000" "10100100010100" "11010001101010" "00111100010100" "11111111101111" "01011010011000" "10100001000000" "10101100100010" "00101110110111" "11110010100101" "00101000100011" "11110100100111" "10010110011101" }
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
set ID 366
set hasByteEnable 0
set MemName infer_layer_6_weights_V_5
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11001101101000" "10011010001010" "10010111000100" "10100101010011" "11101100101010" "01010110011010" "00101010011001" "00011111100100" "00111010111110" "01010110100000" "11110001110111" "01100010101001" "10110100001010" "01001110011111" "00011001010010" "01001100010001" "00001010000110" "01001000011001" "00101110101010" "00010110011110" "10110111000101" "11001101101000" "11010101100001" "00110111000001" "10010000010010" "01011001110101" "00000110010000" "10111010011010" "11101010110111" "11010001101011" "10100101110110" "10111011001111" "00111101001110" "00000101101101" "00100100000011" "10111000010000" "11011110010110" "00000110010010" "11111110101100" "11101000010010" "11010010010100" "00001100000000" "00111110011101" "11101110110101" "11001010000101" "11010001000101" "10111011000100" "10101101001001" "10010010100000" "10011001111000" "00000111010000" "01100010101000" "11011111001100" "01100010101010" "01001100000011" "11100011110110" "01000010010100" "11010010111000" "01010000001001" "11011101001001" "00001100101010" "00101110011010" "01000111101001" "01001110111001" "10100101100111" "10100111110110" "10111010011110" "00011110111100" "01001000110110" "00110000011110" "01011001111001" "10011001110011" "01010000010010" "01011110010111" "00010100000110" "01101000010010" "00000001000101" "10010100101100" "10100100001101" "01011010011010" "11111100001110" "10011100110011" "00011101001001" "11110001001100" "00110110001011" "00011100000010" "10111010000110" "11001110000001" "00011000100100" "00111101000011" "00110110110010" "00000010000110" "00101011100011" "10011111000011" "00100000010010" "01011110100010" "11100111111101" "01011110000010" "10100111011100" "00110101010110" "10101011010010" "00100101100010" "00100010111010" "11000011011100" "00011011010100" "00100000010011" "11100011001110" "01000011111110" "11010101111010" "00011001001101" "10111011111000" "00101001100001" "11010010010111" "01010011010000" "00011101010001" "00100111011111" "11111000011101" "01001110001010" "11100101100001" "01011010100010" "11010110100000" "11110101011110" "10110101110100" "01001101110011" "00100010100001" "10011010001000" "01100011100101" "01011101011011" "10010101101100" "11001110000110" "00010001001000" "01010001011100" "01010110110100" "11011100001100" "11110000000000" "11000100111010" "10101110000001" "00010000111011" "00110010101000" "01000110001100" "11001001100111" "10111111101001" "11011111101100" "00110010001100" "11100000010110" "11010011010010" "10100110010100" "11100010000111" "01011010100010" "00011010111110" "00011101011010" "10100011110011" "00000110110110" "00111010000000" "11000111100111" "11111111001111" "10101011000000" "00011001010110" "11010000100001" "00001011100101" "11001011000011" "11111111101011" "01010111011011" "01010001111000" "00111000001011" "00100111010001" "11101000111101" "00010011001000" "01001011111100" "00010110100000" "00100100001101" "11011101010101" "01001110001100" "00001001010101" "10110001000110" "10010001100001" "00100100101100" "11111001101110" "00111111110111" "01000000011100" "00101010000100" "00100000001111" "00010111000100" "00010011000001" "10011001010100" "11011100010010" "11010011111100" "10111001001101" "00011101010101" "11000000101011" "11010111000001" "00100101010011" "11110100010011" "00101001110110" "10101100000100" "10111100011010" "00001000011111" "10100001100111" "10010000010111" "11110101000110" "00100101110110" "11110001111100" "10111111010110" "00010010110001" "00011110010001" "11101000100000" "11000101001101" "01010110010000" "10110101111101" "10110001010101" "00001100011011" "11011011100101" "00100100010001" "10101101001100" "11000110101101" "01000000111111" "11000101100101" "00111110010011" "11101101010010" "01010000100101" "01011001101110" "00010101000100" "10111010001010" "01000110001111" "00000111000011" "00110001111000" "10111001000010" "01010000101000" "11101000000001" "10111111010001" "11000000011011" "00001000000011" "00111100100010" "11000111001001" "00011011011110" "00010000001001" "00011001101011" "00101110110001" "00011110110100" "11110001101010" "10110100000101" "11101100100000" "00000101011000" "00101110101011" "01000010101110" "01010000100011" "10111010001001" "00101010101011" "10100000110001" "00111000101110" "00100101010000" "10011111101101" "11101111010111" "10100101011011" "11111111110011" "00011100000111" "11111110000000" "11110001101010" "01001110101100" "00101110110111" "00111011110101" "11110010000000" "11110000101001" "00111100000110" "01010011000111" "00001001011000" "10011100110111" "11110111100010" "00010110110111" "10101101111000" "01000101000111" "11111110000111" "00010011010100" "01010000000100" "00110110011100" "11100100110111" "01011101010010" "10100111110001" "01010010000111" "00010100100101" "10111101011001" "00110001100010" "01010111011010" "10101010000001" "00011000010100" "00001111010011" "00011101111000" "01000100110010" }
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
set ID 367
set hasByteEnable 0
set MemName infer_layer_6_weights_V_6
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00001110011000" "01100001001000" "11111110110110" "11110001111000" "00000001100010" "01010111111010" "00011100000100" "10101011111110" "11100101110011" "00001110011011" "11101011001110" "00011000011111" "11010101101011" "00110111010001" "11011100110000" "01010001110111" "10100110011010" "01010010010100" "11011101111011" "10110011000001" "11001110111011" "01100100101100" "11001001000101" "11000010101011" "00100010000000" "00100100101110" "00101000010100" "10100001000011" "01001110011110" "11110101100100" "00110011011111" "00010000101111" "00111000011010" "10111011100110" "00111111101100" "00001101001010" "00000010000111" "01010010100101" "11010101101000" "01000100010100" "10101011110100" "11001100010111" "11010101101111" "00100101110010" "10100000011000" "01011000111010" "00010100000111" "00101101100111" "00011111000000" "01001101110011" "00100101001001" "11001110000110" "10100001111001" "00010111111000" "00000010011110" "00000111011000" "10111001001000" "00000111010011" "00010111110100" "10011111011001" "00000100110110" "00111000010001" "01000111101010" "00111100000101" "00101000111011" "11010110011001" "00111110111010" "00011100010110" "00100110110100" "11110010000001" "00110010100100" "10011010001111" "11001010010000" "11100010101101" "00000010010000" "10111101010010" "00001011111001" "10100000001111" "00111110000001" "00001111110101" "11000010111110" "11101011001001" "01011011000010" "01011111001000" "10111011001101" "01001111111000" "11101001000110" "10110100110001" "01001010001100" "11101111110101" "00001011010100" "00101101001001" "01010001000110" "01000010001100" "11001011100011" "10111001110110" "11111111010010" "00011101111011" "01000001101011" "11110101101010" "10100110101001" "00010100111001" "10100000010010" "11011001010010" "11011111110010" "11011101111000" "11010101101010" "00101000011000" "11101111011011" "11011101111101" "00101111101001" "00111110000010" "11001010010111" "11010001001101" "11101100010110" "00011011010010" "00000111011001" "10100000000001" "00001111010000" "11100100111011" "01011011101011" "01011000000010" "00001101111110" "11100110000000" "01011011101111" "01000111101010" "10110101010011" "11111010101001" "11100111111001" "11010111011000" "11000000010111" "00011010011010" "11100111011001" "11000001000010" "10110011001011" "00101001011001" "00111100010011" "01010111100000" "01000101011010" "11000001010110" "00011011000111" "00011101011110" "11010001001111" "00000101101111" "10101110110100" "10110101010010" "00111100100110" "01100111100100" "11001100011111" "11111111010101" "11001000010000" "01000010110111" "11100111001111" "00111001110100" "10100010010111" "00011011010000" "00011011011110" "00110001000001" "11000000100011" "01011011000111" "11111101111100" "10110010101001" "11111100111101" "10110100101011" "11011110101011" "10100000101110" "11001110111011" "00001111100100" "01100001010110" "11101100000111" "11100011111001" "11110001011100" "11101111110110" "10011011111111" "10110011011010" "00001100011101" "10101000010111" "11111000010110" "00011011001000" "11111100001110" "01100011001100" "11010011111000" "01001011100001" "00100011110111" "11010100000110" "01000110010000" "11111001111000" "10110000101011" "00101110011000" "11001011110111" "01001101100010" "01100011110100" "00100100001011" "00100011101011" "10011110111100" "01001000101000" "00010011000111" "00001110111000" "01010110101001" "01011011011111" "00110100010011" "11011110010010" "01010101101111" "11001000100110" "11110011000000" "11100011010000" "11110001110110" "00001111000101" "11111001110111" "11100111111111" "00100010011111" "11110110110001" "00010011100010" "00110101110100" "10100000010101" "00101111011001" "01000101110100" "10111111000111" "00111000011101" "10101001101101" "10111100010101" "01011111100011" "11101100111101" "11001010000010" "10101101011010" "01010011000010" "10100001101101" "10011111001010" "11110110011100" "01010100111000" "10101010011011" "10101111001111" "01001110001000" "10101100000100" "10011000100000" "01010000100110" "00010010001100" "10010101001011" "00100001101010" "01001111010110" "11100001000000" "10100111111111" "11001010100101" "00110000000010" "00111111101010" "10111011010010" "01000100100101" "00101111000111" "11101000101111" "00110001111111" "11010111101001" "11111100111001" "11100100011000" "01010001011100" "11001111000011" "00110110111000" "11001100100000" "01000101001000" "11100011010001" "00000100110010" "10101110001111" "11111001100001" "11000011101001" "00110101000101" "00110011111101" "10111100001010" "10110100111000" "01010111011101" "00000011111010" "10111100000101" "00110101111101" "01011010011110" "10100011100000" "01001010010101" "10101000100110" "11110110111001" "11011101111111" "00001100100100" "00010101010001" "10011111001011" "11010000000110" "11011101101010" "11000111001111" "00010010111010" "10100010101001" "11111000100010" "10110010110010" "10111110101000" }
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
set ID 368
set hasByteEnable 0
set MemName infer_layer_6_weights_V_7
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1111101011100011" "0001001010011011" "0000101100111001" "1110101100011111" "0000011011110101" "0000101110011011" "1110111110100100" "0000110100100000" "1111101000100000" "0000000010011011" "1111001011001100" "0000100101011101" "1110100000011101" "0000111100110010" "1111100101001010" "0001001100011011" "0010000001001011" "0000010100000010" "1110110010111011" "1111100000111011" "1111010111000101" "0000101011001001" "0001101101100001" "1111100011011000" "0001011100000011" "1111111100101100" "1111100101111010" "0000010100001101" "1110111110101000" "0000110100001110" "1110011010001010" "1110100101011010" "1110101001100001" "0000001011000110" "1111010100110011" "0000001000001101" "1110111010111010" "1111010100001011" "0001100100111001" "0001000111110100" "1110101011000000" "0001010110001011" "0000100011001111" "1110011100101100" "0001011001000111" "0000010001100011" "1111101100110101" "0001011101001101" "0000111000111111" "1110101100110100" "0001001000111111" "0000010110110010" "0000110111001101" "0001100100110110" "0011000100001010" "0010001011010001" "0010011100000100" "0001001110100100" "0000101111110001" "1110111100110010" "0000110110001001" "1110100001000001" "1111100110101011" "1111001101000010" "1111101000011111" "0000100101101111" "0000010010001001" "1111010000100000" "0000010010010011" "1111101010000000" "0001011100011001" "0000111111010000" "0001011101110010" "1111001000101110" "1111000110001111" "1111011110000100" "0010011000101101" "0001010011000000" "0000000110110100" "0010010000100101" "0000010100100110" "0001101010101101" "1111011100101001" "0000001000110111" "1110111110010000" "1111001110110001" "0010100001010001" "0100101100010111" "0010110000000111" "0000100000110101" "0010111100110110" "0001010011011101" "0000011100000010" "1111001000111001" "0000011001111100" "1110011100001111" "1111101000101000" "1111001010000110" "1110101001110101" "1110100010010101" "1111100111001111" "1110011011010111" "1111100011101101" "1110110010111011" "0000100111011110" "0000110000001010" "0001000111001111" "0000000001110010" "1111010000111110" "0000010111010000" "0000110101011010" "0000100101011010" "0010000101111100" "0001111101111110" "0001000111100010" "0000011011111011" "1110011001010000" "0001000000110110" "0001100111110001" "1101111010101111" "1111101100011010" "0000000010110011" "0000010110011001" "0000101011111101" "1111010000110111" "1111100111001111" "0000010110000010" "1111101110000101" "1110111010111110" "0000011010101010" "1111101100000001" "0000101110011001" "1111111011000011" "0000011001000001" "0001010001011001" "1111101100011111" "0000110101111110" "1111011110010101" "1110100001101000" "1110100010010101" "0000101001001101" "1110101000011000" "0000101100010111" "0001111111100000" "0000001000111000" "1111000111110100" "0000000111100101" "0001100000100111" "1111101010010111" "1111000001110011" "0010101011000100" "0001100010000000" "0010111101010101" "0000101010100110" "0001111001110111" "1111100011100110" "0000100000101001" "0001000010010001" "1111010101100101" "1111010110000100" "0000010001100000" "0001000000111101" "0010000100100110" "0001011101100110" "0000110001111000" "1111010111001101" "1110101101111110" "1110011100010011" "0001001100001001" "1111100101010010" "1110110011001111" "1110110011100010" "0100001010000110" "0001111101111100" "1110100110100000" "0000000011001101" "1111010001111110" "0000011101001111" "1111010110100011" "0001010110000100" "1110101001101100" "0000001100110111" "0000010111011110" "0010101001001111" "1110101101011001" "1111000111101000" "0010111010100000" "0000000001000011" "0001011110100011" "1111100011111111" "1111101000011101" "0000000111001000" "0001101010100101" "1111101100110000" "1111110110111000" "0000101110100000" "0001011101000101" "0001010110000111" "0000110000000010" "1111000001010100" "0001000111110010" "0001011111011100" "0001000100110001" "1111010001011001" "0001101000001011" "0000100011011000" "1111000010011100" "0001101111010100" "1111011110000000" "0001001000100001" "0000100101000000" "0001011110001001" "1110011100110111" "0001011100100011" "0010000011111111" "0000110001000000" "1111111110101111" "0001011010100111" "0010010001001000" "1111001000111100" "1111000101000101" "0000010001110001" "1111011010001111" "1111110111001111" "1111001010011011" "0000011000111101" "0010011110101000" "1111001000000010" "1111001100001010" "1110111011111010" "0010001001001101" "1110110110100100" "0000011100101110" "0000101010101100" "0001011110110001" "0000101001110011" "0011011101000111" "0000101101101001" "1110011111101100" "0001010000100110" "0000111010001110" "1110111110000110" "1111111011101100" "1110011110001001" "1111001100110110" "1111101001011100" "0001101001000010" "0011011000111010" "0000100100111101" "1111100100110001" "0010110101000111" "0000001011101101" "1111101001110010" "0000111110101010" "0001011001011110" "0000000101011111" "0000000001001010" "0000010000100100" "0010101011110110" "0000101001101011" "0000110100111001" "0001000001100010" "0001001001111001" "1111101110100000" "0000101100011111" "0001001101011101" "1111110001001111" "0000101101010001" "0010000010101000" "0000000100000001" "0000001110111101" "1111111101011100" "0001000101100110" "0001110000001011" "0000011101111110" "1110111010111010" "0001100110001100" "1111101010000111" "0001100111110000" "0001001101001111" "0000011111010111" "0001011011111101" "0010000100010011" "0000110111010110" "1111111101111101" "1111001010111010" "0001100010010010" "0001010000101010" }
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
set ID 369
set hasByteEnable 0
set MemName infer_layer_6_weights_V_8
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11111111110110" "00000110110111" "10111100111000" "01001010010110" "11001111110101" "11010110110011" "00101110100100" "11011001010001" "00010001000010" "00010001000110" "10011111110111" "00111000100001" "11010110101000" "00100100011100" "11001100111000" "11101000100111" "11001011001000" "00010001110110" "11101110101111" "01100110110011" "11010110011101" "00110011101000" "00011010100100" "10101000010000" "11001101101101" "11110011010110" "00110001111001" "00110101101000" "10100010001000" "00111111101101" "00011010110001" "10101111001011" "01010001111111" "10100000001101" "00100100001001" "10011100101101" "11001000011100" "01011010011101" "00001100111101" "10110000111001" "10101000111101" "00101100000111" "11101110000001" "00100110010101" "00101111001100" "01000010000110" "11000110000100" "01010111000000" "00111100011101" "11011101010001" "00110011010011" "11010011001010" "10100000100110" "00110110110110" "11000000110011" "00110011000101" "10010010110111" "01000110001000" "01010100011000" "00101100100100" "01010011001101" "00100000010100" "11001100111001" "11011000001010" "11100011111011" "11011011110111" "11101000110001" "11001101111001" "11101111010110" "10110011001010" "10110110011011" "00000001101101" "11011110111101" "00010011001101" "01001111111001" "01100001101001" "11101100011111" "10100111001110" "11100111110001" "11110100110100" "10110111100000" "11111100011101" "00101000110001" "11110100011001" "10101000001111" "00100001110001" "10110100110110" "11100100100011" "11001000000110" "01011010010010" "11111001000110" "11111101000111" "10101000011111" "11101001011010" "01100000100111" "00011000110100" "10100110101001" "00001101101110" "11100010010110" "11001110110010" "10110111001000" "11110001110101" "10110100000100" "10100111101110" "11000011100010" "00001111001010" "11001011110000" "10100000011101" "10111000110011" "01000000110101" "01011111110010" "10101001001100" "10110011001000" "10101110000111" "10011000110011" "11011111111110" "01000010101001" "11111101100101" "01000111101110" "11011101111001" "00000101101000" "01001111000011" "00110100000011" "10101111110011" "01001110101100" "11101011101011" "00001101011010" "11111011001001" "01011000010111" "01001001100011" "10100101000100" "01010101100011" "11010111110101" "11110100011010" "10010101101011" "00100010001011" "00000011110000" "00000011001110" "00111110100111" "11111010000000" "00000110010100" "00010001110100" "00010110011110" "11001111001111" "10101000010001" "10111010000110" "01011100101001" "10100101110011" "00101111001001" "11001000011001" "11100000110011" "00011110000111" "01001010001010" "10011110001010" "11010000001111" "11000001011101" "01001101010000" "00110001101011" "00000000101000" "00100000010001" "10010101010111" "10100111001010" "11001100011100" "00000100010101" "00001110011110" "00101100100110" "10011100100011" "10110101110100" "10100000110000" "10101110011010" "10111100111011" "11110010010110" "10110110001001" "11100001011011" "11001000000000" "11100011001011" "11011100000001" "00000110010000" "10100010000101" "10111011011000" "00011111100101" "11011101110111" "11010000111000" "00000100000000" "01000101100001" "10011010111010" "00001000001101" "11000011010001" "10011110111001" "11011010111011" "11110110011000" "11011001101110" "10010110101010" "11001111001011" "00001001100000" "11011000100100" "00101101000010" "11101000110101" "11001001010011" "10100101000111" "00100101111111" "10101000001110" "10100001110011" "11010110000001" "00011010101010" "01011000000010" "01000001000000" "10010110111011" "11111000010011" "01001011110000" "01011110010001" "01100111100101" "11001010000110" "00101110000100" "01000010100010" "10011001000111" "01001011010100" "01100101011001" "11001100101101" "11000111000001" "01011001111101" "10011101011100" "01000000000110" "00010000010110" "01001110100000" "00001000001011" "00101101111111" "10100110111011" "01010110011000" "01011011101100" "11001101000101" "10111111001000" "11100110110000" "10011001011001" "01011110110010" "00110110101000" "11010110100100" "00101001010111" "11111010111010" "00011100110010" "01000111001001" "00101010011010" "00110000000001" "01000010000001" "11100011010111" "11011111101111" "11001111001010" "00100111011111" "00001111010101" "11001000001110" "10110011111000" "01100100000110" "11010111000001" "10101110001111" "01010100000101" "11011011110001" "11101100100110" "10101110001111" "01100000101100" "11100000001101" "01010101110111" "11110110101001" "11001100001011" "01000100100101" "11001100110011" "10100001111111" "11010011100101" "11101010110110" "01011100000001" "11010001111001" "00101001001110" "00000110111000" "01001001000100" "11010110100110" "11100111110100" "11000010101101" "00001000010101" "01011010010000" "10011110111010" "11100000111011" "00010011011110" "01010001000011" "10100111101000" "11100110011001" "10111000010010" "11111101010111" "00100001010011" "11001010010000" }
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
set ID 370
set hasByteEnable 0
set MemName infer_layer_6_weights_V_9
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0001001000101111" "1110100011110100" "1110010100100010" "0001000001001110" "1111111001001011" "0000110011110100" "1101011100110010" "0001011000010110" "1111111110001000" "0001100110010000" "1110111100000100" "1111101111100001" "1010111111010000" "1011110011000100" "0000111010001001" "0001101000000111" "1111001000111010" "0000110111010101" "0000111001111001" "0001100011010111" "0000001111000100" "0000110011001110" "1101100010001110" "1010010111111001" "1100001011100011" "0000010011000100" "1100010010010100" "1110110010000011" "0001000101010100" "1111111111110101" "1110011111111000" "1110110001000110" "0001110000001110" "1110110001111100" "1011001101110011" "0001100110010101" "0000000101010010" "0001000001011011" "1110001111111001" "1111010100011111" "0001001000001010" "1111110100110010" "1111110110011000" "0000011010111001" "1100101010010010" "1100111100011000" "0000110000100100" "1111100001100110" "0000111111110011" "1110111001001010" "1110100101111010" "0000010001000110" "1110100001001000" "1110100101011100" "1011101011111110" "1100000110001110" "1111011011010111" "0000101101110111" "1100011111101010" "0000100101010110" "1110110011000110" "1111001111111010" "1111010101101011" "1111100101111101" "0010100010101000" "0000100110110000" "1110010000001001" "1111000000011010" "1111001001111010" "1110011010110110" "0001001100111010" "0000110010000010" "1110101010100101" "0001011100011111" "1111011010010001" "1111011100001011" "1100011001001100" "1111110001011101" "1111011010101000" "0001110001000011" "0001111110001010" "0000111001010000" "1111101101010001" "0001000100101011" "1111101110010000" "0000000010000010" "1111101010110010" "1011111111000011" "0000010001011100" "1111101010011110" "1110001110110110" "1110101100010110" "1111011001011011" "0001100110001111" "0001001111011101" "0000011000100000" "0001111100111010" "1111100001110111" "1111001000111110" "0000001001110000" "0001100011100001" "0001100001000101" "1110001011001010" "1111010001000110" "1110011010000110" "0000101101000001" "0000100101110111" "1111010011111011" "1100101011011101" "1101011011111111" "1111111111010011" "1110101100110111" "0010000110011111" "1110010100001000" "1110100010100111" "0001100000101101" "1111111000110111" "0001000001000111" "1101100000001000" "1100011111111000" "1011011110001111" "1111111010100001" "1011100000011000" "1110111110001101" "1110110100011110" "0000110000100000" "1110111100101110" "0001000010100100" "0001101100010000" "1110011110011110" "1111101010111010" "0001010111110101" "1111111011010001" "0000110111001000" "1110100111001011" "1111111100101011" "1110101111001111" "0000110010101000" "1111100110111111" "1110101101100010" "1111010101000111" "1110100010000001" "0000111001010110" "0001000000111011" "0001010001000010" "0000100110101110" "0000110010010111" "0000110011000100" "1110111010001011" "1111100111000001" "0000000100010111" "1100100011101010" "1110001111001010" "0001011111101010" "1101010001111100" "1111000111101001" "0001011111100011" "1110011101101010" "0000000010101010" "1111010100001100" "0001010001110010" "1110110110001010" "1111011110111110" "1111101010010011" "0000101110001110" "1111001101100010" "0001111001101000" "1111010101100110" "0000111101011101" "0000001010011011" "1111010010100011" "1111001001001111" "1110110001010000" "0000000001101010" "0001010001110101" "0001110101010111" "0000000010100010" "0001110111101011" "1110100010110011" "0000110111111001" "1110011110000111" "0000111111000101" "0011001111000110" "0000100101011100" "0000000111101011" "0000001000110011" "0010000101011110" "0000111111111101" "1110011110000101" "0001011001001010" "0001001001101000" "1111100110011001" "0001011000001110" "0001100101111001" "1110000101110100" "1111111001011101" "1111111001011110" "0000001011011000" "1111100000101111" "1110100011110111" "0000011011010100" "0000101011011101" "1110101000001101" "1111101101011010" "1101111010110101" "0000001011001001" "1110101010011101" "0010001101110001" "0000010110011100" "0011000101001000" "1111001101000101" "0000000100110111" "0000110101010100" "0000011111110101" "0000111101010000" "1110000110000101" "0001110101011011" "0000001111010000" "0000010011000000" "1110011011000100" "1110111100000001" "0000111111011110" "0000101000000110" "1110011001101010" "0010011011110101" "1110101111010000" "1101111010011000" "0000000001010111" "1110110000111110" "1111110111001011" "0001100001001011" "1111100001001011" "0001000000001001" "1111010110111111" "0001001101011101" "1111110000000011" "1101110010111011" "1110110001010001" "0000010000100000" "0000111000101110" "0010111000101001" "0010101010001010" "0000000100101101" "1111011101001010" "1110111001111100" "1111100000000110" "0000111011101101" "0001010001101001" "0011101101000000" "0001000000110111" "0010110110010100" "1111010010110100" "1111011011101100" "1110111111111111" "1111100111011011" "1111111001100000" "1111001010100011" "0000010101000000" "1111101110101011" "1110101000111001" "0000111101000001" "1111011110111100" "1111000010000011" "1110011111111111" "1110111010100110" "1110100110111011" "0000100110000100" "1110110011101111" "0011010111010101" "0000100101010110" "0000100110010111" "0001101101000010" "1111010111100111" "1111001111001011" "0001011010000101" "0001100001010000" "0001000110000100" "0000010010001000" "1110101000011110" "0101101001010101" "0000100110111000" "1111100011010010" "0101010101011101" "1111011100011101" "0001011001110001" "0001000100001011" "0001000101111101" "0000111011001010" }
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
set ID 371
set hasByteEnable 0
set MemName infer_layer_6_weights_V_10
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11110100101100" "11010001101100" "10111010011000" "01000101001101" "11101100001110" "01001001101010" "00100001000100" "11011110001100" "01001100000101" "11001000001000" "01011111100100" "00101111100010" "10111110111011" "11101010010101" "10100110011000" "00100111111010" "10010100000011" "00011101100101" "11001100110000" "00110000001111" "11001101110110" "00110111000010" "00101100110110" "00100111101010" "00010000100000" "10011100011001" "11110101111101" "01001011111000" "11010001111101" "00110010010110" "00111111111101" "10100111000101" "10111001111101" "00001100010001" "11110100010111" "01000100111000" "10011110000001" "00111110001001" "01000000111110" "01011110010010" "10111001000110" "11010000011000" "11110001001100" "10011100001111" "10101000001000" "11011101100011" "01001101001010" "11100010010111" "10011001001100" "11011101011011" "01011100100101" "00001001111111" "10101111111110" "10110110000001" "11101010101111" "11101001111010" "11001100010101" "11111111111011" "01001101100010" "11101010010101" "00110100100101" "11101110010110" "00100111000001" "01010000100000" "11101101000111" "10110001110111" "00000101011100" "11000000011110" "00000101000111" "00011011001011" "11101010010011" "11111001110010" "01010101100000" "11011101100010" "11000000000000" "11101000010000" "10011011010111" "11011101001111" "11011001100101" "00000010001001" "11010011011001" "00000101111001" "11101110110000" "10100100000110" "11010110000000" "01010001100101" "00001010100010" "00100011010001" "11010100001101" "00000011110000" "11100110111101" "01010011000001" "01010011011001" "11011001100101" "10110011001110" "01010010101010" "00000010000001" "11101000010110" "11001111011010" "01001000011000" "01100111101100" "10100000110000" "11011111011101" "10110000010101" "01001101010101" "11101110101011" "11001010000110" "10011010000001" "01000110010000" "01011110011101" "10101111011100" "01001001100111" "10101000111001" "00101101110110" "11011110111010" "00000010010111" "11011110011100" "11000001000111" "00011000111000" "00101000110010" "00111111010010" "10101110011000" "00101000000100" "00101100001000" "10110100001001" "00111101100111" "00101110001010" "10011101100011" "10110110101100" "01001111111011" "10010101010110" "01100000010101" "10111010010010" "01010111111110" "00011100001011" "11000101010111" "00111010101010" "11001001110010" "11000000101111" "01101000010011" "10010111101111" "00111101110110" "11011011001111" "01001100110111" "01010011000100" "11001101111111" "11111010100100" "01100100111111" "11001111010111" "00111001110011" "11111010010011" "10011011101001" "00101010100011" "01011001011111" "00011001110110" "01000110100001" "10111110111011" "10100100101011" "11001100111011" "00111111001101" "10100101100101" "11000100100110" "10111001111011" "01011001000110" "11100111111100" "11111111111010" "11010001010000" "00100011110001" "10110111010111" "11010100010100" "00100111000110" "00111001111001" "01011100110111" "01010101101100" "00000110101001" "01010110111111" "01011010110011" "01000100110011" "11010011000000" "11110011000000" "11001110111101" "00111001111111" "11000000101010" "10111100111010" "11111111010111" "10110001111010" "11001100100011" "11110100000110" "11001010001111" "00000001000111" "11011100011110" "00100000111111" "10101111000011" "00010101101101" "00000101100110" "10110111000001" "11101111100101" "00010001110000" "11100110100001" "00100001000010" "01011001010011" "10100100111011" "11010110001100" "00001001011001" "11000110011010" "00110011110000" "00010100100011" "00110100101001" "11010010010001" "11101111010011" "01010001011110" "01010110111001" "11101111011011" "11001010101010" "11100000100011" "01010111010000" "11111010101100" "11000010011011" "11001010111010" "11101111001100" "11011110110101" "10110000100100" "00010100000010" "00001111110000" "00100101100001" "01000111101001" "11111111010010" "01000000100110" "11011101011101" "11010000100011" "10101011111011" "11110111000011" "01101010011011" "00110110010100" "11011111100111" "10110010000110" "10101100101000" "11000111000010" "00001000010011" "11000011110011" "01010000011101" "10011111011000" "11010110111101" "01000010101010" "10010101111010" "00001011101101" "01100100101111" "10111001000100" "11111000000011" "10011111101010" "11111011001100" "10010101101101" "10111101111111" "11000011000101" "11111100001011" "11101100001010" "11011110000010" "01001011111111" "01000010111110" "11011110011000" "11110111111100" "11100110000000" "10011001000000" "01010111000101" "00001000111011" "10100011000011" "00100011101100" "00100100110110" "01001110100100" "11001010011111" "00001011101100" "00111011111110" "11010100111000" "00011001000111" "10100010101001" "00110111001101" "11000000101000" "10110000101110" "11111101101100" "00001110010000" "00011100010101" "11010110001101" "11111000011010" "11110000100101" "00110110010101" "00110111101111" "00010010011110" "00110000110001" }
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
set ID 372
set hasByteEnable 0
set MemName infer_layer_6_weights_V_11
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10011010001110" "01001010111001" "10010111100110" "10101010110000" "00001001100100" "11011010001110" "00010000101000" "00111101001010" "10011011110111" "01010010000110" "11111010010011" "11000001101011" "10110100111110" "00011100010110" "00100100100111" "10011110001000" "10110011011001" "01010010111100" "01100100001000" "01011011111000" "01010101000110" "00000110001111" "00001111100101" "11110111001001" "00000110111110" "10011111001001" "10101011101011" "01001110000111" "00101110101000" "01001000001011" "11111110101101" "00001111010110" "11001100010001" "01011011010111" "10111011111100" "01000111111101" "00000011100100" "01000010100111" "11000100110011" "00001001101101" "00100011000010" "11011000111111" "01100111110100" "00100010101111" "00001101011011" "00101011111110" "11100001011000" "00101001010010" "10111110111111" "01001111000100" "11110000010000" "10111101010011" "00100111100011" "10111001001101" "00000101011000" "00010011000001" "11011001010101" "00101000010111" "10110101100100" "00011110100001" "00111100111001" "11010011000100" "11101101010011" "11000100101110" "00111010111000" "00001000010110" "11011110011111" "10101000111100" "11101110000000" "01001001010110" "00101011010010" "00001000110100" "11110100111110" "11011111100000" "00101110000101" "11101101010100" "00110111110100" "00101101000010" "10101111111101" "10011000010001" "11000111110101" "10011111000000" "10111101100101" "11101011011111" "00011001110111" "10100111010111" "11110101111110" "01010000100101" "10101110000000" "11100110001111" "00101101010011" "00001001010101" "00000100110011" "01011101000011" "10101000011110" "01001101001011" "11010000010001" "10110010011010" "00001000100001" "01011101111100" "11110111001011" "00010110010011" "11100110000111" "11100000011101" "01010011110010" "00011111011010" "01000110011111" "00110111011001" "00100101001000" "10010011101001" "11100111101100" "01000101000100" "11111010100101" "11011000010111" "01001011010000" "11100000011111" "00001110101001" "11110101001100" "10100010111000" "10110111110110" "01000011000001" "01101000011100" "10011110001000" "01001111111011" "00111110010001" "11001100111001" "11100110000111" "11010001011000" "00111110001011" "10110101110111" "01011001110100" "00010111100000" "01100100001111" "10011101110010" "00000001001010" "10100011110111" "01000111110011" "11111101010011" "01011001000011" "00011010000110" "01000001100110" "01001010111101" "00011110111010" "00110101110000" "01000100000111" "10110111001111" "10100001011011" "10111011001011" "11111001110001" "11111011010010" "01001011000000" "00011110111101" "11011000100001" "01001100001000" "00111010100000" "01011011000101" "00100011001000" "11011001101001" "10110011000011" "10111011111110" "01000001010010" "01000000101110" "11010011011001" "00011000101100" "00111111101011" "11100111111011" "00011001111001" "00000111111000" "00010100100010" "11101000110001" "11101000010110" "10100101001101" "11111101001111" "11000101010011" "00101101110001" "10101101010000" "00011001001110" "00011100100110" "11010100001101" "10100100010100" "01001010001100" "00011111010011" "01010100100111" "00001000110110" "11101001011010" "00000000101100" "01001100110100" "11110101111000" "01001001111110" "11010000101010" "00011000010001" "11011000011110" "00001011111101" "11111011111100" "10010110100101" "01001001111001" "11110000011011" "11111010000110" "11101011011010" "11100111111000" "11010001101011" "01000011110111" "01011101011110" "11111110011100" "10111100100010" "00101110011001" "00101010000110" "10010100010110" "11010100101101" "10111111111001" "11011110010011" "11100101100111" "00010111001101" "11100001100000" "10101101001111" "11011100010011" "00000111101010" "00001101110010" "11011001010111" "10110111000000" "00011001100111" "11111100100000" "10011011011000" "01001000110110" "01000100110011" "10100000111110" "11111111000001" "10111011110010" "10111110110100" "00011101001011" "11100000110000" "10101010011000" "11000110100010" "10010101110010" "00110110001100" "00010001100011" "10110111010110" "11110100100110" "00101111110010" "01001100110000" "11010111011010" "11110011111000" "00101000001110" "00100110011010" "10101110111110" "11110010011100" "11101100110101" "11110011111011" "10011011101101" "00010010100011" "11110101111111" "10110110110101" "11011010110100" "00111010010011" "00110100111101" "01001110101101" "11010111100011" "01011001000000" "11001001100111" "10100100010111" "10111011110000" "11101001110010" "10010100101011" "10100110011110" "11000100011000" "10101000110111" "11100010010101" "11100110101111" "00101110000000" "00001110111000" "11010111110000" "11001101011110" "00101101101000" "11001011111010" "11000100110100" "11010001100100" "11111100110010" "11100101000101" "00100010111010" "11000101110111" "00010101101010" "00101100001010" "00000010011001" "00111100000010" "00011000010011" "00000110010101" "11101110111111" "11010000000000" }
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
set ID 373
set hasByteEnable 0
set MemName infer_layer_6_weights_V_12
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1110101010011010" "1111011010101000" "0000001011010110" "0000000111001011" "0000010101101100" "0000111001011111" "0000111000001101" "1110110101101001" "0001010001001110" "0001011001100001" "0001011010010011" "1110101011000010" "0000101001010111" "0001101010001110" "1111100010110010" "1111000001000101" "0000100010001001" "0000010110010010" "0001000110111111" "0001001001001011" "0000011000011010" "0000101001000000" "1111000101010111" "1110001000100000" "0001110001100101" "1111011000000101" "0000111110010110" "0000111111100000" "0000001101110000" "0000101011001100" "1111110001000100" "1111010101001100" "1111101100001000" "0000101110011100" "1110001011100011" "1110110011101110" "1110110011000101" "0001000101111100" "0001110000000011" "0001000011011001" "1110111011001101" "1111000010001010" "1111101000011101" "1110111110101100" "1111010101110111" "0000111001111000" "0000110111100010" "1111010110010110" "0000110111001111" "0001011111110010" "0001101101010110" "0000100101011000" "1111110101101101" "0000110011011010" "0001000100100111" "0000110111000101" "0011111001000001" "0000010000001001" "1110011100101111" "0000111110100000" "1111010111110100" "0001010001100101" "0001010110110110" "1110101000000101" "0001010101111101" "1111000110010101" "1101101011010001" "1111010000000011" "0001000100000101" "1111100110100111" "0000010010100110" "0001000011011111" "0001011000011010" "0000110011000010" "1110111001010001" "0000101111111101" "1111010111100111" "1111101000101111" "1111011110010110" "0000111111110010" "1111011100000100" "0001010100111000" "0001100000100101" "0000111011010101" "0001010100010111" "0000001011110110" "0000001001000111" "0010011000000100" "0101000001001101" "0001010100000110" "0010110001100111" "0001001000000011" "1110110100110010" "0001010100100001" "1110110111101011" "1111010001101111" "1111101100000111" "1111011101000000" "0010010101010010" "0001100001010011" "0001010011010011" "0001011010100101" "0001100010110111" "0000011101010001" "1111010001111101" "0000010000100010" "0000001111000101" "0000000010001101" "0001111011011001" "0001010111110001" "0001000001010010" "0000001010110110" "0000110000010011" "1111000010110100" "1111101011101111" "0000111111101111" "1111101101000010" "1111000100010111" "0001001110100100" "1110100011001100" "0010101110011001" "0000001100010101" "0001011011111101" "1111000010001011" "1111001010110101" "0001000000100100" "0000110000101010" "1111100000110000" "1111111000011100" "1110110010010111" "0001111111110101" "0000110110101111" "1111111100101100" "0001001000010100" "0001111011100101" "0001011000010010" "0000100001101100" "1111101111001011" "0001010001100100" "0001000100101010" "0001000101010011" "0000101001010001" "1111100110001011" "0000100111000010" "1111100101010110" "1101110111111001" "1111110111111000" "0001000011001001" "1110100000101100" "1111111111100101" "0000011110101001" "0010110110110010" "0100111111001101" "0000011111110110" "0100110110100011" "1110110111100100" "1110011000101011" "1111011101101011" "1111010010110001" "1111011101101111" "1101100011110101" "1110011100001011" "0100000111101110" "1110111000110110" "1110011110000000" "0000110100000001" "1111110010000111" "1111100101011100" "1110110101110010" "1111001100110101" "0001001011001000" "1111101110101010" "0010111001010011" "0000110100000101" "0000000000101111" "0001000001101110" "0000010110101011" "1101110111101101" "1110101011101101" "1110101011000101" "0000100001100100" "1111101110000010" "0000101110100110" "0001111101001001" "0011111011111101" "0001010100101010" "0100110000000001" "1111101110101010" "0001000110001101" "1111001000011000" "1111111001001010" "1111011111010111" "0000001000000000" "0000100100001110" "0000010010010011" "0000111100011100" "1111011100101111" "0000010001100110" "0001111011010101" "0000011000000101" "1110111101100110" "1111001100111100" "1111111000011011" "1110111010111001" "1101010010100110" "0000011100110101" "0000110001101101" "1111000001110001" "0000000011111111" "0000011000110000" "0000101101001001" "0001100011011011" "1110111000011111" "1110100101010111" "0011100010110001" "0000101001101101" "0110111001000111" "1111000111110001" "0010010010111000" "1110100111101111" "0000111110100101" "1110100010010111" "0000100111111111" "0000010101101111" "1111000010001110" "0001001111011000" "0000011000110000" "0000001110111010" "0000001011100110" "1110011101100111" "1111110000001010" "1111110001110010" "1111001101001001" "0000000001100111" "1110111111011011" "1110110011010110" "0001100101110010" "0000011111101111" "0000110101110111" "1111101011001010" "0000000111001110" "1111111100111101" "0001101001001101" "0000110111001010" "1111010011111100" "1110011110010000" "1110110111101001" "0100000101011010" "0100010010000001" "0001001000010100" "0011111101101110" "1111001111011100" "1110111010110011" "1110111111000010" "0000100100000010" "0001001100110011" "0000111010101101" "0001001100000001" "0001010000100011" "1111001011110001" "1111100011010011" "0001001101110010" "1111100110101011" "1110110110011111" "1111100000000011" "1110101011010001" "0000010010101011" "0000100010101001" "0010010100110100" "0001000111011010" "1111101111001101" "0000000110011011" "1111001011111010" "0000110100100100" "1111100001010000" "0000001101001101" "1111110001110001" "1111010011100000" "1111011010010011" "0000000000111111" "0000000011100000" "0001011101100000" "1110111010011101" "0001011011100101" "1111101101100110" "1110111111110001" "1111101000110110" "0000011111000011" }
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
set ID 374
set hasByteEnable 0
set MemName infer_layer_6_weights_V_13
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "110111110111101" "110110110111011" "001101000110111" "000011110101011" "110100010000001" "111110001101001" "000111100011111" "110011010001000" "111001110110010" "111101110101011" "001100010101010" "000100001101011" "111100011010110" "001001110000001" "001001100101100" "111010011100110" "111000101000000" "000111011010110" "110111001100110" "001001010010110" "111001101001111" "000010000100111" "010110010001001" "111100111000111" "011011001111001" "000001011110111" "001010001111010" "000101101110111" "111001011010100" "111010000001110" "000011001011001" "110101100011101" "111000111010110" "111111111011110" "110101010110000" "110111111001110" "000000000110000" "001011101100000" "111000111011000" "110111100011110" "000000011011010" "111110010010000" "001001010001100" "111100110111000" "100111000101010" "101110110101111" "001001111000010" "001100111111100" "000110011110001" "001110000011011" "111100000001101" "001010001101110" "110010110101011" "110101001110010" "000110110111101" "010010111001011" "001010111100111" "111111101100101" "001011011111000" "110110011000111" "001000100110001" "110111010001101" "000010100000101" "001011110010111" "001001001010111" "111101010010011" "101101101010000" "110011011110000" "110100111000001" "110110010000000" "101011110100111" "111000101000000" "110101000100111" "110101001011100" "001001110110110" "110111100011010" "101100010101100" "101110100100100" "111111010011001" "000001110000011" "111101100001000" "000010011100111" "110111001111111" "000000101100001" "000011000010111" "110011110101111" "101001010001100" "000100000001011" "010101110011100" "001011010010001" "111000011010011" "000001000111010" "111001011101011" "111110100011011" "110100010001100" "001001010010101" "001010100001011" "110101100111010" "111101010001110" "111100011001001" "000001000100100" "001011111110000" "000010101101110" "110100010010100" "001001001001010" "001011011110101" "111101010001010" "001010001000001" "001100011111011" "000111011010001" "111011110000010" "110011011111111" "000011011101001" "110100000010011" "001010010000010" "000011000101101" "111110111000001" "111000010111001" "010011000111001" "000000011011101" "000011001011101" "001010111110001" "111001000000010" "111100100011000" "111010100100010" "000011110010101" "000111100001010" "000010110101011" "111111001110011" "001010000101000" "010111101101011" "000111101111001" "111010110101011" "001001110011100" "000000001001000" "000011100011000" "111110110110010" "000100010000101" "111010011111110" "000011010000101" "111111010100000" "010110010010111" "111111110111010" "110100101101001" "110011110100110" "111110100111100" "000100100000101" "000100001110101" "110100001100011" "000000010000110" "010110011011101" "010011011111010" "000000111111110" "110011110010000" "010010111111100" "000100100000000" "000111100101111" "001000111010110" "000100001110000" "110101000010010" "110110010011011" "000001111011100" "001101010010111" "000110001100011" "001010000111011" "000110000101100" "001101000011101" "111010011101011" "110011010110000" "000001010100010" "001100010011111" "111110001111110" "000111000000111" "001111001101000" "111110010100001" "111101010101100" "000100100011101" "110001111101100" "000101110011011" "000010000100000" "001011001101111" "001011011111100" "111101011001010" "010000011110111" "000001010111000" "110110011111110" "000000001010011" "111110001000001" "111111100000110" "111010100100101" "111100100000010" "110010100001000" "001100000101111" "111011111010001" "100110111110010" "110011101011101" "110101101101011" "001001100100010" "001001101110111" "111100000111101" "001001000111011" "111011010000111" "111111111111011" "000101000100111" "101101010101010" "000011110001011" "110011101101111" "001110011100110" "111011001101111" "110111101100111" "111110011001111" "000110000011000" "111100111110001" "110111001010100" "001110011000011" "101000100100011" "001010000100001" "000011110000011" "110000101010101" "000111001001010" "110111111010001" "001100111011000" "110011001000000" "001001010001010" "000001111000100" "001100100101101" "110111110100110" "110111110000001" "111011000100000" "001001100011101" "001001111101011" "000011101001001" "000100011001100" "111100100010101" "000001110010001" "001100100011101" "000000000100100" "000011110011100" "000111011110000" "110101000110101" "001011110000100" "000011100010000" "000111100011100" "000011110001111" "110101101100111" "111011111100100" "001101001011111" "101111100110101" "000111011111110" "110001101101101" "111011100111001" "111000101000000" "111100110100011" "001011101001100" "000110011101010" "111011000101100" "001000111010101" "111101000000000" "001001111010010" "000011010000000" "111011000010100" "110011100010001" "000100011000000" "111011011010101" "110111011000111" "111000010100010" "111110111101011" "111001001010001" "000111011000000" "110111100101110" "110101011110111" "111001011011110" "110101010010110" "000101111010100" "000000000100000" "110110011011001" "110110111011011" "111110111111000" "001000000010101" "001010101011100" "000111111100010" "001000010101010" "001011100001100" "111001110011001" "000000000010111" "111011001111000" "001100010011110" "111100110000000" }
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
set ID 375
set hasByteEnable 0
set MemName infer_layer_6_weights_V_14
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00100101100011" "00110111011111" "00111011110000" "00011011110110" "01001000111110" "11010011000010" "10010010011100" "00111100010011" "00111000010101" "11011011111101" "01001111111101" "01010010001000" "00100100110010" "00000000111001" "11011110110100" "00011100111100" "01010100010011" "01001011100110" "10111101001000" "10110101000010" "00011010110100" "01001111101011" "01011101110101" "11111001101110" "10011011010000" "11000001000001" "00101000111010" "01100111110001" "11011100010101" "10111011111110" "11110011010001" "00101000010010" "10010110001000" "11011000001011" "11011011011111" "00111001001101" "11010011101000" "11000110011000" "10011000111100" "11111101111111" "11100100111001" "10100000011100" "11010110110111" "10110001100110" "00010001100000" "00110101110111" "01000111111111" "10100010111100" "00000011001111" "11100100111100" "10100110000110" "00100011010110" "00100100111000" "00101010101000" "01001011001111" "10011011001110" "01001011010111" "11011101010100" "10110011001011" "10110110011101" "00101010110010" "00101110000101" "11000011111111" "10100010011000" "11101111001010" "11100100100100" "10101101001101" "00001010011011" "00000111100111" "11111011101111" "10001110000101" "01010100010011" "10110100110101" "00010000100010" "11111101110101" "01010000001100" "00011001110001" "01100110011101" "00001100101001" "00110110000100" "11011011100000" "01001010110111" "11101011000011" "00010110111011" "01100011111010" "11001101100100" "00011010000110" "11111100011110" "11101000000101" "00110010100101" "00000101001100" "11010001111000" "00001001010001" "11110100100110" "01010100000100" "11110010100111" "11011000101110" "00111111100101" "10110100101101" "00011011101111" "01001111011111" "01001001110101" "10101110101101" "00101010001001" "00100011001000" "01010101001001" "01010010101100" "01010110000011" "00000111011000" "11110010111000" "11111100001111" "10100110111101" "11011000001001" "11110001110010" "01010001100110" "01000101110101" "11100010110101" "11000011110110" "10110100111101" "10111011011010" "11101111111010" "01001100100101" "11000111011111" "01001111000001" "01100000100000" "01000101010111" "00011100100001" "01011001101010" "00011100110001" "11000010001011" "10010001101100" "10100000000101" "00100000011101" "01001100011110" "11101010000000" "00010000100101" "10101101000001" "10010111101010" "11110101011101" "00100111111000" "11100111001111" "11011000010111" "01001101001000" "11101100111111" "01011000001011" "11011010000011" "11010000101010" "00010100000001" "11110000000010" "00010001101100" "11110110100110" "01010101000100" "00001110101000" "11000101101100" "00100010000111" "01010100110001" "00001000000111" "11100010011000" "10100000110010" "01010001111011" "00000000000111" "00111001010000" "11011011100011" "11001111000101" "01010001011011" "00110101111111" "01001110001111" "01011000111001" "11101101100000" "00111110101101" "10111001010001" "00110001010111" "01110101110111" "11101100111101" "10011110001000" "10101011010111" "10001111000100" "11010010111010" "01011111010101" "11010100010000" "01011011011111" "01011101101101" "00111111111001" "11110000101001" "00000110000001" "00100101000101" "10110001100110" "00111110001100" "10111001110100" "00010011001010" "11010000010101" "10111001011111" "01001100100111" "00111010010011" "00101001111101" "01000000001111" "10101100100000" "11100110000101" "11100110001100" "00000000000001" "00011011111000" "00010011001100" "11110011100101" "00000111010110" "11100110101011" "01001010011011" "10111010001101" "00101011000010" "10011111010110" "00010000101100" "11010101010010" "00000001111000" "11110011111001" "10111010101110" "11000101010110" "11100011101101" "00010010111100" "00101101000110" "00101110111110" "00111010101111" "11110000010000" "11000101001111" "00110100011100" "11110010111110" "01011101111010" "11011110110100" "11000110011001" "10111111010100" "00101000100001" "11111100010101" "01000011110110" "00110111001110" "11111000111000" "01001000101110" "11110001000110" "00010000000111" "00010100001111" "10011000101000" "11011001011010" "00001011000001" "11011001000001" "11010101001001" "11001110011001" "11110101110101" "01000101101010" "10101010001001" "11100110001001" "11001001111100" "10100000101110" "10110000110001" "11011111111001" "10101011001111" "00000001111111" "00001111000000" "01100111101111" "10111001110011" "00011011011000" "11011011100011" "01010001001111" "10110110011011" "11000011110100" "01000100010110" "10011010100010" "11101110001010" "10110100010010" "01000001111100" "11110010111111" "00100101100001" "11110000111100" "10011110001011" "11011001110110" "00010010011110" "10010001110001" "10110000100111" "10100100000000" "01000110101101" "11001010100111" "11101101010110" "00111100010101" "11001100101010" "00101111100001" "10111100010101" "11001001000100" "01001011101100" "01100010001001" "01000010001110" "11100001100011" "11110100000110" }
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
set ID 376
set hasByteEnable 0
set MemName infer_layer_6_weights_V_15
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0000011001011100" "0001010101100000" "0000101101010001" "0000010110110101" "0000100101011101" "1110101100001110" "0000110011100101" "0000000010001100" "0000001110000101" "1110101000111111" "0001011110000111" "0001011011101001" "1110010111001111" "0000011100011101" "1111010111010000" "1111100010111100" "0000010000010111" "1111111110111110" "1111011000111010" "1111111100101000" "1111101111111101" "0001001110010001" "1110100110110001" "1101111011011001" "1110111000101010" "1110110100111010" "1101011111100001" "1111010100010100" "0000010000001110" "1111010100011100" "0000010101111000" "1111000101111100" "0001001010110001" "1110101100101110" "1011101110111110" "1110111101100101" "0001100010100111" "1110110110010000" "1110110111010001" "0000111100110101" "0000010111111010" "0001000001110010" "0000000110000111" "1111001100111011" "1101001010001000" "1101001011101110" "0000011000001000" "1110111011010110" "0000001111110110" "0001001101001001" "1111100100010111" "1111111110000000" "1111011110110101" "1111100100011100" "1110100110110000" "1101011001111101" "0010111011110001" "1110100001100110" "1111111011001011" "0000111011000010" "1111110011100100" "0001011110010110" "0000000011100110" "0000111011000010" "1111000100011011" "1110011001010100" "1101100111101010" "0000101001101011" "1110100101000110" "1111000101000110" "1101111010010010" "1111110100101100" "1110011010111011" "0001010000001111" "1110011110110000" "0000011010000001" "1101110000100011" "1110010010011101" "1111000101101111" "1111100110100101" "1111011011010110" "0000101011010010" "1111100000010011" "1110111001101101" "0000000011000101" "0000001000101111" "1101101000110011" "0000001101001001" "0010101111001110" "1111101011011000" "0001011000110100" "0000111110001001" "0000111010101001" "1111111011000101" "0001000011001101" "0000101000000100" "0000011111110111" "1111000010000101" "1111110110011000" "0000011011110110" "1111010110100100" "1111010100001100" "0000011010011000" "0000101110001100" "1111100011010100" "0000101101100010" "1110011111001001" "0001011001000100" "1101010000110011" "1111011000111111" "0000110100000011" "0000011010000001" "0000011001011011" "0000100111100001" "1110110110111110" "1111010101010000" "0000100101001110" "1111001011000000" "0011001001101111" "1100111000001110" "0010100011100001" "0000101101111011" "1110010011000100" "1111100001101110" "1110101011110101" "1111100110000001" "1110101111011110" "1110110010010010" "0000110111100011" "1111110110011110" "1111110111111001" "0000100111000110" "0000111001010100" "0000011101001110" "0010101101111101" "0001001011001000" "0000111110110100" "0000100111001100" "0001100101100000" "0001011101110101" "1110110011101010" "1110101010101110" "1111110010000101" "0000010001011011" "0001000000011000" "1111110100000000" "0001100000010010" "1111111010011000" "1111111111001111" "1111100111100000" "0001011000011100" "0100110010011101" "0011110100100000" "1110100011101001" "0100011101100011" "0001001101010100" "1111000011010010" "0001000100010100" "1110111000011011" "0001011000111011" "0000100101001100" "1111011101011010" "0001111101100000" "1111110010011010" "1111001100111011" "1111110111000011" "1110010111000101" "0001000101000101" "1110111111110011" "1110110010010001" "1111001111111101" "1110101110110010" "0010110001110100" "0000001110000101" "1111110000011001" "0000101111100101" "0000000101100000" "1110000101000111" "1111111001101110" "0000001110111111" "0000111010101110" "1110110100011000" "1101111010010111" "0001110111111100" "0001101101011101" "1111011000100100" "0011111101010000" "1111010101011110" "0001100010101101" "0000101001111110" "0001011001000101" "1110101010110101" "0001000000111111" "0000101010000111" "1110001100111010" "1111001111010011" "1111101101111110" "1111010111000110" "0011011100010000" "1110011011111001" "1111011101101111" "1110100111110011" "0001001101010110" "0001011110001001" "1110100011101100" "1110101110101001" "0000111111111101" "1111101011110111" "0001001111110011" "1111111101010111" "1110110110100010" "0000111100000110" "0001011000011001" "1111001011000101" "0100101111011111" "1100010100011010" "0001010011001010" "1111100011100110" "1111101111000100" "1111110110100000" "1111101100001100" "1111010011110110" "1111001100001111" "0001100001110100" "1110001100110001" "1111010001000001" "0001000101000111" "1110101001100001" "1111100111011010" "0001010100101111" "0000111011101010" "0000001101010010" "0001011110010001" "1110011100000100" "0000001100000110" "1110011100010011" "0001110010101110" "0000011110011011" "1111111110011110" "0001111000001100" "0000010110011101" "1111011101111010" "1111010111110010" "1111110100010011" "1111101101110110" "0001011100101100" "0010111100011001" "0101011110100111" "0011100011111000" "1110110100001101" "0100111010110100" "1110101110000100" "1111100011011110" "1111111101101011" "1110011010101000" "0000110010111101" "1101011000101011" "0001100011000010" "0001010101100010" "1111000110110101" "0000001110111110" "0001100000011000" "1110100001011110" "0001011010000100" "1111001010011111" "0000111011110111" "1110110101011110" "1111100001000110" "0100110001001011" "0000000001011101" "1111010010110001" "1111010000111000" "1110110010111100" "0000011101100110" "0001011101100100" "1111110001100110" "1111111111100000" "1110110101011011" "1101111001001100" "0011111011100010" "1101100000000110" "0000011101110101" "0010011101010001" "1111000000011111" "0001000101000100" "0001000011101001" "0000111100111001" "0001101000000100" }
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
set ID 377
set hasByteEnable 0
set MemName infer_layer_6_weights_V_16
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10110101101110" "11110101100011" "00101010010110" "11100000000011" "00100100111011" "01100110111101" "00001111001010" "11000000101111" "01001110010011" "01000101011110" "11001001010100" "10100011001010" "11000101000010" "00010111110001" "10100110001000" "10101001111010" "00011001010011" "11110101100111" "11110010110000" "11010101011001" "11011001101110" "01000111100100" "10111000110100" "11010011001011" "00110111101000" "10011011000111" "00010110011001" "11101010011011" "11110010011000" "11000011111001" "11010011100000" "11010101111000" "01011000001100" "11011100100100" "00111100011100" "00110111011010" "01001101011010" "10111110010110" "00110011011100" "10101011100111" "01010000101010" "01100000011001" "00100011101101" "11011101100110" "11001100101001" "10010011000110" "10011011000001" "10010010001001" "10010011011011" "00000011010000" "10110001000001" "11011011000101" "00001100111001" "10111011011011" "00111010001011" "01001010011111" "00010101110100" "00010110000101" "11100011010010" "11110011001111" "00010111100100" "10010111101100" "01000011101111" "11001101110111" "00100101110010" "11101001000010" "00001010100000" "10100000100100" "01001101111111" "01001001101101" "01010101000000" "11001010001101" "11100000110111" "01001001101010" "00111110000010" "11000110100101" "10011000111010" "00001001001100" "11101001000100" "00000111010101" "10010011011000" "01011011010100" "10100000101001" "01001111100011" "11001011100011" "11000101010000" "11011011101100" "11100000101101" "11110101111011" "11001101000010" "11100001001010" "00000001111000" "01011010010100" "00000100000011" "01011000000000" "11101110110010" "10101110000101" "11110011101010" "11111100000011" "11100010100001" "00101001100001" "00110111000010" "01000011111000" "01000111111010" "11001100101110" "10101011000001" "00000101011110" "01011100000110" "10111011000100" "10001111101111" "10111011001000" "11110101011000" "00010100000101" "11000100000101" "11000001010010" "00000110010010" "10110111011000" "11001100111101" "11100001110000" "01001000011110" "11100011000000" "01011010001101" "01010000111001" "00011111110000" "10111111110100" "01000100011010" "00100101110001" "00111000010101" "00111100011001" "00000010010101" "00011000011001" "11101010010101" "01010001000100" "11001010100100" "11000101111100" "11101010100110" "11001111111111" "00001111010000" "11110101110100" "00000010011001" "00000100001101" "11011011111111" "10110111001011" "01011111000100" "10111000011101" "11010110010101" "00011111101111" "10011101101111" "01001000101100" "11100110010000" "11011110011011" "01010011001101" "00110110011110" "11100110011011" "01000001110010" "01011010011110" "00101001110101" "10110110010111" "01011100000101" "11011100110000" "00011010111000" "11110000011010" "11011001100110" "11110000110101" "01001111110100" "00010101011001" "11000101111001" "01001101101000" "00100100001110" "01010001000110" "00101100111000" "01100001010111" "10010001011000" "10100111011000" "00100001101000" "00011001100101" "11100001010000" "11110011011011" "11101010010111" "01100000100011" "10111011000100" "01001011000100" "10110000000010" "10011111000000" "10011000111011" "00100011011111" "10011100110000" "01011010001000" "00010001110000" "00010100100110" "11011101011000" "00001011000110" "00110001101010" "00101010011001" "00111101110110" "10111001111111" "11100011000011" "00110011111101" "10100110100001" "01001011011010" "11110010000101" "11011101111000" "10110100011001" "00010100001001" "01000001010100" "10101110110101" "00010110110010" "10111110110000" "10010011000100" "00001010011101" "11011011011001" "00110111010101" "00011011110111" "11110100001001" "10101011100100" "00011110101110" "01000101100011" "00110001110100" "10100110100111" "00001101111000" "11011100000101" "10101001001000" "00110100111110" "11110001101000" "11001100000110" "01001100101000" "10111001001111" "10101110010111" "01100000000001" "11011110100010" "01010010110100" "10110001010111" "00010011100000" "11111000110000" "11001101001010" "00011010000001" "11100111110100" "00110010111110" "10101100000110" "10110101011101" "00010011000111" "00111001001010" "00101101000010" "11011001000010" "00101100000111" "01011100001001" "10101111000101" "00011110111011" "10011100000101" "01100110110110" "11000101100011" "11110010100110" "01011001111101" "00010101100101" "00010101110010" "00101001011001" "00110001111100" "01100110111101" "11111110111111" "11010101010010" "11001110011101" "10101011010111" "11110110000011" "10111110110000" "00000001000110" "00000001010100" "11100100001101" "10100100111100" "00011110001110" "00001100001001" "11100111110011" "10110000010100" "00111010010001" "00100010010011" "01001000100111" "01000001001101" "00010010011100" "11011101110111" "00101100000111" "01001100100010" "00110110001001" "01001011111000" "10111101110110" "01100011110011" "00110101100111" "00000101100000" "00000001101000" "10100010000000" }
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
set ID 378
set hasByteEnable 0
set MemName infer_layer_6_weights_V_17
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "111100101110010" "111110100000101" "111011110111111" "001000000110111" "110111111001010" "001011100000011" "111111111110111" "110101001110001" "110110111110011" "111101100000000" "001011011101000" "111011100100000" "000001010111001" "110100111111100" "000111000000110" "101111011001000" "110010000110000" "000011111101010" "111001100011110" "000100001001011" "001001101110000" "111110101101010" "111101110111001" "000010001010000" "111000110010101" "000010000011110" "111010010110111" "111010111000011" "000001000010001" "000000101101100" "111000110110101" "000000110101100" "110110110001110" "110110000010011" "000111110000110" "000000110111100" "001011100011000" "110110011011000" "000101010001110" "000101010111011" "001010100110000" "001000110010011" "111101110001111" "110011000000111" "000000001111011" "000001010100001" "000011100000110" "111101010110101" "001000011001110" "000000000110011" "111001001110101" "111101111111011" "110111001010101" "111000110010000" "000100000001001" "000010111010111" "111010000001001" "110100010101111" "110010110011100" "001100001100000" "001100001001001" "001010011010010" "110011111010110" "001000001111111" "110011001001011" "111101101011001" "111110111000101" "111111100101100" "111101001110011" "111000011111110" "111011001001010" "000110010011001" "111100101001001" "110100011010111" "000110100101110" "110011001010110" "000101111001001" "000100001110100" "000101010000111" "000100011011001" "110111001001001" "000010110010000" "111010010000110" "000001010110111" "111001110101011" "110100111010111" "001000011100111" "110001011011001" "111110011100011" "111010110111110" "110001111101010" "111110101100110" "111011110100001" "111101000001100" "000011010001011" "110111101011110" "000101000101010" "001010110000000" "000000001010110" "111111100001000" "001010100110111" "110011011010010" "000001110010100" "111101011010110" "111101011110011" "000110110001001" "110100001010000" "111100000101001" "000110100001010" "111110100010111" "000101010011100" "000111000000111" "111001000001100" "001001001110110" "111110001100011" "111110110000010" "000101000001001" "110111001010000" "000010010100010" "110110110100101" "110001010010100" "110111001011101" "110111011000011" "110011111010011" "111011111010100" "110111000000101" "111100010100111" "000111010101011" "111001101110110" "000011011010000" "111001011011100" "001001110010001" "000101010101110" "110111000010101" "110011011001100" "110111101110101" "000000000011010" "000110011101100" "111000011011011" "111100101001101" "000001010010100" "111001011011010" "111000101100011" "110010101101111" "110011100100110" "111011110111001" "110110010101000" "000100110100101" "000001011100101" "000010111101001" "111111011110010" "110011111110111" "000010110011010" "111001000100001" "000001101111011" "110100111110100" "110101011001110" "110100101100110" "000001011110100" "001010111100010" "000100100110101" "000001110000100" "000111111001101" "000010000010100" "111101001110111" "001001001010100" "001001010000010" "001010100100000" "110111010000010" "000100110100100" "111011001001100" "110101010111100" "111001111011001" "110101111101101" "111011000100110" "000010001101111" "110111001111010" "111011001111110" "111000011100101" "000000001000010" "001001000011110" "111001101101100" "110010100100110" "110010110111001" "000001010111100" "111001100000101" "110011000000010" "000100101111010" "000011001010001" "111111010100101" "001100111101100" "000001001100000" "001000010101000" "001100000011001" "110001101101100" "111011011011010" "001010011100011" "000001101100100" "000110101001111" "110111011000010" "001100100110111" "000011011100101" "001100111001110" "110110110101000" "110000110011001" "111001011011001" "111010001110101" "000000000100110" "110101111101110" "110011010100100" "111110001000010" "111100100100010" "111100100001001" "111001011110001" "111110000000111" "110001001100101" "110000110111001" "111100111101110" "001010011011010" "001010101100100" "000011010001001" "000111000011111" "000110111110110" "110110101101000" "110111101011010" "000000001111010" "110101111111100" "001011110000000" "000110011011000" "001011110110010" "000101100101100" "001010101011111" "000111001111010" "001100101001101" "000111111001000" "000010100101010" "000001010100100" "110101110111001" "001001011000110" "000000001101000" "000011111100110" "110100110110001" "001001110001111" "111110010011101" "111011100011110" "000100001111001" "000111010011111" "000010001111010" "111001111010001" "000111011001000" "111100101010010" "000010101001010" "001011101110111" "110011001100001" "110110100101110" "000111111111111" "110111011001011" "000011000100011" "000110101101111" "110111110100000" "110110100100100" "110110001000101" "110011101101100" "110011000110000" "111001011010001" "000111111101001" "000001001011110" "000101100000001" "000011001100000" "000110111110010" "110010111110111" "000001111000101" "110100001101010" "000000001111001" "000010100010010" "000000111011001" "000010010000110" "000000000001110" "110011010001011" "000110000111101" "000011100001101" "000010001001111" "110101101101110" "001000010001001" "000010111010100" "111111101110001" "110101110110010" "001000000110100" }
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
set ID 379
set hasByteEnable 0
set MemName infer_layer_6_weights_V_18
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00100111001110" "00101000101000" "00000111001001" "10111011111001" "00101000100110" "10110011011001" "11100110100100" "00100000001000" "11000101100000" "01000100101011" "00111100100110" "10011010110011" "11111011111111" "11100001100111" "10111001100011" "10101101101011" "11100010110000" "01100111000110" "01000001000100" "00001101101111" "00110100000100" "01001110010010" "10101101101101" "00010011000111" "00100000100110" "01000011000110" "11010110110110" "11011011101100" "00111111001001" "01011101010111" "00001010100011" "11010011100111" "00110100110100" "11000110100001" "01001000001111" "00001100011011" "00111100101110" "00101100011100" "11111000010011" "00111101100010" "01000011001100" "01000101100100" "01000101110010" "11101000011100" "00011111010000" "10011111000010" "10100001011011" "11001001001100" "11001011010101" "11010111010011" "00100101101011" "01010111000010" "00011110000010" "00101011110001" "00001000110000" "10111011110000" "10011000111001" "10111001001100" "01000011111110" "11101111111101" "11000011011101" "00001111110000" "11100101110000" "10110100111011" "11011010111110" "00010100101111" "10110010000000" "11100011110010" "00010111111001" "00000101111101" "00000010110100" "11100110101110" "00011110000000" "11110001110001" "00000100010010" "00100100001011" "01011011010100" "11000001110011" "11011111110001" "11010001100000" "10011001101111" "10111101110110" "01001111011101" "01001100010100" "11001011100001" "00010001000100" "00010110111010" "10101001100100" "11010010010000" "01010101011100" "10111000010010" "00101111100011" "00100101001110" "10100110000011" "11110111000010" "10111111011110" "11111111100111" "10101010101110" "01000100110110" "00100100100000" "10100001011010" "00011011001111" "10110000101101" "11000101011010" "10101101100001" "01011010010000" "10100000000101" "10110011110100" "11001111110011" "11010000010001" "11001010000010" "00000110100001" "11011000110100" "10111100100111" "01001110010010" "00000111001111" "00011101010110" "11011100111010" "10110000000011" "11001110000110" "00111111011000" "00000000010110" "01101000011101" "00000011100111" "00010011010001" "00010011110000" "00110000001001" "01001001100010" "00100111100101" "00100100111101" "00011000101101" "00000101001001" "01100100101101" "00011110000111" "00000101110111" "10100001011000" "10110111101100" "00111011100011" "00111110100111" "11110110001001" "10011010110111" "11101001100010" "11000111100010" "11111001011100" "11000110000110" "00001000000101" "00100111000110" "11100011100001" "11001110000110" "10101000000000" "10100101010101" "01100001100010" "11110101010101" "10111100100100" "00000101101100" "11101110011110" "00011010011110" "00110101000010" "01010000001001" "00011001010011" "00100101000011" "01100000011010" "11001110111001" "10110111111010" "11000011000001" "11001001100000" "00010011101011" "00001000110101" "11000000100011" "11110101101110" "00110000001000" "00110101011101" "11011100010000" "00011100000010" "11101010000100" "11010001111100" "11100011110100" "01011111011111" "10011110001000" "11101110010110" "10100000011101" "10100011001010" "10111101001001" "00101111101110" "11010110110000" "01101000010111" "01001101011100" "00011111110000" "11000111011101" "00111101001000" "11100000110101" "00000101001000" "11111000010101" "00000110101001" "10111000100010" "00110101010101" "01010010001001" "00001001111011" "00011101111100" "01000100000111" "11100111000101" "11101000000111" "11010011010010" "10101010100100" "11001010100001" "10011011111011" "11110111001000" "11000101000011" "01010000001111" "11010101101111" "10101101111111" "01100011101010" "00000001010110" "11011100011001" "11010001100100" "10111100101111" "10101111010110" "11101101101101" "01000111000010" "00101001110000" "00110100010001" "01000100011011" "10011010100100" "11101100101010" "00010000111011" "01011100000010" "11101001111110" "00001111100110" "00001010110001" "00001000110000" "11110101001110" "00100111100101" "11001001111011" "11110010110110" "01000001010110" "11101111110110" "01100001011101" "01000100010101" "01001001000011" "00010100001001" "01100010110010" "10110100001110" "01011100101110" "00000001011100" "01001101100101" "11111100011100" "11100111111011" "10111011010100" "11101100101011" "00110001000111" "10111010010101" "11011000111101" "00110010101101" "11000000010000" "10110001111011" "00010111011110" "11011100001101" "00100000101010" "00011110001110" "10110111011000" "11010001100101" "11010000010111" "00001111011000" "01100011000111" "00110011101100" "11011010101101" "01100001100111" "01100001101010" "01010010001000" "10111101001110" "11111111011111" "00101011110001" "00001111001110" "11000001110100" "00001111000001" "10010111111110" "00010000100001" "00100001010010" "01001100000001" "00100010101101" "11101110010000" "01010011110100" "00001111000111" "00110101110111" "11110010011101" "01000110100001" "00011110100110" "00011110011011" }
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
set ID 380
set hasByteEnable 0
set MemName infer_layer_6_weights_V_19
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0000100101001000" "1110100010000110" "0000010011010010" "1111010011001000" "1110100000110000" "1111110001101111" "0000111001011101" "1111100110001110" "1110100001100010" "0001100001101110" "0000001100101000" "0000100110100101" "1101010100000001" "1101101110010010" "0001001000111101" "0001011111011101" "1111011010101011" "0000101111010001" "1110101100111011" "1110101010011001" "1110101110010101" "0001101100011011" "0000101101100000" "0001001001100000" "0100110001011101" "1111010001000111" "0010100111111000" "1110100010100110" "0000101110010110" "0001000101000100" "1111000001010100" "1110110101001111" "0000101010111101" "0000011010100011" "1111000110001101" "1111001111000101" "0001000101001100" "0001001110001000" "1110011110000010" "0000010111010011" "0001010000100011" "0000011101011100" "0001000001101010" "0000100001000110" "0000110011110110" "0000001001010111" "1111000000111111" "0000100110111011" "0000010010100100" "0001111101010100" "0001000001111001" "0001011110111001" "1111010000100110" "1110111000101000" "1101001010001111" "0010111001110011" "0001100101001010" "0001001010101010" "0010111111011110" "1111100111101001" "0000001001110001" "1111100101101110" "0001010011011011" "1111011011111101" "0010001010010000" "0000000110000110" "1110111111110000" "0000110101010010" "0001010101110000" "0000100000100000" "1100001110011111" "0001011011001110" "0001001110001010" "1111101101100010" "0001000111101111" "1110101110100001" "1110010011110100" "1111010010100000" "0000001010111001" "0000001110111010" "0000000100100010" "0001101100110000" "1111001001111110" "0000011101100111" "0000111010101010" "1111000000111011" "1101011011011000" "1101001101001001" "1111110110111011" "1111111011100010" "1111110000001011" "1111000111010100" "1111010011100101" "1111000110001010" "0001011100111110" "1111111000010101" "1110001010101001" "1111011010111010" "0010011111111000" "1111001011110000" "1111011000110100" "1111110111000100" "0011010001000000" "1111001010001010" "0001010111001100" "1111011110110110" "0000001000000100" "1110111111111001" "0011111100110000" "0010101111011100" "1111010010101101" "1111000100101011" "1111100100010101" "1110011100110011" "1111101011001001" "0000111100110010" "1111011111001100" "0001101011000000" "0010101101001000" "0110010000110100" "0010010001101111" "1111001011110101" "0100011110000101" "1110111101010110" "0000100101101111" "0000110001100010" "0000010001111011" "0001010101011100" "0000100000111000" "1111110111111011" "0100001101111110" "1111111100000100" "1111000001111011" "0001000111101110" "0000110001101100" "0001100100100000" "0001011110111100" "0001000111011000" "0000110011111001" "0000000000001010" "0011010010001100" "0010100010010101" "0000001010111000" "0001000101000110" "1111001001100101" "1111011001001111" "1111010101010100" "0000011011010010" "1110011100101000" "0001000101110001" "1110100111100101" "0100011110111111" "0001101011001101" "1110110110100110" "0010010000001110" "0000011101000010" "1110111111110110" "0000010001001010" "1110110111001001" "0000001110110011" "0000010111111001" "1111011011011111" "0001001000001011" "0001000001100010" "1110111100100001" "0000101000111100" "1111110111110111" "0001001111111011" "1111111000101000" "1111000000010000" "0001011011100000" "0001010011001000" "1111101011101100" "0001001000101001" "1110111001110111" "1111010011100001" "1111100110110010" "0001000010100101" "0001010110100101" "1111000111101000" "0000000000000110" "1111011111001011" "0010011110011100" "1101001010000011" "0001100110110111" "1111001101110110" "1110101100011100" "1111011110010101" "0001011011100000" "0000110010110000" "0000110010011101" "0000100111111110" "1110101000011010" "0000011101101001" "0011110011011001" "0000011110001100" "1111110000010101" "0000110000110110" "0000101001001010" "0000000110111110" "0001101010000001" "1110100001010100" "0000101010011011" "0000101100011000" "0011010011111110" "0000000100000011" "0000101010001000" "0000101011010100" "1101111111111000" "1110110111101110" "1111001010011110" "1110100110111010" "1111101001110100" "0000000010110101" "1111110110001010" "0110110111111001" "0001100010101110" "0001001000010000" "0100001110000110" "1110100110000110" "1110110011111101" "0000100000101110" "1111100010110111" "0001101000010111" "0001010001100100" "0001100111100010" "1111111100101000" "0000010100010000" "1110101101110100" "1110100111000110" "0000010000100010" "1111101100001000" "1110100100101000" "1110010101110100" "1111111010010101" "1111010001110010" "0011011000101011" "0010010100111010" "1111111111100101" "0000111001110101" "1111001110001100" "1111101101110010" "1111010001001001" "0000110001111001" "1110111100010100" "0001100000101001" "0000110010001000" "0010010100011111" "0000101101010100" "0000111100111000" "0001111000100110" "0000000010100110" "1110110010111111" "0001000001001010" "1110111010010111" "1111101110111110" "1111101100001010" "0000000110011101" "0000001001000100" "0000100110110010" "1111110111110111" "0001101111100101" "1101100001000110" "0001000110111100" "1111000011100110" "0000101110011101" "1111101010100000" "1110011111001000" "1111110110111000" "0001000000110100" "1110011011000110" "1110000000101011" "1110101100011110" "1110111010010011" "1111011111110101" "1111011101011101" "1111100001011100" "0000010011110111" "1111000001110000" "1100010110111110" "1101101010101000" "0001101000101100" "1101001001001100" "0001010101111011" "1111101101100100" "1111100010111111" "1111101011101111" "0000110011111011" }
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
set ID 381
set hasByteEnable 0
set MemName infer_layer_6_weights_V_20
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0000011000001000" "0000011110110101" "1110010101011100" "1110011001000000" "0000110110010011" "0000111000111110" "1111110101100010" "0001000010001101" "0000001111100111" "1111011101001000" "1111011001010110" "0000111011101011" "1110110011100000" "1101010001110110" "0000000010110110" "0000001110110011" "1111101001001110" "0000100011010111" "1110111001010100" "1111000101101001" "0000111011100001" "1111010000110011" "0010000100110100" "1110010010000111" "1111100111011000" "1111110101010111" "0001000101011101" "1111110111011111" "0000010110010110" "0001001011111001" "1110100001010111" "0000110100011011" "1111011001101110" "1111010110110011" "0000001011010000" "0001010101001100" "0000000011111011" "1111100101110011" "1111101011001011" "0000010100010010" "1110100110101010" "1111010001011011" "1111000011101011" "0001010101100110" "0001110010010010" "0000100001100010" "0000010100101001" "0001111000111111" "1110011010011010" "1110111000110111" "1111100011110011" "1111010000001000" "1110111111100111" "1111011010011000" "0001001011101111" "0000110001010000" "0001100011100000" "0001101000100111" "0011101110011011" "0001010000010010" "1111000110111110" "0000110011100000" "1111001100111010" "0000100110010110" "1110110000000111" "1110011110111010" "1110111010111110" "1110100100001000" "1111010101011001" "0000011111100111" "0000100001011100" "0000110111010010" "0000011101101011" "0000101011010100" "0000101100111000" "0001000111010101" "1111001110011100" "0001010111011100" "1111010011001001" "0000010111011110" "0000001100111100" "1110111111011011" "0001100101101100" "1111000011010111" "1110100111011001" "0000010011100110" "1110101011101000" "0001001111001111" "1101100101111010" "1111011110011001" "0000000010000101" "1110111010101011" "1110110110011010" "1111110101010101" "1111111011101010" "0000010110101101" "0000011010011110" "1110110000100011" "0011010100010011" "1110011011110111" "0000000101100010" "1111110001101101" "0001110110100111" "1110111101010101" "0000011000001011" "0000010010011101" "1111111001111010" "0000011010111000" "0000101000000010" "0000001011011001" "0001011101110110" "0000101110100000" "1110010101100101" "1110100111010011" "1111000001100000" "1110110110110101" "0000011001010000" "1110101100000011" "0010010010001001" "0010110000100101" "0010000110011000" "0001010110000111" "0001100110000100" "0000001101001011" "1111000110101111" "0000101010110110" "1111101111110000" "1111101100110110" "1111101011000100" "0001001000010010" "0000111111110100" "1110111110100110" "1111011000010101" "0000000011001011" "1111100100110110" "0001000001001100" "1110111111000111" "0001010111110100" "1111001101011101" "0001010000011010" "0011101101110111" "0010011110100010" "1110010000011111" "1110010101111010" "1111001111001010" "1110100010111110" "0000111101100110" "0000001100000010" "0001110011001001" "0000100110011101" "0000111111100101" "0000110100100011" "1011110111011100" "1110111011100000" "0001010000000010" "0000100100010001" "0000000100100010" "0001001010001111" "0000000011100001" "0000010011001101" "0000011110110011" "1111000011101001" "1111000111001001" "0001011110110000" "1111101110100111" "0000000011010011" "1111111010110001" "1111111101000101" "0000010011000100" "0000010110010010" "1110111000000011" "1110110000101110" "1111111001001111" "0001110010001100" "0000110000100011" "0001011000010010" "0001000010010001" "1111111010100110" "1111111111011010" "1111001001001110" "1111011010010001" "1111110000000101" "1101110100001111" "1101101100011101" "1110101000110111" "0000011011000111" "1011100100101100" "0000000110000111" "1110111111000101" "1110011000011110" "1111000100011010" "0001011010000010" "0001011111110111" "0001100100000001" "0001101010111111" "1110100100000011" "1110011011001100" "0001011110101111" "1110110101010000" "1111101111100110" "1111000010001110" "1111101010000010" "1111110110101001" "0001010001101010" "0010111011011011" "0000101000100010" "0001010101011101" "1111101110101101" "0000000000100110" "0000110000111000" "1110101110100111" "1110011000110000" "1110111110111111" "0000011100000101" "0000101000110101" "0000110101101001" "1110111111101110" "1110111011001101" "0001010000001100" "0000010001110000" "1110111001101110" "1110100001110011" "1111111101100011" "1111101010011001" "1111011001111011" "0000001001011101" "1111000011001011" "0001011100000011" "1111000001010110" "0001001011000001" "1111100010101101" "1110011010000000" "0000111000010100" "1110100101010101" "1111100110000101" "1111111101001001" "0001000111001010" "0001110100101010" "0000101000001111" "1111001110000001" "0001011100010100" "1111010100110101" "1111000111000110" "0000011001101111" "1111010111010111" "1110110101001111" "1111011010000001" "1100001010010010" "1101111100111010" "1111111010110011" "1011111011111011" "1111110110110111" "1111100000110110" "1111101110010101" "0000101010111000" "0000111111100000" "0001101111010011" "1110111111100011" "1100011100010101" "0001100111110010" "1110110001011011" "1110110001000110" "1111011100111111" "1111011010011001" "0000000011010110" "1111011000001001" "1111000001110010" "1110100001011010" "1101100101010001" "1111001011100010" "0001011101111110" "0001110001011000" "1111101000011100" "0000111100101110" "0000001000011100" "1111111000010101" "1111011100111011" "0001000011010110" "1111011100001010" "1101110101000001" "0001101101010101" "1111001001010011" "1101111010001000" "1110011011110111" "1111110000110111" "1111000011101010" "1110111000000000" "1111011110100101" }
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
set ID 382
set hasByteEnable 0
set MemName infer_layer_6_weights_V_21
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11100100111010" "00000001010000" "00101001101000" "11000000111010" "00011101111001" "01100000001110" "10101100000000" "00100101111000" "00101001001001" "11001011110110" "00101110111100" "11110010101011" "11101011011100" "10111001011000" "00001100011101" "11100110011111" "10001111000011" "11110001011100" "00010101101000" "00001111000110" "01010111100110" "00111100110100" "00001010000100" "00010111011101" "11111001000100" "11000101100000" "01010000010110" "10111010011001" "01001111101001" "00111011111001" "01000001010001" "00000101111011" "00010101110001" "10110111011100" "11111110001011" "01001001100011" "00000001101111" "10111111100100" "00101110110010" "11001001111111" "11000011000100" "00100001010011" "01100001000011" "01001101100111" "10111111000001" "11111000000001" "11010101011100" "00010000110101" "10001101111000" "00001011000111" "11010011001010" "00111101111111" "11100011011101" "01000000011101" "11011011000110" "01001011101011" "10100101011001" "11011011011111" "11011000000010" "00110100000011" "11001011100100" "11111110001110" "11111111110001" "11000011010101" "10011000100000" "01010000001011" "10010010111011" "00011111010001" "11101001001010" "11010011001001" "10110100001101" "00110111000111" "01100000111011" "10010111101001" "11000001000010" "01000011011111" "01000110010101" "01010010011101" "10110010100111" "00011001011011" "00001100101101" "00100101101101" "00010101111010" "11011111100001" "11100001010100" "00001010111010" "11011100010100" "10110110101100" "00110011101011" "01001000101111" "11010011010010" "11001011100000" "11101101111000" "00100100101111" "10011010111110" "11111110100000" "10110111000011" "11110010100011" "10011011110110" "11011000010110" "01001101011100" "11000111000101" "11001010000101" "10101010010111" "00110100001001" "01100000001011" "11100001010101" "00111101111110" "00010111110111" "11111010101001" "11000000010010" "10110001001100" "00001011110110" "11000000011110" "11111001100000" "00110110001100" "01011001101110" "11000110101110" "00101010000100" "01010001101010" "10111000101111" "10011001000011" "10111001001001" "11000000110100" "00001011011010" "00010110111010" "00100000010101" "00100001110011" "01000100000010" "11011111011100" "11110100110000" "11110001001110" "01011000111111" "01100001011000" "11110000000011" "10100010000100" "10100101010000" "11001001011100" "00000000010101" "00011111111010" "00110110110111" "01000000010110" "10101100010010" "00111100001001" "10010100101110" "11110110110001" "00110000101111" "11100101100101" "11000100000011" "00011110100101" "10100110100110" "10001101011010" "10100000010010" "11000111101110" "00010101100011" "11011001110001" "00000000001101" "10010111101111" "11111100000001" "11001011010010" "01000011101110" "01100000110001" "11101111001110" "11100101100011" "10110011111000" "00101000010000" "10001110001011" "01011011110111" "00101011001000" "01010100101000" "11001100011011" "00011000111111" "10010000010001" "11010110100110" "00100000010011" "01001010111101" "00101110011010" "11010110010110" "11110000011001" "11011101010010" "01100011101100" "10011011110111" "10011000101000" "11101011010001" "10100101111010" "11100011100111" "11001100011011" "01100111000110" "01011011001000" "00110001001011" "00101010101110" "11011101100101" "00100000110110" "00100100100110" "10011111101110" "11100111001111" "10100000111001" "11010010101010" "01001110010000" "00101101111100" "00001100101001" "10110010100011" "00001000110110" "11100110010000" "10010111101110" "10101100011110" "11000011000101" "11111011100000" "11001010010111" "10101101101000" "01100101001111" "00100011011100" "11010011100011" "10100011100001" "00001011000111" "00000001101001" "11110011010100" "00011111101111" "10011010011000" "00011101001000" "11111111010001" "01001110011011" "00110010110111" "00011110101111" "11101111000010" "11100110110101" "10111011010011" "11101010010101" "11110001010010" "10101101111110" "11001011111100" "01001101111111" "10101011000101" "00010010001001" "11010011101111" "01000111110101" "10001111000100" "01000000111101" "01001000011010" "10101000011011" "11100001011000" "11101110011100" "10100101101100" "11100101001010" "10111010000001" "01000110110010" "11011101011101" "00100010110111" "10010111000111" "00001000011101" "01001100011000" "11000011110000" "00110101010100" "00100101011001" "11010001010011" "00010101001111" "11111010001001" "11110111101000" "01010000010111" "01100000110011" "10110001001001" "00011001010001" "11011010011010" "01100001010110" "01100100111111" "01011011100110" "00100000011100" "01100101111000" "11111110100011" "00010110001101" "11001100010010" "11101110001001" "11011001101100" "10010100010111" "00000100001011" "10100101110000" "11110000101010" "11110110010001" "00011101010001" "11111010101010" "00000110000011" "11001011111100" "11000101000011" "11001010101011" "10100000001111" "11110010011110" "01000101111101" "00111000000101" }
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
set ID 383
set hasByteEnable 0
set MemName infer_layer_6_weights_V_22
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0001011011001100" "1111001100000110" "1101110100000001" "1111001111011000" "0000101101011010" "1110110001101101" "1110111010000110" "0000011111011011" "1110101010100110" "1110100101011100" "0000100010011110" "0001000000001111" "1111010111000110" "1101101011010000" "0001011101110101" "0001000001100110" "0000101101011101" "0000101100001011" "1111111110100001" "0000001001000110" "1110101101110000" "0000011001000010" "1111101001010110" "1111111101101001" "0110000100100111" "0001001101010111" "0001010100010101" "1111001010010001" "1110111001011110" "1111010110110010" "1110100001101000" "1110100011101010" "0010011101101100" "1111110001101011" "1110110000000011" "1111100100001001" "1110100100100010" "0000101000011101" "1111100001000100" "1111010101010000" "0001100000101000" "0000000000011111" "0000010111001110" "1110111011100001" "1110001110010010" "1100111111111001" "1111100001010100" "0000001001011010" "0001001011100011" "0001010001100100" "1111100111011000" "1111101111001001" "0000011000111000" "1111000111100010" "1111110110110011" "0001001111111010" "0101010101100110" "1110110100100100" "0100101111011110" "0001001011110100" "1110100110100011" "1111010110110011" "1111110000011010" "0000101000110010" "0000110000000001" "1110101111101001" "0010100100010101" "1111101110011111" "0000110011010111" "1110111001011101" "1111001011111100" "1111110000010011" "0000011100001110" "1110111001011010" "1111000110101100" "1111010011110010" "0000100101010111" "1100111011001111" "1110100000001010" "0000100000000110" "0000111100111101" "1111001010111110" "0001001011011011" "0001011100000110" "1111100100111010" "0000101101001001" "0000010101110000" "0010110101000011" "0110000111101010" "0001010011000111" "0101010100000101" "0000001101100000" "0000101101010010" "1111101110110011" "1111100110100010" "1111000101001101" "1111011111101011" "0001100110101010" "0110001111010100" "0001000100111110" "1110011011110101" "1110100101010001" "0100010001101001" "0000000000010001" "0001000001110010" "0001001011010110" "0001010111001100" "1111010010110100" "0100011001011110" "0011000110010000" "1111010110000011" "1110000101000110" "0000110011000110" "1101110000110001" "0000010100101000" "1111110011111111" "0000100001110011" "1110101110001010" "0010111101111111" "0100010100111100" "0100111000001000" "1111100000100101" "0010110001011110" "0001001000010001" "0000000100101100" "0000110011010001" "1111101111001011" "1111011101111100" "1111011011101100" "0000000010010101" "0011101111101110" "0001101010011100" "0000110111110101" "0000001011000011" "0011101010110101" "0000011100110101" "1111101001110111" "0000000110110110" "0001001110110101" "1110101111000110" "0011110001100100" "0011001010001011" "0001100011100000" "1110100111001011" "1110100001111110" "1100110100010110" "1111010110100011" "0001010101010110" "1111111100011010" "1110111101100011" "0100010000001101" "0100000101000011" "1110111001100110" "1111111101001000" "0100011110000011" "1111011001001100" "1110111010001011" "1111010101010100" "0000011100101111" "1111010100101000" "1110001110000011" "0000101111100100" "0100001101100001" "0000111010001010" "1110101100011110" "1111001110001000" "0001010010100101" "1111110110001000" "0000110110000111" "1111010011011110" "1111000010011010" "0000010100100000" "0010111101000110" "0010011101011100" "1111000001101100" "1101100000101000" "1110011010110111" "1111100100011110" "1111101110110000" "1111001000000101" "1111000111001010" "1110101100001101" "0010110101110100" "0011110010001111" "1111000100101001" "1110111010100111" "0010110010101111" "1111000010011000" "1110101110111010" "0001100010011011" "0001011001000111" "0000100110010000" "0000011011111011" "0000010110011010" "1101101101100101" "0000010101011011" "1111110001101101" "1111111001010111" "1110110001100010" "1111100010010011" "1111001111100100" "0001100010010011" "0000001011101001" "1111011100010100" "1111111111111011" "0011011010101111" "0000001001011101" "1110000000100011" "0000100000001010" "1110100110000010" "0000101110000101" "0001011110110101" "1110100010011001" "1111111010000000" "1101110010110001" "1110110111111111" "1110111110000111" "0000111100011010" "1100110001101110" "0000110110011111" "0000111001011110" "1111000110110011" "1111010111001010" "0000011010001101" "1101101011010011" "1110011111100100" "1101011100100101" "1110110101010110" "0000111110100000" "0000100111110100" "1110010101110111" "1111101111101111" "1111110001011100" "0000111000110111" "1110110100011111" "1111001100000110" "0000111100011010" "0001111101011101" "1111100110110111" "1111110101000110" "0000100100111001" "1111110000101000" "0000000001101111" "0000110010110110" "0000110001100001" "1111100011000011" "1110001100000111" "1110010101000111" "1111000111101010" "1111010011000001" "1110010010110110" "0001000000001100" "1111001010011101" "0001011011011101" "0001100000001101" "0000100111111100" "0000010011111001" "1111000011011001" "1100010101100101" "0001011101110010" "0000111111100110" "1110100100110010" "1101101011101100" "1111011111111010" "0001010000001010" "1111101011101001" "1111000011110100" "0001001000100011" "1111101010011100" "0000110011101101" "1110100001001011" "1101101000111001" "1111001110110011" "0000100110100010" "1111000011000101" "1110101100111100" "1111011111011111" "1110111110001011" "1110011110000110" "1101010010011110" "0000011001110001" "0000100110010001" "1110101101100110" "0001011111110010" "1111111100100011" "0000100000000101" "1111101001110000" "0000001101101100" }
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
set ID 384
set hasByteEnable 0
set MemName infer_layer_6_weights_V_23
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1111010111000011" "0000011100011001" "0011001101000100" "1111010111011111" "0000101110110000" "0001011010110011" "0001010111001001" "1111000001010111" "0000101101000100" "0000001111011111" "1110100001001111" "1111101010001000" "0001101000010101" "0001011101111001" "0000011000101101" "0000101100010100" "1111111001100010" "1111110110100001" "1110100001001100" "1111110101111011" "0000000000001001" "0001010010001001" "0011011000010000" "0000101111110101" "0000110111111111" "0000111101100101" "0011000001011010" "0001010000100100" "1111100000100111" "1110011101110100" "0000110110001111" "0001011111101001" "1110111101101100" "0001000110001100" "0010010010101110" "0001000010001001" "0000001001101101" "1110101100110001" "0001011111100010" "1110100000011110" "1111011101111101" "0001011111101001" "1110011001101111" "1110111010110010" "0000101111011001" "1111111001010100" "0000101110111000" "0001100110011011" "1111011001111101" "0001111011000110" "0000101010011100" "0000100100111010" "1110011010110111" "1111010001011110" "0001110001010111" "0010100000011100" "0010100010001011" "0000110000100111" "0010011101011101" "1111101100101011" "1110111011100111" "1111111011100111" "0001001010010101" "0001100000100010" "0000100110110101" "1110110010011001" "0001011101100100" "0000100110001000" "1111000001000101" "1111010101010010" "0000101010001111" "0001000011000000" "1111011001101110" "1110110010001010" "0000011110101010" "0000111101001001" "1111100111111110" "1110010110001101" "1110110011100011" "1111010100000000" "1110101010110100" "0000001101000000" "1111000010100011" "0000011110011011" "1110101010101010" "0000011011111111" "0000010010110001" "0000100101110111" "0100011110000110" "1111001101101101" "0000100001010000" "0001011101101011" "1110100010001111" "1111010100111010" "0000010010001001" "0000100000011011" "0000001011110100" "0000011001101110" "0001101101000110" "0000000110000110" "1111001101111111" "0000100101100000" "0001100110101010" "1111000111111100" "1111001101111111" "0000110111111011" "1110111010111010" "1110110110010101" "0011001110100010" "0010001001010110" "1110101111010000" "0000101000101000" "0000011110001110" "0000111001010110" "0000101111101100" "0000111101001110" "0001001100001001" "0000101010110010" "1111111100111100" "0000010111001110" "0010000001100000" "1111011100100010" "0000111101010100" "0001101010101011" "1111011000101010" "0000101001101001" "0000111111000010" "1111000100011100" "1111110100001011" "1111110100011000" "0001100101111010" "1110101101000111" "1111101101000101" "1110101000001100" "0010011101100110" "0001010001111000" "1111110011001000" "0000001000000010" "0000101101001011" "0000100000001111" "0011000100111001" "0010100011100111" "1111111011010110" "1111011111111101" "0000101011011100" "1110001111001011" "1111010011000000" "1110111010011010" "1111001011010111" "0001001110010001" "0000100101010111" "0001010011010100" "0000101110001000" "1111100111110010" "1111000101111001" "0000101101001100" "0001001000011111" "0001000010100010" "1111111111100110" "1111011100010000" "0001011100000000" "1111011100101011" "0100100011110001" "0000110010001111" "0001010001101010" "1110011011010011" "0001100110101101" "0000101001111001" "1111111000010001" "0000000100000001" "0000000011011011" "1110111011000011" "0011001010001111" "0011010100101011" "0000000010001011" "1111001110100010" "1111111010000010" "1111101001000011" "1110110000111001" "1111100101000100" "1111100000011110" "0001001000110111" "0001101010101011" "0011001101111100" "0000011000110001" "0000001000111100" "0010000010000011" "1110111100001100" "1111111011100100" "1110100011100001" "1110011110011111" "1110110111011111" "0001011100111111" "1110011111100001" "1110111100100000" "1111010010110000" "0001000101000000" "1110110110101001" "1111000100001010" "1111001001001100" "1110100010111110" "0000101101111000" "1110010111110010" "1110101010000011" "1111000111111000" "0000000011010110" "0001000111010100" "0000110011000001" "1110111110110111" "0000010100101010" "1111111010011101" "0000011010100110" "0000101011101001" "1111010001010001" "0000111000111111" "0001001000001010" "1110100110010000" "0000101001010001" "0000100111000111" "0000111001000111" "1110100000111100" "1110011110101110" "1111010011111000" "0001100110001111" "1110110101100000" "1111000000100000" "0000100110010000" "1110110011100001" "0000001011000111" "0000101000100100" "0001000000011110" "0000000001000111" "0000001011001000" "1111100111001110" "0000100100101100" "0001011100010101" "1110111111100101" "0001001110101100" "1111000110010010" "1110110111010100" "0000000101010110" "1110111111000101" "0000000110110101" "0000010001100000" "0000000101001001" "0000110001100011" "0000010101001101" "0000010101001111" "0001010111010001" "0000110110110101" "0001010000000000" "1110101111110111" "1111111111011111" "1111001000011001" "0000011100101100" "0000000100110111" "0001100011000110" "1111111100010110" "1111110100000111" "0001001110000011" "1110100011000111" "1111000101000101" "0000111011001111" "0000011110110010" "1110110000011001" "0001001001011000" "0000100011110001" "1111101001101100" "0000111001100110" "0000011110010110" "0000110010101110" "1111110111111011" "1111101110001111" "0000100110100010" "1111100111111110" "0000100001101000" "1111101001101011" "1111111101111001" "1110111100000001" "0000011101001110" "1111100010101011" "1111010101111001" "0000011000100011" "0000111100000010" "0001100011101001" "1111111001110010" "0000010101110100" "1110100011101111" }
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
set ID 385
set hasByteEnable 0
set MemName infer_layer_6_weights_V_24
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10100001010100" "11010101100100" "10110111010110" "00011100101001" "00000011110101" "00110000101111" "00100111000000" "00000101000001" "11011100100110" "00100000010011" "00001011101110" "00001100111111" "11100000111010" "00001000000001" "11100001100010" "00101111010100" "00100110000010" "10111110001010" "01000110100010" "11110111001001" "01000111011111" "11011101011111" "01010101011101" "11000001000011" "00011100011110" "11100110101001" "10110011000100" "00011100110010" "11111001100001" "11001000001001" "01011111011100" "11011101101111" "00110111000111" "11101101110010" "11111000000010" "01011100010010" "10110111010100" "10110000100110" "11110000111110" "01100111110000" "00111010100000" "01100000011000" "11011110011111" "11100000011000" "01010111001001" "00010111001100" "00010011100100" "10111001111010" "01011101100100" "11011000111001" "00101110111001" "10111010001110" "00100001111111" "11000010100110" "00111001000001" "00111101001101" "00100100001101" "11110100100011" "10101001001000" "11100110000001" "00010101110111" "00001101101111" "10101100111100" "01100010111100" "10110000110101" "11100110010100" "11100001100110" "10110101001001" "11110111011001" "00011110000001" "11110101000101" "01011111000000" "10110110010001" "00010011010110" "11100110000111" "00110111001010" "11010001101111" "11011010001100" "00110110100001" "11111011001101" "10101110010110" "00110010011001" "10110011000001" "11111100110010" "11110101100100" "11110000010011" "00000101010110" "10011000110010" "00100110111100" "11110000011101" "01011000111101" "11101101111110" "00010100010100" "00111101110011" "10100100111010" "11000000001000" "01001000111101" "10110110111010" "00011001100011" "11001111100001" "00011100011010" "11101110001010" "10111000100011" "00100010010000" "00001100001010" "11101000011001" "00011110111101" "00110011100000" "11001010011100" "01011110101011" "00110111111011" "00000010111110" "10100010110000" "00011100010111" "00110001110011" "10110001001110" "00111111111000" "10100100111100" "10110100100010" "11101000110100" "10101001011011" "00110010101100" "10011011101111" "10100010011001" "01100001000100" "11110001000110" "11111100101110" "00001001011010" "00111000111101" "10111101101111" "01001100011000" "00000100100000" "11011111100001" "11001100000101" "10111001000110" "00110000000110" "11000010111001" "10011000001000" "11111110010101" "01010110001010" "11111101111111" "10100111111011" "11001100110011" "11110011101000" "11000101100100" "00110111011100" "01010000010000" "11100000111010" "11010010100010" "11100110100001" "10111001100110" "11011011101000" "11000101111000" "00001000101101" "01000101100100" "11011100011000" "11011100000101" "00010001110111" "00001010100010" "10010101000000" "10101010110000" "11000011010111" "00000010010101" "10111001001111" "01100100111010" "00101101101001" "10101100100011" "01010100011000" "01011010100011" "11110101100001" "00111101010001" "00011111001111" "10011001110100" "10100000000100" "10110111001011" "11000000011001" "01001010110110" "00111001010100" "00111111100001" "01000111111000" "11110110100101" "11011110010001" "00000010101100" "11111101010100" "01000101001101" "11101010011001" "10110011101111" "00110010011101" "11011110010111" "00101001100110" "00110000001101" "01000110101100" "10101000100111" "11010001010101" "10110111001010" "00011101110011" "00110000010011" "00001111110111" "00101111110110" "00000010010010" "00111111111000" "11110100110111" "00110010111011" "11010111011000" "10100101100101" "10101011110000" "00110111000001" "00000100001010" "10110010001011" "00010001010111" "11001111001011" "10110010000100" "11100101011000" "11110000000011" "11110100100001" "10110010111101" "11010001110110" "11100100100110" "00000111010100" "01000000100111" "10110010100001" "10111010001111" "00110010111111" "11001110110111" "11100101010100" "01001011100001" "01011001010001" "00001011010101" "01010101011011" "00110011011100" "01010110110010" "00001011110000" "11001111100101" "01000010111000" "00001101000010" "00111011010111" "10100100001100" "11111111100110" "00010111000010" "00110001110011" "00110111111011" "10100000010011" "00001011010110" "11100000000010" "10010111001111" "10111111000111" "11110000111101" "11111011011101" "11010000011000" "10101011010000" "00111001000010" "00100011010010" "11011101010010" "11101000111000" "11110100011010" "00011111000101" "01100001001010" "01100000101011" "11011001001100" "01101000000001" "00000001011001" "01001000110000" "01000100110001" "11011111010110" "11111000110000" "11100001011101" "00000111000101" "00100011100100" "00110101001011" "01001111100111" "11011110010001" "00100010010111" "01011000010101" "01000001100010" "01000000011100" "01000101101100" "11010100101000" "10101000000010" "11010100001001" "11010011000100" "11111111101111" "00011101101000" "00110011010100" "01100000001010" "01001010010001" "00110111011111" "11010101101010" "11110110100111" }
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
set ID 386
set hasByteEnable 0
set MemName infer_layer_6_weights_V_25
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1110111010100100" "0000000110010100" "1101100111000010" "1111101001001110" "0001000110010110" "0001010011100110" "1101011101010000" "0001000111000101" "0001100001100110" "0000001010111100" "1110011000010110" "1110111111101111" "1100010011001110" "1100011011010101" "1110101001000011" "0000110000100011" "1110100001111011" "1111010111101111" "1111000011111110" "1111010111110010" "0001100111011100" "1111111001101101" "1101011111100100" "1101001110101001" "0001111000111100" "0000101010011000" "1110000101010010" "0000001000000001" "0001100100110100" "0001010110101001" "0000010101100101" "1110010110101000" "0001010111000101" "0000010001101111" "1010101100011000" "0000001011100011" "0000100101001111" "1111111011000100" "1100100100010100" "0001010011011101" "1110110000011010" "1111011110110010" "1111001101011111" "1111011111000001" "1011110010011000" "1110100000110100" "1111100011110111" "0001000010001111" "0000110010101000" "0001110110000011" "1110110100000011" "0001000001101011" "0000100110111110" "0000001010110111" "1101011011111000" "1011011011111101" "1111110111010001" "1111001001000000" "1100100101110101" "1111000000001110" "1111001001010100" "1111110010101100" "1110111000000100" "0000001010000001" "1111100011110010" "1111011001101101" "1100110110000000" "0000101101011010" "0000010011110101" "1110110010111101" "0000000011010110" "1111101100101001" "1111101010001110" "1110100011110111" "0001011101101110" "0000100110100111" "1101111010011011" "1100001001010101" "1110110011101001" "0000110011001000" "0000100110111001" "0001001001001010" "1111110101101000" "1111101111000110" "1111111111011010" "0000011000011011" "1110000011110100" "1011110110110100" "0000101011011011" "0000010001010001" "1111111001100100" "0001000010010000" "0000000110011000" "0000100000101101" "0001001111101000" "0000011111000010" "0000110110100011" "1111011001010010" "0100110000001001" "0000000000110111" "1110011100010110" "0000000100001100" "0001101010011100" "1111011000011000" "0000010110100101" "0000010111011011" "1110110010110110" "0000011100011110" "1111111111100110" "0001010001100000" "0000100110101001" "1110101000010101" "1111010100100000" "0001001101110000" "0000100011111110" "1110100010011011" "1111101111010101" "1111111111101010" "0011111010010110" "0011000111001101" "0011100100000010" "0000100000110101" "0001110001010000" "0000000111001011" "1111001011110011" "1111001010000000" "0000101001011110" "0000101010111010" "0001111000001001" "1111011010000010" "0001000010101110" "1110101111111110" "0001100010101001" "0000111100110011" "1110100100111011" "0000010001000011" "0000110000101111" "0000101010101101" "1111001001011111" "0000110011010110" "0000011100101011" "1100110111001111" "0001000000111111" "0001001001010001" "1110110010010000" "0010000111100111" "1111101010101100" "0001100100111000" "1111011000011001" "1111110110111100" "1111101111110000" "0011100000010110" "0010011110000100" "1110100101101110" "0011001100111100" "0000100000010100" "0000100111001011" "0001010011000011" "1111001011000001" "1111011010000001" "0001101001110110" "1110110111000011" "1111100010011100" "1110100111001001" "0000100010110101" "1111011001111101" "1111010101010001" "0000001100001011" "1111111101000001" "1110110001111011" "0000110000100001" "0001001000110101" "0000111101100000" "0000000011100111" "1111011011011010" "0000100110101000" "0001010000001100" "0000100111111011" "1111100000001100" "0001001001010110" "0001000011001111" "1110111010001011" "1101011010010010" "0000001011010011" "0010101101100110" "0000111110101001" "0001100001111100" "0000100010110111" "1110101001011110" "0001000000100100" "1111011110010111" "1110010111000010" "1101111101101011" "1110100101110100" "0010110001100010" "1111101101100110" "0000010010101001" "1110101101101011" "0010001101100110" "1111010010100011" "1111010100100000" "1111011100111100" "1111110110010000" "1111001111111010" "0100111101110101" "0100100000100101" "0001101101101011" "0000000101111000" "1111001101110011" "1110001011000110" "1111001010010110" "1110011101000011" "1111000111011111" "1111011101000100" "0001101110100010" "1111011001010010" "1101000011111010" "1110101110011101" "1111101101001011" "1111000101110000" "1110110110010110" "1110011000011000" "0000001110001000" "0000101000000000" "1101101000001110" "1111010010111110" "0100010000110111" "0001100111000001" "0000101111101110" "0001001011001100" "0010111110010100" "1111001100000011" "1111000000101101" "0000001100011001" "0001000101001010" "0001011111100011" "0100011010100111" "0101001010010010" "1111011000101111" "0000011010111000" "1110011011000110" "1111110101111100" "1110111110011011" "0000001111100111" "1111111111100100" "1111100101101101" "0011000000000111" "0001110101110001" "0000011001011100" "0000010111010100" "0010100101111110" "1111010001110110" "1110110000100001" "0000111100110111" "1111010010000001" "1111010000011111" "1111111001011000" "0001101001010111" "0010001000001101" "0001000101110100" "0000001111110100" "0000100001101001" "0000000101100110" "1111011110101100" "1111110100110010" "0001011000111000" "0000111001100101" "1111110100010010" "0000111100111011" "0010101100101101" "0001101111111010" "0000001011000011" "1101110110010111" "0000010101001101" "1110111101000111" "1111101001110001" "0001001101101110" "1111001100010000" "0010111110000110" "0010010110001101" "0000011100000001" "0000000010100010" "0001010101001010" "1110100111000110" "0000011011100000" "0000101010010011" "1111011111011011" "1111111101011111" }
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
set ID 387
set hasByteEnable 0
set MemName infer_layer_6_weights_V_26
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10011001111001" "10100000110000" "00100011110100" "00101100001010" "10111011110001" "00111111100001" "00001101110110" "00001000010101" "01000011000011" "11010110111011" "10110101110110" "00101000011101" "10101110010101" "00100001011001" "11010100101100" "01010011000000" "11001111000100" "00101110010111" "11111010010100" "00101011011101" "00100101000111" "11011010101111" "10111000010110" "11100001001000" "11001111000011" "00110010100100" "11000010101001" "00011011001101" "00010110101100" "00010100111000" "11100110111101" "11011010111011" "01000010001000" "11000111101011" "00011001010011" "00010100010000" "00010000110010" "10101101000101" "10100011000101" "00000010011101" "01001000001010" "11101101110001" "00010100011101" "11111111000000" "10110000000001" "10111011111001" "01010100110010" "00100100101000" "11101101000111" "11111110001111" "00110111101100" "00111110000001" "11110000110000" "01011010000000" "01001001111111" "11001010011100" "11111000011111" "01010011011001" "00101111001100" "10101001000100" "11100101111101" "01000100110011" "00010010101010" "11001110100000" "11101110110001" "11001110011001" "01010110001001" "00110100001011" "11100010110110" "00111000011111" "00111010010100" "10011100000100" "11100101101100" "11110001110011" "01011010010001" "11001100010011" "10100101101011" "10110010011011" "01000110100000" "11101011011111" "00001100001000" "00100101111011" "00001111101101" "10110101001010" "11110101111001" "10110011010011" "10110110110100" "00110000001101" "10101101100011" "00011111110000" "10110101111000" "10110110001001" "10011111000011" "10110111000001" "10110101100000" "00010000110011" "10111010000101" "00100001001100" "11011011001100" "10100011111101" "00110111111100" "00010011100111" "10111000111111" "00101100111000" "00000001001010" "01001010110001" "01001100001010" "01001001011110" "10011001101101" "00010000110100" "11110110001110" "00100110111000" "01001000110010" "11001011111011" "11011001010111" "11010010000001" "00001010011010" "00110000101010" "11111111110001" "01000100010011" "00011011010111" "00111101110111" "00100111000100" "10110100111010" "11000000000001" "11011010101001" "00000111110010" "00111110000010" "00100000001111" "11000101011011" "01000111000001" "00101010000101" "00100001011001" "00111001000011" "10100100001001" "11101010101011" "11001000010111" "01000110011000" "10110110000111" "10111001101101" "11101010100100" "11110011010111" "11001100001101" "01011100110001" "11110100110000" "01011010111011" "00010000000010" "00101101100100" "00011111111111" "10011111010000" "11010100111111" "00110010100001" "01011100110011" "10111101000110" "00001010011001" "00001000101110" "00110101111110" "11101101100010" "10111101111001" "01001000011111" "10101101110101" "10110010001010" "11011011101000" "00011110010000" "00101101011011" "01011011010110" "10100001001101" "11011110000100" "10011111011111" "10101110000001" "11101010100110" "10100010011000" "11110011100000" "10101010001000" "11010010011100" "11010100001001" "11100101011010" "01001011011001" "00001010011000" "10111100111001" "00001010010010" "10101101001110" "11101000011110" "00000011111110" "11001111110101" "10111111010110" "10011110110011" "11001101000000" "10111111010010" "00001000100100" "00110100101100" "11000110000111" "10111100010100" "00100111110100" "10110101110010" "00010011101000" "01010011011100" "11011001011001" "00101001011000" "10110101111100" "10111110101001" "00010001101010" "00011000100011" "00111001011001" "00011000100111" "00011001010010" "10101010111000" "11000000101010" "11100010010011" "00001010100010" "10110101000001" "11010001101010" "10101001111001" "00111100010001" "10100001111111" "10100001001000" "11011011011110" "00111101011111" "01001100100010" "11100000011001" "00100000000110" "00011000101110" "11111001111111" "00000000100001" "11010111000100" "10110111101010" "00110101100111" "00101010001001" "00010011001100" "10110100110010" "11011101101001" "11110100110000" "11100101001011" "11000101001011" "00010010010001" "01011100011100" "00110010111111" "11110010011111" "11101101100111" "01000011101011" "11101010100011" "01001100110001" "10110101101100" "10111100001001" "00110001111011" "11101100101110" "11101100110010" "00001111101111" "11100001010111" "00100111111010" "00101011101111" "10011001111010" "01001011000110" "00100111011101" "10100101010000" "01011000101101" "00000110100110" "11011011101100" "10111111001111" "00100010101101" "00110111111100" "11010111101100" "11011011001000" "01000001100011" "00000001101010" "11101011011001" "11111111101000" "00110010011100" "10110100010101" "11111011010001" "10110100110010" "10011010110011" "11101100110001" "10011001101010" "10100011111110" "00011101111000" "01000101001001" "10101000011111" "00011100111011" "00111101001110" "10110111100110" "01011110100100" "10111110001001" "11011110001111" "11001110001000" "11100000010001" "01000000101010" "00110110001101" }
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
set ID 388
set hasByteEnable 0
set MemName infer_layer_6_weights_V_27
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1111111010001110" "1111110010110011" "0001001111010100" "1110111000001101" "1111010111010100" "1110111001001110" "0001011010001110" "0001011110111100" "1110111100111010" "0000111010011111" "0000111111111001" "1110100000111000" "0000110001010100" "0001011010000111" "1110110010000001" "1110100000001110" "1110101010111000" "0000010011001011" "1111111111001001" "0000111001010000" "1110111011010100" "1111000110100011" "0000100010010110" "0000001111110111" "1101110100010010" "1111101110101011" "0001001001001010" "0001011101111001" "0000110111100010" "0000011100000001" "1110100100001001" "1110111110111001" "1110101100111111" "0001100111000011" "1110001111101001" "0001001101011101" "1110110110100011" "1110110010010001" "1101011111100101" "0000101111011000" "0001100100001010" "1111110100110101" "0001001001100011" "0001010111011101" "1110111000101011" "1111101010000000" "1111100111100100" "0000000011101101" "0000001110010000" "0000001100110011" "1111111100010111" "1111111010110111" "0000100000011000" "1111101011101111" "1100111111100100" "1111100000011011" "1011111001111111" "1111010100100000" "1110010100110111" "0000110000010000" "1110011011100000" "1110111101010001" "0000010001010100" "0000001110000010" "1111100000001011" "0001100101111101" "1100010110111101" "1110101100111100" "1111101001001100" "1111011101011000" "1111111100100001" "0000110011001010" "0001011000000001" "1110111111100001" "0000000101100001" "1110111010111011" "1100010101000000" "1110000010010011" "1110001111001010" "0001011011101101" "0001100101010100" "1111101001101110" "1111000010011111" "0001010000001001" "1111101111100101" "0001100010000111" "1110010000010010" "1101111000000111" "1110011000011110" "0001001010010000" "1110000110011011" "1111010010010011" "0000001001101000" "0000100111000110" "1111010010111010" "1111011000010010" "0000001010011110" "0000111100111001" "0010100100110011" "0000101110100101" "1110101110000001" "1110101000101000" "0000010010010011" "0001100000001000" "1111001111110010" "0000000101001110" "1111101100110010" "1111101110011100" "0000000101101010" "0010000101110000" "1111110011001100" "0001001100100100" "0001100110001010" "1111001010110011" "0001001100111111" "0000011110001111" "1111100010101101" "1110111111001000" "0000111000011100" "0010010010111000" "1011101111010010" "1111111110011110" "1111000110001000" "0001001000100001" "1110110000011011" "0001000100111101" "1111101110110111" "1111001000001111" "1110110010000001" "0001010000001010" "1111100100011111" "0000111010011010" "1111110011110001" "0000000100000100" "0001101100011001" "0001000111011001" "0000010000110100" "0001100101100011" "1111011011101011" "0000110001000110" "1111001110010011" "1111100110100001" "1110011111101000" "0000000001011100" "0000011010010000" "1111111101101100" "1111011011000010" "0000010010111111" "1111001100100100" "0001001011011010" "0000000001001100" "1111011111000111" "1101010000100010" "1111000110001000" "1110010000101101" "1110011110110000" "0000110001110010" "0000100000111001" "1111000001001010" "1110100111010111" "1111111111110010" "0000011001110000" "1111110100011111" "0000111111111011" "0001010111111110" "1111110111101001" "0000100100001001" "0001010010111000" "1111110010011111" "0000100001011011" "0001010000111001" "0001011011101011" "1110001110011011" "1101010001000011" "0000111011110000" "0001101110000100" "0001100111110100" "1111011000110100" "0000100000111100" "1111001100111101" "1111000110101100" "0000000001101011" "0000011001101111" "1101110110101011" "1101001000001001" "0000000111010000" "1110001011111011" "0001011000011010" "1110111100011110" "1111011001000000" "0000001010010111" "0000100111100001" "0000000000010010" "0000010001000100" "1111111110110110" "1111011010011101" "1111011001001000" "1110100101101100" "0000010100000000" "1110100000000101" "1110011110001101" "1111110110000101" "1110011111100110" "1111000011010011" "0010000110011100" "0001001101100000" "0001100001101001" "1110110000000101" "1110111100010111" "0001010110100110" "1111000001110000" "0001011100000000" "1110110101100101" "1110111100110011" "0010110100010010" "1110010010001001" "0000001000100111" "0000000101111000" "1111011100010000" "0000111110100001" "0000110101111101" "1111110000110100" "1111100010101100" "0000000101010000" "0010010001110000" "0000110111101110" "1110011101111100" "1110011110110110" "1111011011110000" "0000100100000101" "1111011001011001" "0001010111010010" "1111010110110000" "0000001101010100" "1111011110010101" "1110100101000000" "1110010101100100" "1110010100001111" "0001010011010011" "0000110011011101" "0010001110001111" "0000000000011000" "1111111100111001" "1111010010011000" "0000101010100101" "0000100000001011" "0011010001010001" "0011101110100100" "0011101111110110" "1110100011101011" "0001100111101100" "0001100001101001" "0001100010101100" "0000101100101101" "0000100001011001" "1110100101011011" "1111011110111100" "0000011100111101" "1101101101011101" "0001001101000001" "0001100101111110" "1111001111010101" "1111110010100011" "0001001101110010" "0000001001000001" "1111100101111110" "0001011100111101" "0000101111010010" "1110100010001100" "0000010000001011" "0000011001101100" "1111011110000010" "0010000011101110" "0010010010010110" "1110100100000011" "0001100011100100" "1111101101101101" "0001001101100110" "0001111011100011" "1111010110110110" "0001010100111111" "1111001000000011" "0010001010011011" "0000101110100011" "1111111001000100" "0001001011110110" "1111010110001100" "1111111011101101" }
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
set ID 389
set hasByteEnable 0
set MemName infer_layer_6_weights_V_28
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11101101011000" "10101001100000" "10110001100011" "00010011010010" "00010101001101" "11101110011010" "11111100010100" "01000001011100" "11101011100110" "00100000000100" "10111010100011" "10111010100101" "11111100000111" "01010011000010" "00100101110101" "10110011010011" "01100001000001" "10101111000101" "11001011110010" "01001000101100" "10010101101110" "00101111100101" "11010111111011" "00011110010011" "11101011010000" "00110111001101" "00001000100011" "01011011000110" "00010000111110" "00110011000011" "10110010010100" "01001001010101" "00000100101010" "01100010010101" "01100001001011" "00101000000100" "01001010010101" "11011110111101" "00100111101010" "00000011010000" "11111110011011" "11101110111101" "01001111101001" "11000000000000" "00000110000011" "10100010010011" "11010111001101" "11111011101000" "10101000001011" "00010010011101" "11000001100110" "11110001011110" "11001010111010" "01011011101100" "11100110001110" "00110000110110" "11001000011000" "01100000000011" "01010011110000" "11010000111101" "01001010001000" "11010001111111" "01011101001000" "01001000101100" "00000111011111" "11100100010100" "00111101101110" "10101010100110" "10011011000000" "00110110010000" "10010101111000" "11000010010011" "10101101011011" "00000101111010" "00110110000010" "11101000111111" "11000010000000" "11011101100000" "00010100011010" "10011001010010" "11110111100011" "11111100100101" "01000010011101" "00111101111000" "11110101100001" "00110101001110" "01011110000100" "11011000000001" "00101010101011" "00001111111100" "01011011001001" "10111011011001" "10011001100110" "11011001000110" "11110010011010" "11111100010010" "10010010110111" "00100000111100" "11110000100100" "11011110010100" "10100100010101" "00101110101011" "00111100111011" "10111000000101" "00101101001001" "00110101110010" "00010000011111" "10011010011010" "00110110011101" "11100001101101" "00010000110111" "11001111101100" "00101111110010" "01000110100101" "00110101100001" "00010000100111" "00000110101001" "00101010111111" "10011110111111" "01100001100110" "11100101011100" "01101001000111" "00100100100111" "00100110000010" "00001110000001" "00110011100011" "11011111100100" "11010110001111" "11101100000111" "01011000100001" "10110001101110" "11000110001100" "00101110010000" "11001100010011" "10010101100110" "11000000110101" "10011110011011" "11101000100011" "01010001110111" "00000110111110" "00101010010101" "10011000011010" "01010010011110" "00110010100110" "10110011001011" "00111001010010" "10011011111111" "10110111111010" "10110110110101" "10101000111101" "11111110010010" "10010110011111" "00000000101001" "00110100100110" "10010011001100" "11010000011111" "00011110111100" "01011000111110" "10111010011011" "10111000001000" "00010010101001" "00011011000111" "00010110111001" "11110111111101" "10101011110010" "00101010010110" "01011010101101" "11101011100000" "01010011010001" "10111100101100" "11110111110011" "10100101010100" "00110000111010" "00011110101100" "11001111110110" "11011100010110" "11000110000100" "11000001000110" "11111101000011" "11101110100011" "01001010110010" "10101111010101" "00000111010110" "10110100100010" "00101001010000" "10100111010010" "01001110100010" "01011111010011" "10111001001001" "11100001101101" "11100000100010" "00001111001011" "10101100000010" "11110010101101" "00011101010111" "00110001010101" "10100100001001" "01000110001100" "10010110101000" "01010101100010" "01001100110000" "01101000110001" "11110100110100" "00000111000101" "10010110110001" "00110101100100" "11001111101101" "11011010001000" "10100010010011" "10011001011100" "10011001101101" "10101000011111" "00001011001100" "11100000110010" "00101010111001" "01001100001101" "11100111110100" "11011011100110" "00010011001001" "10011110110101" "00011100010000" "01100000001000" "00011011100000" "11011011111101" "10101000001000" "00111110000110" "11110101111101" "11100001000001" "01000110001010" "01001000010110" "00001110110001" "11110001011110" "01000000110011" "00011101001111" "00101111110100" "00110011110101" "11101001010110" "00100011110101" "01100110110111" "11010000110010" "11111110001110" "11010100010100" "11011110100001" "10110010000011" "00111000110010" "00000110100000" "10101100000100" "10100101010100" "01001100010101" "00101000000111" "00010010110110" "10110110111000" "00100011010001" "11100000100011" "11110110110111" "11110010010000" "01001111001101" "00110110001100" "11101000001000" "11111100011000" "10111001011001" "10101110110000" "00100110001010" "11001000001001" "00011001000010" "10110111000010" "00111111110000" "00001000011100" "11010001011000" "10100010001000" "10101110110110" "00101100111000" "11000111101000" "11010100100100" "00111001010111" "10100001010011" "11100101001011" "10011000001111" "01010000111010" "10011010010100" "01011010010100" "01100001100010" "11101101011000" "00010110011111" "10100010101001" "10011010111001" "00100010011100" "00000110111110" }
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
set ID 390
set hasByteEnable 0
set MemName infer_layer_6_weights_V_29
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00101110000000" "00000000011011" "11101001100110" "11000110111000" "11111110011110" "01011001001011" "00010010001100" "10011110001010" "00000111100011" "10100101100000" "01010011001000" "01010111110011" "11000001110100" "01001010101010" "01001110110011" "00010001110011" "11011010110000" "01010001001011" "00000011010100" "00101111011011" "01110101111101" "11011110101001" "00100101101100" "10010000011101" "11101111111011" "10101000110101" "10111000101011" "01001101111001" "00000010111000" "11011110010001" "10011110100001" "01011101110010" "11111100101001" "10011100100110" "11101110110111" "11110111101100" "00101100001000" "01000010010011" "10110110000100" "01000010000010" "00001001000010" "11101001100101" "00110100000101" "10010111100111" "11110111100000" "11101101111111" "10110101000010" "11000010110110" "00110110010110" "10011010101101" "10011011010010" "00100101010000" "11111100010010" "00010011010100" "01001001011011" "10110000001101" "10001001111101" "11100101111110" "00001100100111" "00110110001101" "11101001110000" "10011000111000" "11111000101110" "01011000010011" "00110110001010" "10111110011111" "00000101000011" "00000111011110" "11010010000100" "11111011011100" "01011010100111" "00000100110011" "10101010101000" "10111100110001" "00001010110011" "01000100001001" "11100101001111" "10110010110011" "00101001101111" "11011010010001" "11010011010110" "00010000111111" "10101011111011" "10111001100011" "11101000010001" "01010011001111" "00000001001000" "11101111000000" "10011000001011" "11000110001111" "11101100101011" "10111000000010" "00000100010110" "11010000011101" "01011010110101" "01000101110000" "10100111011010" "11000010110111" "00010101100001" "00011100100000" "10111010101101" "00010000111101" "11111110100010" "11011000010001" "11111100101011" "00000100110110" "10111001010011" "01011010011111" "00110100101011" "11100110000001" "01011011110101" "10100011011101" "00000110110101" "00111001010100" "11101010000100" "11001111110111" "01100010100110" "11111000110100" "01001001101100" "11100101101101" "01000011010100" "00101100001001" "00000010101111" "00001110001100" "10101000111010" "11100110001011" "11001100011101" "10100000011100" "11110100011101" "10111001010100" "11011100101011" "10100010011111" "00010001001000" "11110110011101" "01010001011011" "11001111100100" "11100100110010" "01001000111101" "01000011111010" "01010010010010" "11011001101100" "00000111010011" "01011100101000" "00110100101000" "11110111010101" "00111001110100" "01011001001010" "11110101011000" "10111010111111" "00010010001011" "00110100000111" "10100111111100" "01001100010001" "01100110110100" "11100111001000" "10011001001110" "00101000001010" "00000001011100" "10100000100001" "11010111010101" "11101101100010" "01100101010110" "00101000111110" "10100101100001" "00010010011011" "11011010111000" "11010011010101" "11000010101100" "00010011110111" "01001110110000" "00110011011010" "11110001111110" "01010001110111" "10110101010011" "00110010110000" "10101001100001" "00001000101001" "11010100100111" "11011101011000" "00001111000110" "00011010001011" "11010011111100" "11111100010100" "00000011100100" "10110000001101" "10010101001010" "11011110000001" "11001100111100" "10101010000000" "10101010000111" "00000100101000" "00001110001001" "00100101001111" "11010001111000" "11101100010010" "00010100100001" "11010010111000" "11110010011100" "01000101101111" "10100011110010" "00001001110100" "10011000011110" "01000011000011" "01000111110000" "10011010111100" "10100100101100" "11010100000011" "11001000110110" "00100110100001" "01001010111111" "11101010001000" "11010000101011" "11011110101001" "10010111111000" "11110010011111" "01100110000111" "10110011001100" "11110011111011" "11010101101101" "00100101110110" "01100110101111" "11000101111100" "11011001101011" "00000100001111" "00001101011010" "10101001001011" "00000011110010" "11001001001010" "10110011010110" "10011101100100" "11001011011110" "00010000011100" "11100111011011" "11011100000001" "10111111000101" "10101000001010" "11001010110000" "10100010101001" "11000010010101" "11100001111000" "01001111000000" "00110011001111" "01001100001100" "01010111110111" "00110000010011" "11001010000100" "11011110010101" "11000001010001" "11110110100011" "11101010001100" "10111000110100" "11001001001001" "00111101110011" "01000111010101" "00000011001110" "11010011100110" "11101101010010" "01001001110110" "10010101011000" "11101000010101" "01100001000100" "11110100110111" "00011000110100" "01010100011011" "11111001110011" "01100010100011" "01001010000101" "01011001110001" "11000100101111" "00000110111001" "01001000010000" "11111000101001" "10111010011011" "11011010001010" "01001000001101" "01100000111101" "01101110010011" "00001001110101" "00000101111001" "01001000100001" "11001101111100" "01000011111100" "10100010000011" "11101100110011" "01000001000110" "11101001001110" "11001111011011" "11011000101001" }
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
set ID 391
set hasByteEnable 0
set MemName infer_layer_6_weights_V_30
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11111000101000" "11001001011000" "11001001010101" "10110000000001" "10101011001010" "00100000010011" "10010010110100" "11110111011100" "10011000100001" "10110011111100" "10110111010010" "10100110101110" "11111111000101" "10001110101001" "11011101001111" "00100011100001" "10010010000011" "10011000010110" "00100100001011" "10100011110100" "00100111001010" "00101110111110" "00001000000111" "10001111011111" "01001100110000" "11100100011101" "11011001000110" "10110111000101" "00010100000111" "10100111001101" "00110101100001" "01100111011000" "01000010100010" "00011100001111" "10101011101111" "00011001001010" "00100010100110" "10011111111010" "10100111101001" "01100011111101" "01011111011010" "10111011100001" "11011010010010" "01001010100000" "00101111001000" "00010000001010" "01000100000001" "11000010111001" "10101101000011" "00001100011110" "11010011001111" "10101100000010" "00111000011101" "00100001001001" "00011100111100" "00100101100011" "01000111101010" "10111111101100" "11010101100010" "00000111100010" "00101101110100" "11001111100011" "11101111100000" "01001011100100" "11010011001100" "00110101110010" "10111010001001" "11010010011111" "10111001010010" "00011001011100" "10110101011110" "10100100100010" "00000001010011" "11110010100110" "00111111011011" "00110001000110" "00100011100011" "00101100010100" "11100010001011" "11110010011101" "11000101011111" "11000101011000" "00010100110010" "10011110110111" "01010111011001" "11100110011101" "11101111000000" "00101101001001" "00110110001000" "10101101010111" "11001010001001" "00010000101001" "00000100100101" "00000000001100" "10100011111001" "11011101000010" "10110110111000" "01010011110010" "00100011100110" "00101110001010" "10111100101101" "10101110111100" "01000010111111" "01010001000011" "11001101100011" "01011100111100" "00011111110111" "11110100011001" "00001111110100" "10010101111101" "01011000011101" "00001011001111" "10111100100001" "11001101000010" "00011010001011" "10101010000010" "10011101101100" "11001001111000" "10101001010101" "00001101110010" "11100010110010" "01000001110001" "11001001011011" "11000011110000" "01000001001110" "11001001110110" "01010010111011" "11011011100011" "11011000101101" "11100011111001" "00101001100010" "00100010000100" "10111101111101" "01010101011010" "00001010001011" "00001010100110" "11111000100010" "10101001100111" "11001100000010" "11101111111010" "10101100000101" "11000111000111" "10101100011111" "10110000101100" "00110000001110" "10101101001111" "11011110111001" "11111101001001" "10011001111110" "11101110110011" "01000010100111" "01000010011001" "10101010100010" "01000100101101" "11100111010111" "01100110000100" "00001000000011" "10100001011100" "00111011111101" "10101000100110" "10001000111101" "00110100110101" "10111001101100" "11101110010000" "10111001110010" "10111000101110" "00110100111101" "00011100011100" "01100000100101" "00111100001000" "00010100110011" "11001101101010" "00010000000101" "10110100110011" "11011101100101" "01001101010000" "00000010001000" "00010100110010" "01011111011010" "01100001101011" "10011110000001" "10100111000111" "10001110000111" "10011100111000" "11111001000110" "01000010110111" "00110100011101" "01000110001000" "10111111001110" "11111011001111" "00010100010010" "10111010100000" "10100000100010" "00101111101000" "10001011111010" "10100100000111" "01010110010101" "00111111101011" "11010101110110" "01010000010110" "11101110010011" "00110000000000" "10111010010001" "01100001110001" "01001001010110" "11111110001001" "10100100000011" "11001100010001" "01000111111010" "11011101100101" "01000110101011" "00110001101111" "10111010010110" "10100000111001" "10110100011010" "00010110111011" "01000001001111" "01000001000000" "00000001100111" "10111110100111" "10110100111110" "01001110100100" "00111101001110" "00111100111111" "11100100110100" "00001000000011" "11101110011001" "11011000111100" "11000100010000" "11101110010111" "00111110000111" "11001111011110" "00011000001101" "00001001000000" "11101110000000" "01010011001111" "10001111101011" "10100010110010" "10111100010010" "11000010111111" "10111001010110" "01001011001010" "11011110011000" "11000110100101" "00100101101111" "11110011111110" "10111110110000" "11111010110011" "10001110010101" "01011010011100" "11000111000100" "11101010111011" "11101110100101" "00000100100000" "00010011001100" "11001100110100" "10010101000010" "00111100000011" "11010011001100" "01001110101101" "10111001100001" "01011110001001" "11001011000110" "11000000010110" "01100100001011" "10110111000000" "11101000010001" "10100011000000" "10110001100000" "10001100000001" "11011011011011" "11011100111100" "00010000001111" "10110011100010" "01010101000001" "00111100001111" "00000110011111" "11110100010110" "01010001011000" "00110000100110" "01001100110100" "00110111111011" "11010001100000" "01000000001011" "10011100110100" "00010001100110" "00101110110011" "10011100101100" }
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
set ID 392
set hasByteEnable 0
set MemName infer_layer_6_weights_V_31
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 288
set AddrWd 9
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11111100010001" "11010110101110" "01000001110111" "10101000101011" "00000110110101" "11101101101110" "00000110111101" "11010010101010" "10101110111001" "01001000110001" "00010001001001" "01000010001100" "00101000111100" "10011111011111" "11110010100111" "00011101100001" "00010001010011" "10101001010011" "00110011011000" "00101101001011" "11111101011010" "10111000011001" "01000110011010" "11001001110110" "00101110101001" "10011010010001" "11101001011010" "11101001100011" "11011000111101" "10101110101100" "00101001010111" "00000100001010" "10000011010111" "11011100000101" "11100001001000" "00000101100100" "10011011001001" "10111000001111" "10110110111010" "11010000110000" "11000111101001" "00001000000001" "00010111010001" "11110100000100" "11000000111100" "10011010000101" "10110101011100" "11011111000111" "00100100100100" "11111110000101" "11001101101111" "00100110000001" "01000000000010" "11100011011010" "11001000110110" "00111001110000" "11011010011010" "11100110111110" "11101111000110" "10011110101110" "00001011110010" "00000100100001" "00110010001001" "00000011101100" "11101110111110" "10011100111100" "00011010100100" "00101111011010" "10111100111100" "10110100010110" "11001101000001" "11011010100011" "11000100001001" "00110001111000" "11010011000011" "01011111110000" "11011000110001" "11000001001111" "10110000100001" "00001110111001" "11111000100010" "10111110010001" "00111000100101" "01011011111001" "00111000001010" "10110110001000" "00011101011010" "11110101100101" "00011100111100" "00000111011111" "10111100011110" "11011001011011" "11001110001100" "11101111000010" "11001100011101" "11111100000111" "00110101001010" "00100110111011" "11100100011011" "00010100101001" "11000001110000" "01011001010110" "11110101001101" "11001011100111" "01001000100100" "00001110100111" "01011010010100" "11101101101111" "11110100101011" "00110101001001" "11001000010111" "10000110011000" "11011001101011" "11100101001001" "00100001100011" "11110001000011" "00011001001011" "11001000111100" "10110101110111" "00101101000110" "10100100110101" "11101001100111" "00101000000110" "00011001000000" "00101111000011" "10111010010100" "00011001100011" "01010101100000" "00111111110010" "01001111111000" "00010111000001" "01100011000100" "10111100011000" "11001101010010" "01011100101010" "11001000001011" "01011100011111" "11010100010110" "00010110101001" "00101001110011" "00011100110011" "10111101110001" "00111001101111" "10110010111000" "00101000111010" "10011110011100" "11110110010001" "00111111010100" "11111011000101" "00001001000010" "00111001100010" "01011101110100" "11010011011001" "11010000110011" "00010010000010" "01011110000110" "10110010101010" "01000111000110" "11110100011101" "00101100010110" "00001110101100" "11011101000000" "11000101001010" "11001110000111" "10110110111011" "00101101000011" "10111000100100" "10110101100111" "11110010010011" "11011110101011" "00001011011010" "10011010011001" "10110010010011" "10111010110011" "10100100000111" "11110010101111" "01000011110011" "11110000111010" "00001100010111" "01100110011111" "11000101011001" "10011110011000" "11111000101101" "10010100111010" "11001111010000" "00100000100101" "10001010101011" "11000101000110" "00000010010011" "11011111111110" "11110011001111" "01011001001100" "11100000001101" "11110000101110" "11110011111001" "00110000010000" "11111110010100" "11111010101101" "00010000100011" "01001011001101" "00110001111111" "00011011000110" "01000101000100" "01000001000000" "01101100100101" "00010110001111" "01000010011100" "11111011011100" "00001001110101" "00010111110001" "10011101110101" "10111001011111" "10110111110001" "10100011001101" "11101001101010" "00110010000110" "00000100011010" "01000001111100" "00010011000101" "10101000101111" "01000000010100" "00001010011100" "00011110111111" "10100111010100" "00011001111111" "11001011111111" "10110111011110" "11000100010111" "10111000001101" "00100011100111" "11101111111100" "10011111011101" "00100110110111" "11000100000111" "11000111111000" "11111010101010" "11110001011011" "00001110001011" "11011101000111" "11010100001110" "10000100110100" "11010101111101" "11011100100101" "10101010110010" "00011011000101" "10110010100100" "01110000011110" "11001000111000" "00110010100111" "11100111010010" "00100111110001" "00101010100110" "00101111010011" "10111111001111" "00110111010110" "01001001110001" "00001100000110" "01011011011001" "00110100000111" "11110010110101" "01100110011110" "11110010100000" "11010010111011" "00010100100100" "10100001010100" "11000100000011" "00110100011001" "00110101101000" "10111010010111" "11010100000001" "00011000110010" "00011000100110" "10101011100110" "10100001001111" "00000000100110" "00111011010110" "11000001011100" "11100010000001" "01100101010011" "10100110010010" "11111100111110" "11011101001111" "00011010011111" "11111010100110" "10111000000110" "00010111110010" "01010101111000" "01000001000110" }
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
set ID 393
set hasByteEnable 0
set MemName infer_layer_7_out_V
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 21
set AddrRange 800
set AddrWd 10
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
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
    port_num 2 \
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


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
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
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 394
set hasByteEnable 0
set MemName infer_layer_9_bias_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 64
set AddrWd 6
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "01010001111000" "11111010111000" "11011000001010" "11111100010110" "11110010101010" "11111001110110" "11010000111011" "11110111101100" "11011001010100" "11110101001101" "11110100001111" "11111000111000" "11110111010010" "11010010100101" "01010110010000" "11110010010011" "11011110001010" "11110111001110" "11110001111101" "11111001000000" "00000000000000" "11010010111000" "11110110000100" "11010011010110" "01100000101011" "01011010001011" "11110100100010" "11110011011011" "11110111100001" "11110101010000" "11111010011111" "00111110101001" "11100100101000" "11110100110101" "11110011010111" "11011010011100" "11101101100110" "11010100010110" "01000000000111" "11111000001001" "00001000010110" "11111111010011" "11110001110100" "11110011100110" "11110000111011" "11111011100000" "00111001011001" "11110110001001" "11111111000111" "00000000000000" "01001001000000" "11011101101000" "11111011100011" "11111010111000" "00111000101101" "11110010101001" "00000000000000" "01000100011011" "00010010000100" "11010111100110" "11111001000010" "11100110111001" "11110000100100" "11100110010110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 395
set hasByteEnable 0
set MemName infer_layer_9_weights_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 17
set AddrRange 51200
set AddrWd 16
set impl_style auto
set TrueReset 0
set IsROM 1
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
set ID 396
set hasByteEnable 0
set MemName infer_layer_9_out_V
set CoreName ap_simcore_mem
set PortList { 2 1 }
set DataWd 20
set AddrRange 64
set AddrWd 6
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
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
    port_num 2 \
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


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
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
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 397
set hasByteEnable 0
set MemName infer_layer_10_bias_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11110011000010" "00001101011100" "01001011000100" "11011110000011" "00111001110101" "11111101001010" "01010000100011" "11110110110010" "00000000000000" "00111010010011" "11110001101111" "00111011100110" "11101001011011" "11100000010101" "01101010001010" "11111101011010" "11100000111000" "00010111001111" "00000000000000" "11110010100001" "11111100010011" "11111011000001" "00000000000000" "11110010101001" "00110011001011" "00000110000000" "01000100011010" "11111101000001" "11110100000100" "00000000000000" "11010111100111" "11110100100101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 398
set hasByteEnable 0
set MemName infer_layer_10_weights_V_0
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0010110101101111" "0010011111100111" "0001111010010111" "1101001001110000" "0101100010011001" "1100001010100101" "0000011110110110" "1111101000000000" "0000110101101000" "0100001000101000" "1111011110101010" "1111001001001101" "1110000111010100" "1100000010011001" "0101001110110100" "1110101110011000" "1110100101001011" "1111100111101000" "0001011000100111" "0010000001000000" "1100001011101011" "1100000001100010" "1111101111111110" "0010111001010011" "0100001001011111" "1111011110110010" "1111101001110010" "0101001101001110" "1111000110110001" "1111111110101000" "0011001011001011" "1100010101110110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 399
set hasByteEnable 0
set MemName infer_layer_10_weights_V_1
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1101110101110110" "0001101010000101" "1110100011111001" "0000101010111101" "1100101101011010" "1100111011101110" "1100001100101101" "0010010000101010" "0000001111111100" "0010111101100001" "0001001000011111" "0000111001101000" "0010010001000011" "1101000000111010" "0001000010111011" "1110110001000000" "1110001010001010" "0010101011001011" "0011011100011100" "0011101101111000" "0000110100101100" "0100000010110010" "1100101000101011" "0000000000100010" "0000011100010000" "0011010100100010" "0011101101110101" "0011111001011100" "0011100110100111" "1101011110110011" "0000000010001110" "0000111001011011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 400
set hasByteEnable 0
set MemName infer_layer_10_weights_V_2
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0101001010101111" "0010101111111111" "1011100001010100" "0101110100110110" "1010010111010011" "1101011100001110" "1100000001111011" "1111110001111111" "1100011011100000" "1110111111110011" "0011000100111000" "1101100111000111" "0110001001111011" "0011011110010011" "0001011101000010" "0111001000111100" "1111000011000110" "1101101111010011" "0010100001011011" "0011001001110101" "1100100010010110" "0010100111010101" "0010001001000111" "1110100001001111" "1110100010011101" "1110111010000100" "0001010111110100" "1100111101000001" "0011000100111011" "0011110010101011" "0100010100001111" "1111101001101010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 401
set hasByteEnable 0
set MemName infer_layer_10_weights_V_3
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "000011101110000" "100011011001111" "000110100100111" "011100001100001" "001111011011001" "001000100101111" "101100000010100" "010001000010010" "010010101010111" "101110101000110" "011010100011101" "011111000011101" "000000110111101" "011011111010100" "100110000111111" "100000001001010" "010000100100110" "011101011011111" "111000011111011" "110111100010110" "010111111011101" "101000000000010" "110011000111110" "000111000000100" "001111000001110" "000001010010100" "110001111010001" "101111000101001" "001100100010100" "000101010111110" "011000110110111" "001100010010011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 402
set hasByteEnable 0
set MemName infer_layer_10_weights_V_4
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "001000100000111" "110010110111100" "111000101011010" "110011000010000" "010100010101111" "011001000011101" "011110100110011" "110000100100100" "110110110111001" "110010100000001" "011111010001010" "001110011101010" "010110110110000" "010111011110110" "001011101101101" "100110100001111" "000110100010010" "001011100001110" "010001010001111" "101100011001010" "100100010001100" "111110010100001" "000001111010000" "011000011101111" "100111010110100" "001010101000001" "000111010001110" "000001111011001" "101011001010001" "110111010101001" "011100111001101" "101111001111000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 403
set hasByteEnable 0
set MemName infer_layer_10_weights_V_5
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1101011011111101" "0000110000011000" "0100000011101001" "1110110100111000" "0011000010010100" "1100001011011100" "0000101101000010" "1110110111011001" "0011110000100011" "0001010010111001" "1110010010110001" "0001101010011111" "0001101010011111" "1110001100010101" "0011100001100000" "1100110111001001" "1101110001101000" "1111101010101100" "0010101001110101" "1101110000000001" "0000001000100010" "0000010000100000" "1101110110111111" "0011011100100000" "0010110100101011" "1110001001110110" "0000010011100000" "0011011110101101" "1101000001000101" "0010110011000111" "0100000001001000" "1100110110110011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 404
set hasByteEnable 0
set MemName infer_layer_10_weights_V_6
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1111101111000101" "1100001110010001" "1011110000001111" "0100110001010011" "1011001011011101" "1101010100011100" "0000000000101010" "1011111000101010" "1100111100001111" "1101111110101100" "0000100111010110" "1110110001111100" "0101010011000010" "1111100111001101" "1011101011011111" "0001100011100011" "1100001101010001" "0001101011100001" "1101001011000100" "1101011011000100" "1111111100001110" "0011101000010111" "1110000111110101" "0010101111001110" "1010111001011100" "0101000000100000" "1011100011010010" "1111111100111010" "0011010001011110" "0001111011111011" "0101100001001010" "0000100110001100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 405
set hasByteEnable 0
set MemName infer_layer_10_weights_V_7
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "101111100010010" "111101110000001" "011000010010000" "000010111100001" "011100001001110" "111000011111110" "111111001100100" "001011001000101" "011101100101001" "010110101110010" "011100100101101" "100111111100111" "111110110111100" "110111111100110" "111100110111101" "110111011101111" "001100011000100" "111010001010100" "100111000000101" "011011100011001" "011011111110011" "001111110100000" "111110110001001" "100110010001001" "110101101010010" "111011101001101" "111010001101100" "011000010101101" "011001011101100" "011100100101111" "011100000001011" "111111010001101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 406
set hasByteEnable 0
set MemName infer_layer_10_weights_V_8
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0101100000000111" "1111011100111010" "0001111100111000" "1110100001100001" "1101000110110110" "1110001101001010" "0001100111001011" "1110001101001001" "1101100011000111" "1100100110000101" "1101110111111110" "1011010011001011" "0001000110010011" "0010101110110101" "0001101100101100" "0100001110101100" "1110101110100101" "1110101110110101" "0000110010101100" "1100000111101110" "1101101010000011" "0001111101111010" "1101000101110011" "1100110111000111" "1011111011011111" "0010001110001001" "1101000100001001" "1101001000001000" "0010110101100000" "1110000001001100" "1110111110111100" "1110001001110001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 407
set hasByteEnable 0
set MemName infer_layer_10_weights_V_9
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "110111100111100" "011001000110111" "000001100100010" "010010010000000" "000101000101101" "110100000101001" "011010001001110" "100001010011010" "110011001001101" "010011010100101" "101110101101111" "100100100101011" "000000101101110" "111010101101000" "000010001000000" "000101111100100" "001000111011100" "001001010000110" "111010011101001" "110011100100100" "000010110000111" "110100011000101" "101110100100010" "010010100110110" "100101101100010" "011100001010011" "010110100101110" "101101010111110" "110010110110000" "100000111100110" "110111011110000" "111000110111010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 408
set hasByteEnable 0
set MemName infer_layer_10_weights_V_10
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "111101001011000" "011011111110101" "011110010110111" "111000001111000" "111101011101000" "111111100100100" "111110100000111" "111001100110101" "111010111101001" "010001100001000" "011011101011110" "010001111010011" "010100110100111" "110101000110101" "011111000011010" "101100011101011" "111000011000110" "000100111101011" "101000010100111" "110010000101100" "000111100001000" "010011111011001" "111000001100100" "011111110000010" "101110111011001" "001100111101101" "000001001101001" "111000100101001" "110101100100001" "111111000011010" "001100111110111" "100111100010000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 409
set hasByteEnable 0
set MemName infer_layer_10_weights_V_11
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0001101000011000" "1101011110001101" "1111011111011111" "0100000101101001" "1100010000000000" "1110011000010111" "0100100100101010" "0001101111101101" "1101010100011100" "1111111010001000" "0001001100000000" "0011011101100011" "1110010100001000" "1111111101111100" "0001011010011101" "0011010111011110" "0001010111111101" "1111001111000110" "1111100010111110" "1101001101101101" "1100000011010100" "1101001101010111" "1101111010111111" "1100110010100010" "1100111110001110" "0011101010010010" "0010000001100110" "1111010010111001" "1100000001101001" "1101000110000110" "0010111101100010" "1101011011101101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 410
set hasByteEnable 0
set MemName infer_layer_10_weights_V_12
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "101001101101101" "011011011111101" "100001111001100" "000011001111101" "000001001001000" "001111000011011" "001001011011101" "100110001100111" "101000111010010" "110100000100100" "001000101110111" "011111100100110" "001000110010110" "010110101100101" "100011011001101" "101011011111001" "001001000010111" "010010100001100" "110000001110101" "011010011000010" "101101000100011" "000110101111001" "010010100000010" "010011111101010" "100010100010011" "010100101010100" "011110101110011" "010010100101101" "101001101110011" "010011011100010" "100011111000100" "111111010000110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 411
set hasByteEnable 0
set MemName infer_layer_10_weights_V_13
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0100110000010000" "0001101111011000" "1100110101110010" "1111110100111111" "0001010111101100" "1100001101111000" "1100101001110110" "1100110110111110" "0010101000110001" "1010111011100000" "0100101110100111" "1110110000100011" "0000101100011111" "0010110011000010" "1100110001110001" "0011010000000110" "1111100110101000" "0010111011101111" "0000110000010000" "1111100110001010" "0010111000100000" "0000011110011101" "0000100011111001" "1011111000001000" "0000011001100111" "0001111010110101" "1011001101000111" "1010110110011000" "0011000010011000" "0001011111001001" "0010000010101110" "1101001010010010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 412
set hasByteEnable 0
set MemName infer_layer_10_weights_V_14
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0001001101001000" "1100110000000000" "0000101101011101" "0001101111101011" "0010000001011001" "1100011111111001" "0011011110111011" "1100100011011010" "0001011010111001" "0011110010000010" "0001010000110100" "0010010111000001" "0011110100101110" "0011001101010001" "0100010111100100" "0010010000011111" "0010111011100011" "0010100111010011" "0010010100000010" "1100100110101000" "1101111101010000" "1100110110000000" "1101110101111110" "0000110001001101" "1111101010011110" "1101011110110010" "0010010101011101" "1111001000101001" "1101111111101111" "1110001000101101" "0010011000000101" "0001010111000001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 413
set hasByteEnable 0
set MemName infer_layer_10_weights_V_15
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1101111100111011" "0001110100110011" "1100110001011110" "1111011110010001" "0000111010111000" "0001100000110010" "1101010101011000" "0000011110000010" "1111000100101011" "1110011001010010" "1110010111001100" "0100000111111100" "1111011000100100" "1111100011111000" "0001100000010000" "1101001100101001" "1101011011111001" "0010101011010100" "0010101110111000" "1101010100001101" "0010000100011100" "0001000101011110" "1111011011101011" "1100101001010001" "0010010000011001" "0010000011010011" "1100011110010111" "0000010010111101" "1111100001100001" "1111110011000001" "0001001111000111" "0010010100011100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 414
set hasByteEnable 0
set MemName infer_layer_10_weights_V_16
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0010100011101010" "0000001000001110" "1111110101101001" "0011100010010010" "1101000110000110" "1110110010110011" "1101011101010000" "1101110000001010" "0000101110010000" "1111100101100001" "1110110000011010" "1111001110001001" "0011101110111000" "1111101111000001" "1100110101111001" "0100000001110100" "1110111101010001" "0000001001100110" "1101111110110001" "0001101001011111" "1110100110110110" "1100010011110101" "1100001000001011" "1111001101101110" "1101110001001000" "0010110100110001" "1110100001101101" "0100010001000000" "1110101001000110" "0000111011000110" "1111111011101100" "1100100100111101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 415
set hasByteEnable 0
set MemName infer_layer_10_weights_V_17
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "110001111011010" "001011110010000" "011100100001010" "010101111101000" "100000111011010" "010111000100010" "100010010100001" "110100101111010" "111000100010100" "001011001100101" "111000111011100" "001101010011010" "101001101001011" "100101110011100" "110010110110000" "010001010011100" "110001011110100" "001111110100110" "100010101001101" "000101000110000" "111110010100010" "101111000011101" "100100101110110" "110000010001000" "100111111011010" "000101011110000" "101101000010001" "011001111001111" "011110010100101" "010100100011101" "001001110001000" "000101101010011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 416
set hasByteEnable 0
set MemName infer_layer_10_weights_V_18
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "010110101010011" "010011101000110" "011101000011000" "010011011100100" "010110100101111" "110001011001000" "000100000111111" "011100101110101" "101010001001000" "001000011000101" "011010101101000" "001110111000110" "011100110000001" "011001011100000" "111010010001000" "011010011011110" "111011011010010" "101101011101010" "100010100111111" "100001000101000" "001011101000110" "001101001011110" "001110010111000" "101110101010110" "010000100101011" "011001101100011" "001001110100110" "101111110011000" "000001010000010" "111001110110011" "101011001111110" "010110100001111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 417
set hasByteEnable 0
set MemName infer_layer_10_weights_V_19
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "010001000010101" "011111000101110" "110110101110110" "110010101101001" "011100101100011" "111110111001110" "100001000010100" "111011000111010" "101010010000010" "010001100010111" "011100110110000" "111111110111010" "110111001100101" "100000010101100" "110100101000000" "000000100101010" "100000100001100" "001101110000011" "110010100001001" "101011110001100" "011010110010101" "010100001101101" "110111011101111" "101011000000010" "000101000100000" "110010000000001" "011000111111110" "110110100100010" "110010001000100" "000011011000010" "011100010101111" "101101100100011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 418
set hasByteEnable 0
set MemName infer_layer_10_weights_V_20
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "011000100110001" "000100111111000" "110010110111000" "100110000001110" "001111011010001" "001100000010101" "010011100000110" "001000110100010" "011111001110100" "110010011101001" "000010100000001" "111111011101010" "010000011000111" "100010101000111" "100100110101110" "111000101110101" "100100010001001" "111011111010101" "100100001010101" "001100100010110" "000001001000110" "101110111010010" "100000110110001" "010011000011110" "000010101101010" "011100000101010" "101101010110001" "011001110110110" "001110011110100" "111001000101110" "111011001101010" "100001101010000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 419
set hasByteEnable 0
set MemName infer_layer_10_weights_V_21
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0100011001000100" "0010000111001100" "1011001111000101" "0101111000010001" "1111000111011101" "0011011101100111" "1100101010101100" "0011000101101000" "0011010100011111" "1101011100010100" "0001110101001110" "1101100111111110" "0110010010101101" "1101101110110110" "1011101101000100" "0100110100101000" "1101000010011010" "1100101101111111" "1100111100110001" "1100000011101001" "0011001100011110" "1100010111100001" "1100010110010011" "0010011110111111" "1101110110011111" "0000110100001101" "1010100000001000" "1100010101011101" "1110011100101111" "1110111100010110" "0101101010000101" "1111010101100110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 420
set hasByteEnable 0
set MemName infer_layer_10_weights_V_22
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0100010110000101" "0100001101011001" "0011010010100011" "0100100010110010" "0001101100011010" "1110110101001010" "0010111111101111" "1111110000101100" "1101000010101100" "1100101110011001" "1101000111010011" "1101111101011110" "0010110010011011" "0000010011111000" "0000010100111011" "0011001101000101" "1111101100000011" "1111111101010100" "0000000011101000" "0000000110000100" "1101001101110101" "0000100011110110" "1101110111011110" "0001000000100101" "0001100111110100" "1101111010110000" "1111010000101010" "0011011001100110" "1110000101011000" "1110000010111011" "0001000000010000" "0010000000010100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 421
set hasByteEnable 0
set MemName infer_layer_10_weights_V_23
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0110110110010011" "0010110010011011" "0010000000111111" "0100100010001001" "1111111101100101" "0000100011101001" "1110010011010001" "0010100111101011" "1101100011011110" "1111010010111111" "0010110001110110" "1010001001110001" "0010111101010011" "0010100111000110" "1100100000100100" "0101001010011010" "0011010011001111" "0011010001001010" "1100000111000111" "0010010100010011" "1100111111011101" "1110101011010111" "0010000000100111" "0000001111000100" "1001101001011110" "0010010000111101" "1100111101110011" "1101011100001101" "0001101010111001" "0010101000111111" "0100001001111010" "0010101011000011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 422
set hasByteEnable 0
set MemName infer_layer_10_weights_V_24
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0010011011111011" "0000101000101000" "1110110000111110" "0000000001110011" "1111111110100110" "1111001001000100" "0010001011100111" "1100100001001100" "1100001111100110" "0010001111100110" "0000000111000100" "0001000000111010" "1110010001110101" "1100011011111111" "0001101111101100" "0011011010011111" "1100011010111011" "0001000011000011" "1100000001101010" "0001100101000000" "0000011110011101" "0011100001110100" "1110100000010000" "1100110100111010" "0011100010100001" "0100011010001110" "0010010010101010" "0100010001111101" "1110001111110010" "0010001010100000" "1111011000000111" "1101101110111100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 423
set hasByteEnable 0
set MemName infer_layer_10_weights_V_25
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0000101110010001" "0100001000111011" "1111100001010100" "1110101000111100" "1111011011100001" "1111011001111101" "0100110111010001" "1111000110000010" "1101001110011111" "1111010100110000" "0011000110111111" "0100100001101010" "0001010010100000" "1100111011101001" "0011111010101100" "1111100010000100" "1100101101110111" "1111101001100101" "1100001100110101" "0000010111011000" "1101000010000101" "0010001111011101" "0011100000001111" "1111011100000101" "0011011011010001" "1111011001111001" "0100100010010101" "0011001111001011" "1110101111110100" "0000111011111011" "1101110100100001" "1110111000111110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 424
set hasByteEnable 0
set MemName infer_layer_10_weights_V_26
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "110100111010010" "000000110101010" "110000110000100" "101011001000010" "100111010101000" "010110110010111" "011001000001011" "101001101111010" "000001111000110" "001110101101110" "101011101111100" "010011110110001" "000101111110111" "101111001100101" "101101011010011" "010101001111111" "001011111110010" "111000010111001" "001100011011110" "000011110111000" "110110000000010" "110001100111000" "001011111110011" "111010010011101" "110111110110101" "001100101100100" "111101011101100" "101111001111000" "010000010000011" "101111001110101" "001011010000011" "001101100011010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 425
set hasByteEnable 0
set MemName infer_layer_10_weights_V_27
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "111011000010010" "111111100110011" "111000001100010" "000111011010000" "100010000101011" "011010111111111" "010100001111110" "011101101101101" "101101010011100" "000011011000000" "100011100000000" "011011000010100" "111110100000110" "100111111100100" "101010100110101" "000100001110010" "011100000111110" "111100100000111" "011011100011111" "001010110101000" "000100100001110" "101001000110010" "001111010101001" "011010001001011" "101011011000101" "011000010111110" "010011011110110" "001010100111010" "111001000110001" "100011100011010" "010010000011111" "010101100100011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 426
set hasByteEnable 0
set MemName infer_layer_10_weights_V_28
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "001101101110000" "101001100101000" "010011010011111" "100111010000001" "111000010100100" "111110001011010" "100111100110110" "011000011110000" "110010000001000" "001100000111110" "001000010110001" "001000101000110" "011011101110101" "000001001111111" "001001011101000" "111000000001100" "000000100010101" "000110010101110" "101001011011100" "111000100001011" "110101101100010" "100000110000110" "110100000011000" "000010111000101" "011100001101111" "010101101100100" "011111000011001" "100101001101111" "111000101101010" "111101101011001" "100110010000010" "111101001100111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 427
set hasByteEnable 0
set MemName infer_layer_10_weights_V_29
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "100110111011110" "110011111001111" "001000011101000" "011011010100010" "001101100011011" "001100010010101" "111011011111011" "010011111000000" "001000110000010" "010000110111000" "001110011000101" "011010001101111" "110011000001011" "111000100111111" "100101101111001" "100010000110011" "100010000001100" "001100011001110" "111010001110110" "000111000011100" "011110010011110" "100010010001100" "000110010111000" "001010100001100" "010100100011011" "110010100010010" "000110111111110" "010110111001000" "110010010010110" "101100000110001" "010100010101011" "001011011101010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 428
set hasByteEnable 0
set MemName infer_layer_10_weights_V_30
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "001101101010011" "100100110111110" "101011101000001" "110111110100100" "000100110111110" "101001000101110" "100001111001111" "100000011000011" "101001101110011" "011000000010011" "000111011001111" "110100001001111" "101110100010101" "101001000011100" "001001010010100" "101001111110011" "001110111001001" "011011110010111" "010100011001010" "110010101101001" "000000010100100" "111000111110111" "100101111110001" "001110011111001" "110011101001110" "010101011010110" "010000101001100" "100101111011011" "110110011100010" "100000001110011" "010111101111011" "111111001100000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 429
set hasByteEnable 0
set MemName infer_layer_10_weights_V_31
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 17
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11111110010011101" "11101000100011100" "11111001010001010" "11111111110111011" "11100110010100001" "00010111000111111" "11010001010101111" "00010011100111010" "11111100001010010" "00110010100101111" "01000010000110101" "00100111101100110" "11011110011100110" "00010001111101000" "00001011110000000" "11111010011001110" "11111010110001000" "00000001110101001" "11101010111011110" "11100011111011010" "00000000001101101" "00011000110000100" "00010001100110111" "11110010111001001" "00010011000110001" "00000110100111001" "00001101000000100" "11011101100110100" "00011110001101100" "11101011110010001" "11100011101110110" "00001101110011011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 430
set hasByteEnable 0
set MemName infer_layer_10_weights_V_32
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0001100001011011" "1101100111100110" "1111100111111010" "0100011000000000" "0100011010101010" "1101110000000000" "0100001101011010" "1100000110001101" "0010010100110100" "1110011001111100" "1100111001010111" "1111110010100010" "1110001011011101" "1110000100101101" "1111001100111101" "1111001011011111" "0001100011110000" "0001000001001011" "1111111100010010" "1110100001100010" "0000111000000010" "0011000101000101" "0000101011010010" "1111100101000000" "1111011101001110" "0011110111101100" "0000010110101111" "0100111111000110" "1111111010110000" "0000010011100001" "0011110100001000" "0000011100001111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 431
set hasByteEnable 0
set MemName infer_layer_10_weights_V_33
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "011100110010111" "010011111101101" "011101001101110" "010101100000010" "011100000011010" "010000011100010" "111010111111110" "011110110000010" "111100110101010" "011100111100101" "001011010101011" "011000111011010" "000010110111100" "110010000011101" "101111010111001" "010101101110001" "010111001110010" "000101110100111" "011101111011110" "000100000111111" "010000111001010" "101101010111110" "110100010001110" "100111110001010" "101010101100101" "011100100010011" "010111010011000" "101100101101000" "110000101111111" "000011110011111" "011000111111000" "110001110111011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 432
set hasByteEnable 0
set MemName infer_layer_10_weights_V_34
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "001000011001101" "000101010110000" "101000010111010" "111101001101000" "001110011111011" "111100000110000" "111100110001101" "010001100110011" "011110010010001" "100110010101000" "010001111101000" "100110011101111" "101100001010101" "111001100011101" "000011110101100" "110011011001001" "111000100101010" "111111011111010" "011101111010011" "111100100000110" "110101100110010" "011001010100111" "100101110001110" "010011100011101" "111111010101100" "100100010100010" "111101001010001" "110100101101110" "001010010010111" "101001101110011" "001110000001000" "000100000110000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 433
set hasByteEnable 0
set MemName infer_layer_10_weights_V_35
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0010010110101001" "1100101100101110" "1111100001111011" "0011011000100010" "1111011110010101" "0001010110100110" "0100001001000110" "1111110110100011" "1110101100101000" "1100110100101101" "0100000111100011" "1011010001110001" "0011010111000001" "1101111100100011" "1101011001011000" "0011010101100000" "1011110001100000" "0011011110100001" "0001001000001010" "1100101100111000" "1110001100100111" "0001000001011001" "1101111111101110" "0000011011100111" "1110010111101111" "0100111110000010" "1101110111010101" "1101100110111111" "0001000001100000" "1100111110001110" "0011001100001101" "1110110101101101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 434
set hasByteEnable 0
set MemName infer_layer_10_weights_V_36
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "110111000110110" "011011111011010" "101011000000000" "110000110010000" "101000000001011" "110101011000100" "011101111011111" "111111100100101" "100101111110100" "111001001001100" "010010110111101" "000010000101010" "001001001011101" "111010101001000" "100101000111111" "110011110111011" "010000011011101" "111010000011110" "101000011010000" "001110010000010" "011100001010010" "010100110010100" "011110101001101" "110110001101011" "111001100000001" "000001001110100" "001101011011100" "110000011011010" "000100010101011" "100110001011011" "011000010101111" "001001010010110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 435
set hasByteEnable 0
set MemName infer_layer_10_weights_V_37
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0010011101011011" "1101101001100011" "0000111110000011" "0011010000011001" "0000100110000100" "0000011001000000" "1100100110001000" "0010101010101000" "1110100001110100" "1010011110010010" "0000001000100111" "1100010011001000" "0101110010000100" "1101010001110101" "1101101011010110" "0000001000001101" "1101011001101100" "0011100010101101" "0000000001011110" "1100011001101010" "0000010001111001" "1110010000100111" "1100111011111010" "0001100000100010" "1011010110001001" "0010101100010110" "1010101101010101" "1101011110000101" "1110000010010110" "1111010110110001" "0101001011011010" "1111100001001101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 436
set hasByteEnable 0
set MemName infer_layer_10_weights_V_38
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1111100101010101" "1101111101000001" "0101111111010101" "1101101111011111" "0100011000100000" "1110000111010111" "0100111000100001" "1110011111110000" "0001100101100010" "0100110010001111" "1110111000010011" "0010100110101101" "1011010010001110" "1110101000001110" "0001000001100111" "1100000100111011" "1110000011100010" "0000010001001100" "0001110011111100" "0001000001001110" "1100010011011001" "1110100111001011" "0001011010111000" "0000100100001000" "0100011101010011" "1100111100111001" "0000000000110101" "0101001001100010" "0000000010000110" "1110100110000001" "1110010011001100" "1101011011111010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 437
set hasByteEnable 0
set MemName infer_layer_10_weights_V_39
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "111010001000111" "000101101000100" "111011110100011" "010010010000011" "001010000111110" "100100101111000" "101111001011001" "011100111100001" "101110110110010" "001100010010010" "001010000000001" "111101011011101" "010001011001001" "110011111010011" "001010010010101" "010101111011111" "111101000111000" "101001101000011" "011000101010001" "110100001111000" "010111100100100" "010010100110110" "011000001010100" "111110101111110" "110011110110111" "111010111110100" "010001101010011" "001001001011111" "000110000110101" "110110100000100" "100011000111010" "001101010110010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 438
set hasByteEnable 0
set MemName infer_layer_10_weights_V_40
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0001001111101111" "0100101010011001" "0001000001011111" "0011011111100110" "0100000001111101" "0000100101011011" "0011111111001000" "0010101111000101" "1111101001011000" "1011101001110101" "1110010100011000" "1101100110111110" "1110100110110101" "1011110001110001" "0001001101000001" "1100101011111101" "0000011101000101" "1101010110101111" "0011011110011100" "0001001011011010" "0001011111000011" "1110101100010110" "1100000001001101" "1110001001100111" "0011000101010110" "1011011110010000" "0000110001001110" "1111111001110001" "1110110001010000" "1101110110100010" "0010100111001100" "0010011011110110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 439
set hasByteEnable 0
set MemName infer_layer_10_weights_V_41
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0011010000011011" "1111001101101010" "0010000111111011" "0010010110110011" "1101100000000010" "1100100101100110" "0100000010000101" "1110000011101100" "0010010011100101" "0001111101001011" "1111010111010010" "1111101011010010" "0000111011110001" "0001000001111000" "1111111000011111" "1101101100000011" "1111010000101100" "0011110111001100" "0010101001000111" "0001101110101000" "0010110101110110" "0000011111011111" "0010010001011011" "1110010011110000" "0000010011111101" "0011110101000111" "1110101011100011" "1111111110110100" "0011001110101100" "1100000101101000" "1110110100101110" "1110011001111101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 440
set hasByteEnable 0
set MemName infer_layer_10_weights_V_42
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "001110000100010" "110010110011011" "001001110111101" "101110110000101" "100011001110010" "100011000010010" "100101101000101" "111011001111000" "100010000110000" "110111010110101" "011111011001000" "001010100001111" "111010101101101" "101100100110101" "111111100000000" "100111100101110" "111111110101001" "111010011101110" "111101100100011" "010001000000111" "111010010011111" "010101000011010" "110001111110100" "000010110000111" "100100011110100" "011010011111101" "111001110010011" "110101111010110" "110011010000011" "001001000011001" "010110111110111" "111010111100110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 441
set hasByteEnable 0
set MemName infer_layer_10_weights_V_43
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "110011111100001" "011001100110000" "101001101000101" "011010101101100" "000110111101101" "101000000000100" "111001001111110" "001110101101011" "001000101101011" "110101011101111" "011010011110100" "100110000100000" "101010001100001" "001111101000100" "111001101101110" "100110100010000" "000001011100010" "110000100100110" "001100100011000" "001011111001101" "110001000000011" "000000110110010" "110101100111010" "111001101101110" "000111101010111" "101101110100000" "000010111011110" "011000101110000" "110100000110001" "100010010000101" "000110110110010" "011010100001101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 442
set hasByteEnable 0
set MemName infer_layer_10_weights_V_44
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "101101001101101" "111100010000110" "110101101101100" "000000101110010" "101010010001100" "111111000110001" "110100100111101" "001000000111111" "111100101101110" "100100000001010" "111001100011011" "110101111011011" "011010110110000" "010111111000100" "100111101011101" "000010100111101" "001100010111000" "110001001100001" "110110001011100" "111010000010110" "101110101011100" "011011100101100" "111011101101111" "011100010000100" "000100110001110" "111001101010000" "011001001011011" "001110101000011" "100011110111110" "011111111110010" "011000111110110" "111111100001000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 443
set hasByteEnable 0
set MemName infer_layer_10_weights_V_45
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "111010110111101" "001110110110101" "111010110111111" "010010000011000" "010000111001110" "010000101001100" "101110000011100" "101010111110001" "010111011111010" "000100011001110" "000000000000011" "011000111111001" "001001000000001" "110010101100001" "101101010111011" "100111010110110" "101111101101101" "110110100001111" "011010001001111" "001101000110001" "010010010010001" "001101000100001" "101101101110000" "101001110010100" "111000001011001" "000001110000001" "001110111101010" "011001011000111" "110101110001001" "000000100111000" "000011110111000" "010011010001010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 444
set hasByteEnable 0
set MemName infer_layer_10_weights_V_46
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1101010011011001" "0001000001111100" "0001000101000011" "1101111010010000" "0010000000000100" "1110000001110100" "1111110101100111" "0000100001101100" "0000001111001011" "0100010101110101" "0000110110110100" "0100100010010010" "1011110110000101" "0010111000000011" "1111110101000000" "0001000101010011" "0000100101100111" "0010111110100100" "0001101001110010" "0001100001100010" "0001010110111010" "1100010000000101" "1110000001100010" "0000001100101000" "0011100010110101" "1100001000010110" "0100111110011111" "0000000101101110" "0000100110100001" "1100010101000111" "1110101001101100" "0001100100011001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 445
set hasByteEnable 0
set MemName infer_layer_10_weights_V_47
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1011111101000101" "1110000100010001" "1100111011111101" "1101110011111011" "1101110110100011" "1101111010010000" "1101000100111101" "1101100110000111" "1111100111100011" "0000100011010011" "1100110110001011" "1100110110001001" "0000011101111000" "1101011001100110" "0000110011100011" "1101011100010011" "1110100110110110" "0001010011110010" "1110011011011010" "0010011111001010" "0000110010101001" "1100111111100000" "1111010011010111" "0000010010001000" "1100111010100010" "1100010100011100" "0011010110101111" "0001110000011000" "0000111000101111" "0010100111001000" "0010001011110010" "1110010101100111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 446
set hasByteEnable 0
set MemName infer_layer_10_weights_V_48
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "011101101001001" "111001000111111" "111011110101010" "110111101000000" "010000000011110" "001001111011000" "010101000100111" "101100111111000" "111001100111010" "010101111000100" "000001001100010" "011101000010000" "111001011111101" "011100011001011" "110011110010000" "101111001101101" "110110101110011" "110100111001110" "001010100000000" "011100001110111" "100110001000100" "111101101011100" "000110100111111" "111001010000101" "001110110001001" "110110110010001" "111111111011010" "101000101110101" "000001010100111" "010000100111001" "001011101011101" "010000010011110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 447
set hasByteEnable 0
set MemName infer_layer_10_weights_V_49
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "000000000110011" "110000000101011" "010110100111111" "000010100110001" "100010101101001" "010111110000001" "111011110000000" "011010100110110" "110011011111000" "000101110111101" "110110110000111" "100000101111101" "101101111100000" "111100010010100" "011001111101000" "010111111000011" "001101001001101" "111001000011100" "001111000001111" "100100110011011" "111111011111001" "000110101010001" "011010000000100" "011011001111010" "100000101010001" "110000011001111" "101010110001011" "111000011101011" "000110000101101" "000011000001010" "000010001010001" "110110111010111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 448
set hasByteEnable 0
set MemName infer_layer_10_weights_V_50
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0010011101101101" "1110100011010101" "0010100000011100" "1011010000101100" "0011111010001011" "1101100110101111" "0001101011010100" "0001001000010011" "1101001111001101" "0100101101110000" "0001100001011010" "0001110011110000" "1111111000010010" "1011111000100101" "0011001000100011" "1110101100100110" "0001000011110001" "1111110000111010" "1100010111101000" "0000010000011110" "0001111010100101" "1101110100100001" "1110111010010011" "1101000100110001" "0101100110100110" "1101001100010111" "0101100000100111" "0011010011001111" "1100100110010110" "1100001111111010" "1011110010100001" "0011010000111000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 449
set hasByteEnable 0
set MemName infer_layer_10_weights_V_51
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0001111111111011" "1110010001100011" "1010101111101110" "0001100111100110" "1111000010101000" "0011010001001100" "1101100110101000" "0011100100101100" "0000000000011110" "1100101111000010" "1111000001101011" "1100101111100010" "0101011010001111" "0001000011111011" "1110110011011101" "0110101000101010" "1100110001000000" "0010111111111101" "1110001011110100" "1111110011100001" "1101001010111000" "1110011110100101" "1111011111110111" "1101000100010111" "1011100001110110" "0010011011111100" "1110011110101000" "1101000111010110" "1110100001000100" "1100101000111010" "0000110001010010" "0010100101000110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 450
set hasByteEnable 0
set MemName infer_layer_10_weights_V_52
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "111111010101011" "000011110011111" "100101010110000" "101110100001000" "111101000001101" "100111101110011" "011010001101010" "011010100111110" "100001011101101" "001101111000100" "100001001011100" "111111001011010" "011101101100001" "011011010111101" "101101011000101" "101110000111010" "101000010110110" "101101001011000" "110001000101100" "001000110001011" "000111110100001" "000111011111010" "000101101010011" "000001001001010" "100010101000110" "011100111001110" "111110000100100" "001010111101001" "111111001110010" "111100101110011" "001011110110111" "000110011111100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 451
set hasByteEnable 0
set MemName infer_layer_10_weights_V_53
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "011101100100001" "010100101111001" "111110110000001" "010001111100101" "111010001111001" "110010111011101" "001101100001001" "001001101010100" "011010010010011" "111110000100011" "111000011000100" "011001111010001" "110001110110100" "110110101010000" "001110110101111" "101000111101101" "101100001100000" "111000100011100" "101010010100001" "010001101011010" "001100101010001" "001111001010100" "100001011110010" "001010100011101" "001100001101010" "001000010001111" "101001011010001" "111010101110000" "100001001011011" "111100100011110" "100111101100000" "010000110011001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 452
set hasByteEnable 0
set MemName infer_layer_10_weights_V_54
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 17
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11010111001000010" "00100101100010100" "00001101001111101" "11101110000000101" "00010000011101110" "11101011110100001" "01000011011111011" "00010000000111001" "00000100010011100" "00001110001011010" "11011011011101000" "11110011001001010" "11010111101110010" "00010000001110100" "00011110110111100" "11110011100001011" "11101111000000111" "11101110010001100" "00001001010010101" "11110011100110110" "00000011101010110" "00001111100100000" "00000011000000000" "11111101010000100" "00001000001100101" "11011000010100111" "00100000101001000" "00001101011100010" "11101001000011000" "00011110110011000" "11110011010011000" "00001010000010111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 453
set hasByteEnable 0
set MemName infer_layer_10_weights_V_55
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "101110100111000" "001001001100101" "001100101011101" "110100010010110" "000100010001001" "000011100110101" "101001000001100" "000111111001010" "101001110010101" "010100010110101" "101110100101011" "111101101100010" "110100000000000" "011110101100111" "001101111001100" "000110011001011" "110001111111110" "100110110101100" "011101001010010" "011101101001010" "110001011011110" "001101011111111" "011010011010100" "111111100001011" "001000111010100" "001100101101010" "001010100110110" "011101000010010" "001011100000110" "100101101110111" "001111011010101" "001010100111011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 454
set hasByteEnable 0
set MemName infer_layer_10_weights_V_56
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "010100111000110" "001111011001111" "010101101001001" "010000000101101" "100000000101001" "010010010111111" "100010000111110" "011110101111100" "110101100011101" "010001101111000" "110010001011000" "111101010000001" "111000111111111" "110101100000111" "101111111110010" "101000010001100" "100000110100110" "010110101000111" "111011111100101" "000111101000011" "101010101111100" "100001010101100" "011000010000001" "001000111111000" "000110110011101" "000110010111111" "101100001111110" "101011001000000" "011011000010011" "011110001010010" "100001001111001" "111100001100101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 455
set hasByteEnable 0
set MemName infer_layer_10_weights_V_57
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1101010110100100" "0010010011001001" "0100111010001001" "0000001011100111" "1110111011111110" "1111000010110000" "0100100101001111" "1111011111110011" "0001110000011000" "0001001101111001" "1110101100101101" "0100011001101111" "1101110100000011" "1100001000010110" "0001101110010010" "0010001111000101" "1111111000010011" "1110101001001000" "1100111011000110" "1110011101001100" "1100110010010010" "0010001101101110" "0011000010010100" "1101000000100010" "1101111111011101" "1110011100111111" "0100010011101010" "0001010010010110" "1100100010111100" "0011001111010101" "1110001001100011" "1111010111011011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 456
set hasByteEnable 0
set MemName infer_layer_10_weights_V_58
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1100101010110000" "1111000100110000" "1101100100010111" "0011100011000011" "0101001010011111" "1101000001111111" "0001110001010011" "0010111100010011" "1110000000111000" "0000001100111011" "1011100100000010" "0000001010010101" "1111100110111111" "1100100100111101" "0001110011111000" "1101100001110101" "0010001111110011" "1110010011011100" "1111011110001101" "1101100101011100" "1110001111000110" "1110001110100110" "1110101000011011" "1110010010101110" "0001100111111100" "1101000101010110" "0010001110100000" "0100000001101110" "0000111101010111" "1100110100101110" "0010110011110011" "1101010111011000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 457
set hasByteEnable 0
set MemName infer_layer_10_weights_V_59
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0101100011100110" "0000011111000011" "0001011111011110" "0000011101111100" "0000100001010000" "0000111101100000" "1111101100100001" "0011001001111001" "1110001000000111" "0001010111101110" "0011101010001100" "1011100010000100" "0010001111011110" "0010011000001011" "1111011011110100" "0011000011101100" "0011011001011100" "0000101111110100" "0010100101010100" "0001010111010000" "0010000011001100" "0001011101000101" "1111001110110010" "1100001111000001" "1011101011010100" "0011001001010010" "1011111111000010" "0010101011100001" "1111110011100001" "1111000000000011" "0100010110110001" "0000001000010100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 458
set hasByteEnable 0
set MemName infer_layer_10_weights_V_60
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "101110111111110" "111000101001100" "111010100010101" "011100101010101" "111101010111001" "110101011100011" "000011101010010" "111100111010011" "100111101101001" "011101111011110" "110011001000100" "110010110101101" "001101010000110" "100001001110011" "110110110010010" "101100110001010" "101110110000000" "110011000001110" "111000100010001" "011011110010111" "010001101111100" "100111101100010" "110110101111100" "111101111000110" "101100111100000" "110001111000111" "101001101111101" "000110001010001" "011001000111000" "111010100101001" "111010001001011" "000100001010001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 459
set hasByteEnable 0
set MemName infer_layer_10_weights_V_61
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "010000011000000" "011100100110111" "010111101101000" "110110100001110" "001010010100011" "010101110111000" "011000111110001" "010000110000100" "010001111000011" "110010101010110" "111100110001010" "111011110010010" "000110010010011" "011000101010100" "111111100110101" "101000111111111" "000111001000000" "000001000100000" "100001010100001" "010010101001110" "001001010110111" "110100010001000" "100011111111011" "101001010100110" "000101110000101" "001010000101001" "000001011000100" "011001101110110" "010110000011111" "111010101000100" "100110110111011" "100011001011111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 460
set hasByteEnable 0
set MemName infer_layer_10_weights_V_62
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 15
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "001101011100101" "100100111010011" "010010100101000" "100101100010100" "001110101010010" "101010001110100" "101010101001001" "011010011100110" "001011001111100" "110001010001001" "111001111111010" "000000011000111" "110101101110001" "101001010101001" "000011011000010" "001101011000110" "100100100001011" "010010100000100" "001011111101000" "110101110101010" "111011011011111" "001101111111011" "000110000001000" "010000001010101" "011000000000000" "000000001111001" "101001000010010" "101111010111111" "111000011010000" "000010100110001" "000010000100010" "100101011010101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 461
set hasByteEnable 0
set MemName infer_layer_10_weights_V_63
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1111110010100001" "0011110011101100" "0011000010011100" "1111000101100110" "1101101000101011" "0010100001011111" "0011110011001100" "0001111010000100" "1111010000001010" "1011011011100100" "0001100110010100" "1110001010000010" "0100010011101101" "0001000100110111" "0000010100100110" "0010000010001111" "0000011111100111" "1101100110101011" "0010111100111101" "0000101010100110" "0011001001101000" "1110001000111010" "0000111110111000" "0011010011000101" "1011001101011111" "0000111000100011" "0011011011010011" "0101000101110101" "1111010110100000" "1111110000101111" "0011010111110000" "1101101100100001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 462
set hasByteEnable 0
set MemName infer_layer_10_out_V
set CoreName ap_simcore_mem
set PortList { 2 1 }
set DataWd 20
set AddrRange 32
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
    port_num 2 \
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


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
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
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 463
set hasByteEnable 0
set MemName infer_layer_11_bias_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 13
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1111100111011" "0100111100110" "1110101100101" "0010111001101" "1100111100110" "1011000010101" "0100000101000" "0110001110010" "0000000000000" "1000100100100" "0100010110100" "0000000000000" "0110000010000" "1111000010100" "0011110001110" "0000000000000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 464
set hasByteEnable 0
set MemName infer_layer_11_weights_V_0
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1100110001011111" "1110011110101100" "0100001000011000" "0011011101010101" "0101100010110101" "1100010001110100" "0011001000010110" "0010000011010100" "1011010111111111" "1100100111100011" "0000011101100111" "1011110111100011" "1011000111001101" "1100101101111000" "0000011101100011" "1011011111001001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 465
set hasByteEnable 0
set MemName infer_layer_11_weights_V_1
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0001001001111011" "1111101111110101" "1011001010011010" "0101111011011000" "1001110100011101" "0100101100010011" "0000011111001011" "1101000101001000" "0100101010000011" "1111001000011000" "0000010111101011" "1110101110101100" "1010101101001001" "0000101000100000" "1011101100000101" "1101110111100101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 466
set hasByteEnable 0
set MemName infer_layer_11_weights_V_2
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0001010101011011" "0101111101011000" "1001000000110010" "0110000000100000" "1100000101011001" "1111110110100000" "0100111001110011" "0000100000100011" "1111101011001000" "0000111110010101" "0100001001100010" "1110011011010000" "0001111100001001" "1111001110011011" "0100011101001110" "1101000101010101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 467
set hasByteEnable 0
set MemName infer_layer_11_weights_V_3
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0001100110001100" "1011001000111101" "0101010110001000" "0011111011011110" "0100010100110001" "1001110100010011" "1111100001001011" "1011111101001101" "1100011100010100" "1101000110110001" "0010110000110000" "0001011111011110" "1010111000111011" "1011011010011101" "1010001011010100" "1010011110111010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 468
set hasByteEnable 0
set MemName infer_layer_11_weights_V_4
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0000101011101101" "0101101110011110" "0011111011000101" "0001111111110110" "1111010001001000" "0100100011010011" "0010111010001011" "1011110101011001" "1101101111011110" "0011101110100000" "0011100111010100" "1101110101111001" "0001011010000001" "0100000110110001" "0100111010011001" "1110111001110001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 469
set hasByteEnable 0
set MemName infer_layer_11_weights_V_5
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1110001101101111" "1101011100100101" "0001101001111111" "1110100111010000" "1101000101011010" "0010000000011110" "0101011011010001" "1011011110000001" "0001100111011100" "0010101001000011" "1101100100010110" "1110010110000010" "1101000011100110" "1101100011010111" "0100011000011101" "0011011001100101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 470
set hasByteEnable 0
set MemName infer_layer_11_weights_V_6
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1011101011110100" "0110111000001110" "0100100010000000" "0101011101110000" "1110111010111111" "0010110001000010" "0100101110101110" "0001010000110101" "0100000110110110" "0000101011011001" "0010000101010101" "1101101001111011" "0001101101010010" "1110101000111001" "1111000010110000" "1011101100111011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 471
set hasByteEnable 0
set MemName infer_layer_11_weights_V_7
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1101010001001111" "1101000000001100" "1111000001101111" "1110111100000100" "0000011111100010" "0001000100010000" "1110100110100101" "1100100101011001" "1101100000011110" "0011011011110101" "1011111000011001" "1101001100010011" "0011110000010000" "0010001010000001" "0000101000100000" "1010111111100001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 472
set hasByteEnable 0
set MemName infer_layer_11_weights_V_8
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1011100001110101" "0000001011010101" "1101111110000110" "1011100100100111" "0010100000010010" "1110011000110100" "1011011111001001" "0001001100111011" "1111111101110111" "1111101011001001" "0011110001010011" "1101000011111010" "0001010111110000" "0011010101011101" "0000000011111110" "0011111010011101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 473
set hasByteEnable 0
set MemName infer_layer_11_weights_V_9
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0000110111010110" "0011111110110100" "1110010001110011" "0011100000100011" "1010100111101111" "1110110001010000" "1001011111100000" "0101100001111110" "0011011001110101" "1001110100001101" "0001100011100111" "0011111001111001" "0001011100010011" "0011110101000001" "0101101010100010" "1010010110110000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 474
set hasByteEnable 0
set MemName infer_layer_11_weights_V_10
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 17
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00001000000101011" "11111011110000011" "00001010101100100" "11110111110100111" "00001101011011100" "11110001000000110" "11100001011001000" "01101111100000010" "00000111110100010" "00001001101110000" "11001100100011010" "11111010011111011" "00110000101010010" "00100000101110011" "11100101110101011" "00010000000000011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 475
set hasByteEnable 0
set MemName infer_layer_11_weights_V_11
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 17
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11101010101110000" "01000010010011000" "00000011100011001" "11111000010000001" "00010111010110000" "11111101110111101" "11101011101000000" "00011110000010001" "11110100000001110" "00011001001001001" "00111001011001100" "11101100000000010" "00101000110100011" "11100100011010000" "00110011010000101" "00011011110110011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 476
set hasByteEnable 0
set MemName infer_layer_11_weights_V_12
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0101100011111000" "1001101101110011" "0011011111010001" "0000000001010100" "0010110000010100" "1100111011000011" "0100110110101000" "1010111111111001" "0010000101001110" "0000001111110000" "1010101000100111" "1100011000110001" "1000010010011110" "0101000111011110" "1110010000000100" "1011111000111011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 477
set hasByteEnable 0
set MemName infer_layer_11_weights_V_13
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1101010100111001" "0101100101101100" "1100010001111110" "0010110111101101" "1111100100101001" "0001000010110011" "1100100011100100" "0100101100000011" "0000110010100000" "1100100011001010" "0101010111011000" "0001101010111010" "0010001110100000" "1011001110000111" "0001011110001110" "1111101100011001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 478
set hasByteEnable 0
set MemName infer_layer_11_weights_V_14
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1010100010110011" "0111010000110111" "0001010000000111" "0100100000111000" "0001010110101011" "0001011111010001" "0100010100001110" "0100001110101101" "1110101110011010" "0011111011011111" "0100001011110101" "1111110011110011" "1101010101010100" "1011100110011010" "0010000011010011" "1101001100001100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 479
set hasByteEnable 0
set MemName infer_layer_11_weights_V_15
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0000110111011110" "1110010010111111" "0100111011010001" "0000111100010110" "0100111000000001" "1001100100110100" "0101010100010111" "0011001101101101" "0000001010110000" "1100000100110111" "1101001010001110" "1111111011011000" "0000110010100100" "1100110101000100" "0000100010101101" "1101110001111011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 480
set hasByteEnable 0
set MemName infer_layer_11_weights_V_16
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1111100101100000" "1110000111101011" "1011100011011010" "1110011101000001" "0001110011110000" "0000010001100000" "0011001101101001" "0101011110111010" "1100110001101000" "0100000111000101" "1101100111000011" "1110111110011110" "0100111010110100" "0001111010111111" "1111101011001111" "1100010110001001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 481
set hasByteEnable 0
set MemName infer_layer_11_weights_V_17
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1010010101111011" "0100011111111101" "1011011111100000" "0101001010101101" "0100011001110111" "0001000001111001" "0001101101100000" "0100110000001010" "0001000001010111" "1010101001011000" "1010111001000101" "1011111011011111" "0010001111110011" "0001111100010000" "1110100010111110" "0000000011110111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 482
set hasByteEnable 0
set MemName infer_layer_11_weights_V_18
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0100111101100000" "1100100110100011" "1011110111000100" "1100110001010100" "1110101111000010" "1110111011001011" "0001010111000010" "1100111001110001" "0010010010100100" "0001100111010111" "0100010010001110" "1100111101001111" "0011011010000100" "1101000110111111" "1100001110110101" "1111010000110011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 483
set hasByteEnable 0
set MemName infer_layer_11_weights_V_19
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0000111010010011" "1010110010100100" "0100101100010101" "1110001110010110" "0001110010110010" "1111000011111011" "0100110111100000" "1011111111000000" "1111010010000110" "1101001110101011" "1010110011001101" "1111100011010100" "1010100101000010" "0101100101111100" "1110010100010001" "1011001111100100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 484
set hasByteEnable 0
set MemName infer_layer_11_weights_V_20
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1101101110011000" "0000100110001111" "0001010001001111" "1010111011001000" "1100101011011110" "1101010100011001" "1110011011100010" "0100000011111010" "0101001000010010" "1010100110000011" "1111101110101100" "0101100001100111" "0010001011010011" "0011100000001110" "1010111101011110" "1100001001111010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 485
set hasByteEnable 0
set MemName infer_layer_11_weights_V_21
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1101011100101011" "0001000001110110" "1010101110011101" "1110000011010100" "0011001010010011" "1011110100010010" "1011010101010001" "1110010000100100" "0100011110101101" "0011000010001101" "0001010011010000" "0011010100000010" "1100110110000010" "1100011101001000" "1100000100110111" "1100010001111110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 486
set hasByteEnable 0
set MemName infer_layer_11_weights_V_22
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1101001011000110" "0001100001011000" "1110010110101010" "0100111101010000" "0100000110111111" "1011000100110010" "0011110001010101" "1101001110010011" "1110010110110011" "0101100001100101" "1111000101110101" "0010100001001101" "1110111010001111" "0100000010110110" "1110111110110011" "0001110010001011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 487
set hasByteEnable 0
set MemName infer_layer_11_weights_V_23
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0011100110101000" "1110001100000111" "1111011010001111" "0010110101010001" "1100101011101101" "0011000000110101" "0001111001100100" "1100111001101000" "1110111110000111" "1011101100010000" "1101100011100000" "0010011000000010" "0011001011100001" "0000100010010101" "0001101100000111" "0011111001110010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 488
set hasByteEnable 0
set MemName infer_layer_11_weights_V_24
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0100010011101001" "0100110110100111" "1010000101100100" "1101000111100111" "1000010101001110" "0001111001011110" "1001011110010100" "0011111101010111" "1111110011100011" "1111010111000101" "0011110111100000" "0001000011000100" "1110010000010010" "1010110010011000" "0101000100111011" "1111110101100000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 489
set hasByteEnable 0
set MemName infer_layer_11_weights_V_25
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 17
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "11100001111000101" "10111001001010000" "00100001110010100" "00001010010101111" "00110001000110011" "11110111101100000" "11111111101010110" "00110100111011011" "11010111011101101" "11100111101001100" "00000001111110001" "11100001111111110" "01001011011101101" "00101100000010000" "00000111100001001" "11010110110111110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 490
set hasByteEnable 0
set MemName infer_layer_11_weights_V_26
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0100011101011101" "0000110001001100" "1010001110010011" "1111111110101010" "1001001111100011" "0000110100111100" "1111011011011110" "0010010010011100" "1011111111111011" "0011111011110000" "0111111000100101" "0000110000111000" "0101101001001011" "0011011100000011" "0100011100111111" "0000000000011011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 491
set hasByteEnable 0
set MemName infer_layer_11_weights_V_27
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1011111111011110" "0110001101010111" "1110101011101100" "0000101010101001" "0011001001001011" "0000001100100111" "0001011000100111" "1011000111100111" "1111000001111111" "1001101010100101" "0101101111001000" "1111011011100000" "0001100111100111" "0011111100011100" "1101010011100001" "0001001100110110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 492
set hasByteEnable 0
set MemName infer_layer_11_weights_V_28
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1110101010111110" "1100110100110001" "1101111110011111" "0011000100110110" "0001001011100001" "0100011101110101" "0000100011011010" "1110111111101101" "0000000010000010" "1100000101110001" "1111011100000010" "1100101100101111" "1010100101001110" "0100010101000001" "1110111001000100" "0011000110001111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 493
set hasByteEnable 0
set MemName infer_layer_11_weights_V_29
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "1100111010100111" "0010010010000000" "1010101111001011" "1100111010010011" "1011010010010010" "1011010000110101" "0000000100100101" "0101010111000000" "0001111110100001" "1011001101011010" "0100000011101111" "0000001110111101" "0100100001010010" "0101001110000100" "0001001011010110" "1011000101001010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 494
set hasByteEnable 0
set MemName infer_layer_11_weights_V_30
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0010001101110010" "0011101011100101" "0100000110001001" "0010111101100000" "0100011110111100" "0000010000011101" "0010110100110010" "1001000111001010" "1101001111010001" "0010011011000001" "1100000010110001" "0000101010000010" "0000101011100110" "1111011001100011" "0001110100101101" "1101010110001101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 495
set hasByteEnable 0
set MemName infer_layer_11_weights_V_31
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0010111011001100" "0011001011110000" "0001111111111111" "1010100010000001" "1101110111111000" "1010100100110011" "0000100100110011" "1110111110111010" "1100010110111110" "1110101110101110" "1111011000001000" "1010110100001101" "0000000100111011" "1111101001110001" "0100110000110111" "1111000111000101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
set ID 496
set hasByteEnable 0
set MemName infer_layer_11_out_V
set CoreName ap_simcore_mem
set PortList { 2 1 }
set DataWd 20
set AddrRange 16
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
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
    port_num 2 \
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


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
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
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 497 \
			corename infer_control_axilite \
			name infer_control_s_axi \
			ports {$port_control} \
			op interface \
			is_flushable 0 \ 
			is_datawidth64 0 \ 
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler infer_control_s_axi
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 498 \
    name infer_input_V_data_V \
    reset_level 0 \
    sync_rst true \
    corename {infer_input} \
    metadata {  } \
    op interface \
    ports { infer_input_TDATA { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'infer_input_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 499 \
    name infer_input_V_keep_V \
    reset_level 0 \
    sync_rst true \
    corename {infer_input} \
    metadata {  } \
    op interface \
    ports { infer_input_TKEEP { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'infer_input_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 500 \
    name infer_input_V_strb_V \
    reset_level 0 \
    sync_rst true \
    corename {infer_input} \
    metadata {  } \
    op interface \
    ports { infer_input_TSTRB { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'infer_input_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 501 \
    name infer_input_V_user_V \
    reset_level 0 \
    sync_rst true \
    corename {infer_input} \
    metadata {  } \
    op interface \
    ports { infer_input_TUSER { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'infer_input_V_user_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 502 \
    name infer_input_V_last_V \
    reset_level 0 \
    sync_rst true \
    corename {infer_input} \
    metadata {  } \
    op interface \
    ports { infer_input_TLAST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'infer_input_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 503 \
    name infer_input_V_id_V \
    reset_level 0 \
    sync_rst true \
    corename {infer_input} \
    metadata {  } \
    op interface \
    ports { infer_input_TID { I 5 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'infer_input_V_id_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 504 \
    name infer_input_V_dest_V \
    reset_level 0 \
    sync_rst true \
    corename {infer_input} \
    metadata {  } \
    op interface \
    ports { infer_input_TVALID { I 1 bit } infer_input_TREADY { O 1 bit } infer_input_TDEST { I 6 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'infer_input_V_dest_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 505 \
    name infer_output_V_data_V \
    reset_level 0 \
    sync_rst true \
    corename {infer_output} \
    metadata {  } \
    op interface \
    ports { infer_output_TDATA { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'infer_output_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 506 \
    name infer_output_V_keep_V \
    reset_level 0 \
    sync_rst true \
    corename {infer_output} \
    metadata {  } \
    op interface \
    ports { infer_output_TKEEP { O 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'infer_output_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 507 \
    name infer_output_V_strb_V \
    reset_level 0 \
    sync_rst true \
    corename {infer_output} \
    metadata {  } \
    op interface \
    ports { infer_output_TSTRB { O 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'infer_output_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 508 \
    name infer_output_V_user_V \
    reset_level 0 \
    sync_rst true \
    corename {infer_output} \
    metadata {  } \
    op interface \
    ports { infer_output_TUSER { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'infer_output_V_user_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 509 \
    name infer_output_V_last_V \
    reset_level 0 \
    sync_rst true \
    corename {infer_output} \
    metadata {  } \
    op interface \
    ports { infer_output_TLAST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'infer_output_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 510 \
    name infer_output_V_id_V \
    reset_level 0 \
    sync_rst true \
    corename {infer_output} \
    metadata {  } \
    op interface \
    ports { infer_output_TID { O 5 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'infer_output_V_id_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 511 \
    name infer_output_V_dest_V \
    reset_level 0 \
    sync_rst true \
    corename {infer_output} \
    metadata {  } \
    op interface \
    ports { infer_output_TVALID { O 1 bit } infer_output_TREADY { I 1 bit } infer_output_TDEST { O 6 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'infer_output_V_dest_V'"
}
}



# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


# RegSlice definition:
set ID 512
set RegSliceName infer_regslice_both
set RegSliceInstName infer_regslice_both_U
set CoreName ap_simcore_infer_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix infer_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 513
set RegSliceName infer_regslice_both
set RegSliceInstName infer_regslice_both_U
set CoreName ap_simcore_infer_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix infer_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 514
set RegSliceName infer_regslice_both
set RegSliceInstName infer_regslice_both_U
set CoreName ap_simcore_infer_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix infer_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 515
set RegSliceName infer_regslice_both
set RegSliceInstName infer_regslice_both_U
set CoreName ap_simcore_infer_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix infer_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 516
set RegSliceName infer_regslice_both
set RegSliceInstName infer_regslice_both_U
set CoreName ap_simcore_infer_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix infer_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 517
set RegSliceName infer_regslice_both
set RegSliceInstName infer_regslice_both_U
set CoreName ap_simcore_infer_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix infer_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 518
set RegSliceName infer_regslice_both
set RegSliceInstName infer_regslice_both_U
set CoreName ap_simcore_infer_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix infer_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 519
set RegSliceName infer_regslice_both
set RegSliceInstName infer_regslice_both_U
set CoreName ap_simcore_infer_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix infer_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 520
set RegSliceName infer_regslice_both
set RegSliceInstName infer_regslice_both_U
set CoreName ap_simcore_infer_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix infer_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 521
set RegSliceName infer_regslice_both
set RegSliceInstName infer_regslice_both_U
set CoreName ap_simcore_infer_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix infer_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 522
set RegSliceName infer_regslice_both
set RegSliceInstName infer_regslice_both_U
set CoreName ap_simcore_infer_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix infer_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 523
set RegSliceName infer_regslice_both
set RegSliceInstName infer_regslice_both_U
set CoreName ap_simcore_infer_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix infer_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 524
set RegSliceName infer_regslice_both
set RegSliceInstName infer_regslice_both_U
set CoreName ap_simcore_infer_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix infer_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 525
set RegSliceName infer_regslice_both
set RegSliceInstName infer_regslice_both_U
set CoreName ap_simcore_infer_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix infer_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}

