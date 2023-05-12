set SynModuleInfo {
  {SRCNAME cabac_top_Pipeline_VITIS_LOOP_29_1 MODELNAME cabac_top_Pipeline_VITIS_LOOP_29_1 RTLNAME cabac_top_cabac_top_Pipeline_VITIS_LOOP_29_1}
  {SRCNAME cabac_top_Pipeline_VITIS_LOOP_40_1 MODELNAME cabac_top_Pipeline_VITIS_LOOP_40_1 RTLNAME cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1
    SUBMODULES {
      {MODELNAME cabac_top_mul_7s_6ns_13_1_1 RTLNAME cabac_top_mul_7s_6ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_B_FRAME_INIT_VALS_ROM_AUTO_1R RTLNAME cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_B_FRAME_INIT_VALS_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_P_FRAME_INIT_VALS_ROM_AUTO_1R RTLNAME cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_P_FRAME_INIT_VALS_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_I_FRAME_INIT_VALS_ROM_AUTO_1R RTLNAME cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_I_FRAME_INIT_VALS_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cabac_top_flow_control_loop_pipe_sequential_init RTLNAME cabac_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cabac_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cabac_top_Pipeline_VITIS_LOOP_8_1 MODELNAME cabac_top_Pipeline_VITIS_LOOP_8_1 RTLNAME cabac_top_cabac_top_Pipeline_VITIS_LOOP_8_1}
  {SRCNAME cabac_top_Pipeline_VITIS_LOOP_45_1 MODELNAME cabac_top_Pipeline_VITIS_LOOP_45_1 RTLNAME cabac_top_cabac_top_Pipeline_VITIS_LOOP_45_1}
  {SRCNAME sao_top_Pipeline_1 MODELNAME sao_top_Pipeline_1 RTLNAME cabac_top_sao_top_Pipeline_1}
  {SRCNAME sao_top_Pipeline_2 MODELNAME sao_top_Pipeline_2 RTLNAME cabac_top_sao_top_Pipeline_2}
  {SRCNAME parseSAOMergeFlag MODELNAME parseSAOMergeFlag RTLNAME cabac_top_parseSAOMergeFlag}
  {SRCNAME decode_regular_Pipeline_VITIS_LOOP_53_1 MODELNAME decode_regular_Pipeline_VITIS_LOOP_53_1 RTLNAME cabac_top_decode_regular_Pipeline_VITIS_LOOP_53_1}
  {SRCNAME decode_regular MODELNAME decode_regular RTLNAME cabac_top_decode_regular
    SUBMODULES {
      {MODELNAME cabac_top_decode_regular_lpsTable_ROM_AUTO_1R RTLNAME cabac_top_decode_regular_lpsTable_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cabac_top_decode_regular_transMPS_ROM_AUTO_1R RTLNAME cabac_top_decode_regular_transMPS_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cabac_top_decode_regular_transLPS_ROM_AUTO_1R RTLNAME cabac_top_decode_regular_transLPS_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME decode_decision MODELNAME decode_decision RTLNAME cabac_top_decode_decision}
  {SRCNAME sao_top_Pipeline_VITIS_LOOP_54_1 MODELNAME sao_top_Pipeline_VITIS_LOOP_54_1 RTLNAME cabac_top_sao_top_Pipeline_VITIS_LOOP_54_1}
  {SRCNAME parseSAOEO MODELNAME parseSAOEO RTLNAME cabac_top_parseSAOEO}
  {SRCNAME sao_top_Pipeline_VITIS_LOOP_162_3 MODELNAME sao_top_Pipeline_VITIS_LOOP_162_3 RTLNAME cabac_top_sao_top_Pipeline_VITIS_LOOP_162_3}
  {SRCNAME sao_top_Pipeline_VITIS_LOOP_96_1 MODELNAME sao_top_Pipeline_VITIS_LOOP_96_1 RTLNAME cabac_top_sao_top_Pipeline_VITIS_LOOP_96_1}
  {SRCNAME sao_top_Pipeline_VITIS_LOOP_189_4 MODELNAME sao_top_Pipeline_VITIS_LOOP_189_4 RTLNAME cabac_top_sao_top_Pipeline_VITIS_LOOP_189_4}
  {SRCNAME sao_top_Pipeline_VITIS_LOOP_201_5 MODELNAME sao_top_Pipeline_VITIS_LOOP_201_5 RTLNAME cabac_top_sao_top_Pipeline_VITIS_LOOP_201_5
    SUBMODULES {
      {MODELNAME cabac_top_mux_32_8_1_1 RTLNAME cabac_top_mux_32_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cabac_top_mux_32_16_1_1 RTLNAME cabac_top_mux_32_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sao_top_Pipeline_VITIS_LOOP_213_6 MODELNAME sao_top_Pipeline_VITIS_LOOP_213_6 RTLNAME cabac_top_sao_top_Pipeline_VITIS_LOOP_213_6}
  {SRCNAME sao_top MODELNAME sao_top RTLNAME cabac_top_sao_top
    SUBMODULES {
      {MODELNAME cabac_top_sao_top_sao_offset_abs_RAM_AUTO_1R1W RTLNAME cabac_top_sao_top_sao_offset_abs_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cabac_top_sao_top_sao_offset_sign_RAM_AUTO_1R1W RTLNAME cabac_top_sao_top_sao_offset_sign_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME cabac_top_Pipeline_VITIS_LOOP_14_1 MODELNAME cabac_top_Pipeline_VITIS_LOOP_14_1 RTLNAME cabac_top_cabac_top_Pipeline_VITIS_LOOP_14_1}
  {SRCNAME cabac_top MODELNAME cabac_top RTLNAME cabac_top IS_TOP 1
    SUBMODULES {
      {MODELNAME cabac_top_ctxTables_RAM_AUTO_1R1W RTLNAME cabac_top_ctxTables_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cabac_top_data_out_1_RAM_AUTO_1R1W RTLNAME cabac_top_data_out_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cabac_top_tempBst_RAM_AUTO_1R1W RTLNAME cabac_top_tempBst_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cabac_top_fifo_w8_d512_A RTLNAME cabac_top_fifo_w8_d512_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME cabac_top_control_s_axi RTLNAME cabac_top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME cabac_top_ctx_m_axi RTLNAME cabac_top_ctx_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME cabac_top_regslice_both RTLNAME cabac_top_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME cabac_top_regslice_both_U}
    }
  }
}
