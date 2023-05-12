# This script segment is generated automatically by AutoPilot

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
    id 99 \
    name bStream \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bStream \
    op interface \
    ports { bStream_address0 { O 3 vector } bStream_ce0 { O 1 bit } bStream_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bStream'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name state_bstate_currIdx_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_bstate_currIdx_8_reload \
    op interface \
    ports { state_bstate_currIdx_8_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name state_bstate_n_bits_held_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_bstate_n_bits_held_8_reload \
    op interface \
    ports { state_bstate_n_bits_held_8_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name state_bstate_held_aligned_word_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_bstate_held_aligned_word_8_reload \
    op interface \
    ports { state_bstate_held_aligned_word_8_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name state_ivlOffset_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_ivlOffset_6_reload \
    op interface \
    ports { state_ivlOffset_6_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name p_reload7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload7 \
    op interface \
    ports { p_reload7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name p_reload8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload8 \
    op interface \
    ports { p_reload8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name p_reload9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload9 \
    op interface \
    ports { p_reload9 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name baeState_0_constprop_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_baeState_0_constprop_load \
    op interface \
    ports { baeState_0_constprop_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name state_bstate_currIdx_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_state_bstate_currIdx_11_out \
    op interface \
    ports { state_bstate_currIdx_11_out { O 32 vector } state_bstate_currIdx_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name state_bstate_n_bits_held_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_state_bstate_n_bits_held_11_out \
    op interface \
    ports { state_bstate_n_bits_held_11_out { O 8 vector } state_bstate_n_bits_held_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name state_bstate_held_aligned_word_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_state_bstate_held_aligned_word_11_out \
    op interface \
    ports { state_bstate_held_aligned_word_11_out { O 8 vector } state_bstate_held_aligned_word_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name state_ivlOffset_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_state_ivlOffset_8_out \
    op interface \
    ports { state_ivlOffset_8_out { O 32 vector } state_ivlOffset_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name symbolVal_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_symbolVal_4_out \
    op interface \
    ports { symbolVal_4_out { O 8 vector } symbolVal_4_out_ap_vld { O 1 bit } } \
} "
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


# flow_control definition:
set InstName cabac_top_flow_control_loop_pipe_sequential_init_U
set CompName cabac_top_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix cabac_top_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


