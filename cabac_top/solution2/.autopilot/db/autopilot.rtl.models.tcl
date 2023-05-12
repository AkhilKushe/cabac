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
  {SRCNAME cabac_top_Pipeline_VITIS_LOOP_7_1 MODELNAME cabac_top_Pipeline_VITIS_LOOP_7_1 RTLNAME cabac_top_cabac_top_Pipeline_VITIS_LOOP_7_1}
  {SRCNAME cabac_top_Pipeline_VITIS_LOOP_40_11 MODELNAME cabac_top_Pipeline_VITIS_LOOP_40_11 RTLNAME cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_11}
  {SRCNAME decode_decision_Pipeline_VITIS_LOOP_53_1 MODELNAME decode_decision_Pipeline_VITIS_LOOP_53_1 RTLNAME cabac_top_decode_decision_Pipeline_VITIS_LOOP_53_1
    SUBMODULES {
      {MODELNAME cabac_top_mux_42_8_1_1 RTLNAME cabac_top_mux_42_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME decode_decision MODELNAME decode_decision RTLNAME cabac_top_decode_decision
    SUBMODULES {
      {MODELNAME cabac_top_decode_decision_lpsTable_ROM_AUTO_1R RTLNAME cabac_top_decode_decision_lpsTable_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cabac_top_decode_decision_transMPS_ROM_AUTO_1R RTLNAME cabac_top_decode_decision_transMPS_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cabac_top_decode_decision_transLPS_ROM_AUTO_1R RTLNAME cabac_top_decode_decision_transLPS_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME cabac_top_Pipeline_VITIS_LOOP_13_1 MODELNAME cabac_top_Pipeline_VITIS_LOOP_13_1 RTLNAME cabac_top_cabac_top_Pipeline_VITIS_LOOP_13_1}
  {SRCNAME cabac_top MODELNAME cabac_top RTLNAME cabac_top IS_TOP 1
    SUBMODULES {
      {MODELNAME cabac_top_ctxTables_RAM_AUTO_1R1W RTLNAME cabac_top_ctxTables_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cabac_top_fifo_w8_d512_A RTLNAME cabac_top_fifo_w8_d512_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME cabac_top_control_s_axi RTLNAME cabac_top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME cabac_top_ctx_m_axi RTLNAME cabac_top_ctx_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
