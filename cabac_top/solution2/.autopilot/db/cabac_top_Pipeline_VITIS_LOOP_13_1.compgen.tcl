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
    id 57 \
    name ctxTables \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename ctxTables \
    op interface \
    ports { ctxTables_address0 { O 9 vector } ctxTables_ce0 { O 1 bit } ctxTables_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ctxTables'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name ctx \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ctx \
    op interface \
    ports { m_axi_ctx_AWVALID { O 1 bit } m_axi_ctx_AWREADY { I 1 bit } m_axi_ctx_AWADDR { O 64 vector } m_axi_ctx_AWID { O 1 vector } m_axi_ctx_AWLEN { O 32 vector } m_axi_ctx_AWSIZE { O 3 vector } m_axi_ctx_AWBURST { O 2 vector } m_axi_ctx_AWLOCK { O 2 vector } m_axi_ctx_AWCACHE { O 4 vector } m_axi_ctx_AWPROT { O 3 vector } m_axi_ctx_AWQOS { O 4 vector } m_axi_ctx_AWREGION { O 4 vector } m_axi_ctx_AWUSER { O 1 vector } m_axi_ctx_WVALID { O 1 bit } m_axi_ctx_WREADY { I 1 bit } m_axi_ctx_WDATA { O 8 vector } m_axi_ctx_WSTRB { O 1 vector } m_axi_ctx_WLAST { O 1 bit } m_axi_ctx_WID { O 1 vector } m_axi_ctx_WUSER { O 1 vector } m_axi_ctx_ARVALID { O 1 bit } m_axi_ctx_ARREADY { I 1 bit } m_axi_ctx_ARADDR { O 64 vector } m_axi_ctx_ARID { O 1 vector } m_axi_ctx_ARLEN { O 32 vector } m_axi_ctx_ARSIZE { O 3 vector } m_axi_ctx_ARBURST { O 2 vector } m_axi_ctx_ARLOCK { O 2 vector } m_axi_ctx_ARCACHE { O 4 vector } m_axi_ctx_ARPROT { O 3 vector } m_axi_ctx_ARQOS { O 4 vector } m_axi_ctx_ARREGION { O 4 vector } m_axi_ctx_ARUSER { O 1 vector } m_axi_ctx_RVALID { I 1 bit } m_axi_ctx_RREADY { O 1 bit } m_axi_ctx_RDATA { I 8 vector } m_axi_ctx_RLAST { I 1 bit } m_axi_ctx_RID { I 1 vector } m_axi_ctx_RFIFONUM { I 11 vector } m_axi_ctx_RUSER { I 1 vector } m_axi_ctx_RRESP { I 2 vector } m_axi_ctx_BVALID { I 1 bit } m_axi_ctx_BREADY { O 1 bit } m_axi_ctx_BRESP { I 2 vector } m_axi_ctx_BID { I 1 vector } m_axi_ctx_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name globalCtx \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_globalCtx \
    op interface \
    ports { globalCtx { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name ctxWritten \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ctxWritten \
    op interface \
    ports { ctxWritten { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 10 vector } } \
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


