# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 40
set hasByteEnable 0
set MemName cabac_top_decode_regular_lpsTable_ROM_AUTO_1R
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 8
set AddrRange 256
set AddrWd 8
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10000000" "10110000" "11010000" "11110000" "10000000" "10100111" "11000101" "11100011" "10000000" "10011110" "10111011" "11011000" "01111011" "10010110" "10110010" "11001101" "01110100" "10001110" "10101001" "11000011" "01101111" "10000111" "10100000" "10111001" "01101001" "10000000" "10011000" "10101111" "01100100" "01111010" "10010000" "10100110" "01011111" "01110100" "10001001" "10011110" "01011010" "01101110" "10000010" "10010110" "01010101" "01101000" "01111011" "10001110" "01010001" "01100011" "01110101" "10000111" "01001101" "01011110" "01101111" "10000000" "01001001" "01011001" "01101001" "01111010" "01000101" "01010101" "01100100" "01110100" "01000010" "01010000" "01011111" "01101110" "00111110" "01001100" "01011010" "01101000" "00111011" "01001000" "01010110" "01100011" "00111000" "01000101" "01010001" "01011110" "00110101" "01000001" "01001101" "01011001" "00110011" "00111110" "01001001" "01010101" "00110000" "00111011" "01000101" "01010000" "00101110" "00111000" "01000010" "01001100" "00101011" "00110101" "00111111" "01001000" "00101001" "00110010" "00111011" "01000101" "00100111" "00110000" "00111000" "01000001" "00100101" "00101101" "00110110" "00111110" "00100011" "00101011" "00110011" "00111011" "00100001" "00101001" "00110000" "00111000" "00100000" "00100111" "00101110" "00110101" "00011110" "00100101" "00101011" "00110010" "00011101" "00100011" "00101001" "00110000" "00011011" "00100001" "00100111" "00101101" "00011010" "00011111" "00100101" "00101011" "00011000" "00011110" "00100011" "00101001" "00010111" "00011100" "00100001" "00100111" "00010110" "00011011" "00100000" "00100101" "00010101" "00011010" "00011110" "00100011" "00010100" "00011000" "00011101" "00100001" "00010011" "00010111" "00011011" "00011111" "00010010" "00010110" "00011010" "00011110" "00010001" "00010101" "00011001" "00011100" "00010000" "00010100" "00010111" "00011011" "00001111" "00010011" "00010110" "00011001" "00001110" "00010010" "00010101" "00011000" "00001110" "00010001" "00010100" "00010111" "00001101" "00010000" "00010011" "00010110" "00001100" "00001111" "00010010" "00010101" "00001100" "00001110" "00010001" "00010100" "00001011" "00001110" "00010000" "00010011" "00001011" "00001101" "00001111" "00010010" "00001010" "00001100" "00001111" "00010001" "00001010" "00001100" "00001110" "00010000" "00001001" "00001011" "00001101" "00001111" "00001001" "00001011" "00001100" "00001110" "00001000" "00001010" "00001100" "00001110" "00001000" "00001001" "00001011" "00001101" "00000111" "00001001" "00001011" "00001100" "00000111" "00001001" "00001010" "00001100" "00000111" "00001000" "00001010" "00001011" "00000110" "00001000" "00001001" "00001011" "00000110" "00000111" "00001001" "00001010" "00000110" "00000111" "00001000" "00001001" "00000010" "00000010" "00000010" "00000010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 3.254
set ClkPeriod 10
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
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
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName ROM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
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
set ID 41
set hasByteEnable 0
set MemName cabac_top_decode_regular_transMPS_ROM_AUTO_1R
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 7
set AddrRange 128
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0000010" "0000011" "0000100" "0000101" "0000110" "0000111" "0001000" "0001001" "0001010" "0001011" "0001100" "0001101" "0001110" "0001111" "0010000" "0010001" "0010010" "0010011" "0010100" "0010101" "0010110" "0010111" "0011000" "0011001" "0011010" "0011011" "0011100" "0011101" "0011110" "0011111" "0100000" "0100001" "0100010" "0100011" "0100100" "0100101" "0100110" "0100111" "0101000" "0101001" "0101010" "0101011" "0101100" "0101101" "0101110" "0101111" "0110000" "0110001" "0110010" "0110011" "0110100" "0110101" "0110110" "0110111" "0111000" "0111001" "0111010" "0111011" "0111100" "0111101" "0111110" "0111111" "1000000" "1000001" "1000010" "1000011" "1000100" "1000101" "1000110" "1000111" "1001000" "1001001" "1001010" "1001011" "1001100" "1001101" "1001110" "1001111" "1010000" "1010001" "1010010" "1010011" "1010100" "1010101" "1010110" "1010111" "1011000" "1011001" "1011010" "1011011" "1011100" "1011101" "1011110" "1011111" "1100000" "1100001" "1100010" "1100011" "1100100" "1100101" "1100110" "1100111" "1101000" "1101001" "1101010" "1101011" "1101100" "1101101" "1101110" "1101111" "1110000" "1110001" "1110010" "1110011" "1110100" "1110101" "1110110" "1110111" "1111000" "1111001" "1111010" "1111011" "1111100" "1111101" "1111100" "1111101" "1111110" "1111111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 2.322
set ClkPeriod 10
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
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
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName ROM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
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
set ID 42
set hasByteEnable 0
set MemName cabac_top_decode_regular_transLPS_ROM_AUTO_1R
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 7
set AddrRange 128
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0000001" "0000000" "0000000" "0000001" "0000010" "0000011" "0000100" "0000101" "0000100" "0000101" "0001000" "0001001" "0001000" "0001001" "0001010" "0001011" "0001100" "0001101" "0001110" "0001111" "0010000" "0010001" "0010010" "0010011" "0010010" "0010011" "0010110" "0010111" "0010110" "0010111" "0011000" "0011001" "0011010" "0011011" "0011010" "0011011" "0011110" "0011111" "0011110" "0011111" "0100000" "0100001" "0100000" "0100001" "0100100" "0100101" "0100100" "0100101" "0100110" "0100111" "0100110" "0100111" "0101010" "0101011" "0101010" "0101011" "0101100" "0101101" "0101100" "0101101" "0101110" "0101111" "0110000" "0110001" "0110000" "0110001" "0110010" "0110011" "0110100" "0110101" "0110100" "0110101" "0110110" "0110111" "0110110" "0110111" "0111000" "0111001" "0111010" "0111011" "0111010" "0111011" "0111100" "0111101" "0111100" "0111101" "0111100" "0111101" "0111110" "0111111" "1000000" "1000001" "1000000" "1000001" "1000010" "1000011" "1000010" "1000011" "1000010" "1000011" "1000100" "1000101" "1000100" "1000101" "1000110" "1000111" "1000110" "1000111" "1000110" "1000111" "1001000" "1001001" "1001000" "1001001" "1001000" "1001001" "1001010" "1001011" "1001010" "1001011" "1001010" "1001011" "1001100" "1001101" "1001100" "1001101" "1111110" "1111111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 2.322
set ClkPeriod 10
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
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
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName ROM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
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
    id 47 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 48 \
    name ctxTables \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename ctxTables \
    op interface \
    ports { ctxTables_address0 { O 9 vector } ctxTables_ce0 { O 1 bit } ctxTables_we0 { O 1 bit } ctxTables_d0 { O 8 vector } ctxTables_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ctxTables'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name p_read4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read4 \
    op interface \
    ports { p_read4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name p_read5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read5 \
    op interface \
    ports { p_read5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name baeState_0_constprop \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_baeState_0_constprop \
    op interface \
    ports { baeState_0_constprop_i { I 32 vector } baeState_0_constprop_o { O 32 vector } baeState_0_constprop_o_ap_vld { O 1 bit } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


