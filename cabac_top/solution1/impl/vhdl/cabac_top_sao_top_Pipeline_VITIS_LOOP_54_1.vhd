-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cabac_top_sao_top_Pipeline_VITIS_LOOP_54_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    state_bstate_currIdx_5 : IN STD_LOGIC_VECTOR (31 downto 0);
    state_bstate_n_bits_held_5 : IN STD_LOGIC_VECTOR (7 downto 0);
    state_bstate_held_aligned_word_5 : IN STD_LOGIC_VECTOR (7 downto 0);
    state_ivlOffset_5 : IN STD_LOGIC_VECTOR (30 downto 0);
    baeState_0_constprop_load : IN STD_LOGIC_VECTOR (31 downto 0);
    bStream_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    bStream_ce0 : OUT STD_LOGIC;
    bStream_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    p_out : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_out_ap_vld : OUT STD_LOGIC;
    state_bstate_currIdx_7_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    state_bstate_currIdx_7_out_ap_vld : OUT STD_LOGIC;
    state_bstate_n_bits_held_7_out : OUT STD_LOGIC_VECTOR (7 downto 0);
    state_bstate_n_bits_held_7_out_ap_vld : OUT STD_LOGIC;
    state_bstate_held_aligned_word_7_out : OUT STD_LOGIC_VECTOR (7 downto 0);
    state_bstate_held_aligned_word_7_out_ap_vld : OUT STD_LOGIC;
    ret_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    ret_1_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of cabac_top_sao_top_Pipeline_VITIS_LOOP_54_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv8_7 : STD_LOGIC_VECTOR (7 downto 0) := "00000111";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv9_1FF : STD_LOGIC_VECTOR (8 downto 0) := "111111111";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_block_state3_pp0_stage2_iter0 : BOOLEAN;
    signal and_ln57_fu_396_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage2 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal p_in_load_reg_468 : STD_LOGIC_VECTOR (30 downto 0);
    signal empty_45_fu_219_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal empty_45_reg_473 : STD_LOGIC_VECTOR (7 downto 0);
    signal shl_ln_fu_227_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal shl_ln_reg_478 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln13_fu_235_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln13_reg_483 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln13_fu_239_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln13_reg_488 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln56_fu_245_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln56_reg_492 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln11_fu_312_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal retVal_fu_328_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_s_reg_513 : STD_LOGIC_VECTOR (22 downto 0);
    signal ap_phi_reg_pp0_iter0_val_reg_176 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln5_fu_265_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal empty_fu_78 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_p_load : STD_LOGIC_VECTOR (31 downto 0);
    signal p_in_fu_82 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln76_fu_381_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_sig_allocacmp_p_in_load : STD_LOGIC_VECTOR (30 downto 0);
    signal state_bstate_n_bits_held_6_fu_86 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln16_fu_251_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_allocacmp_state_bstate_n_bits_held_6_load : STD_LOGIC_VECTOR (7 downto 0);
    signal aligned_word_fu_90 : STD_LOGIC_VECTOR (7 downto 0);
    signal state_bstate_currIdx_6_fu_94 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln6_fu_270_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_allocacmp_state_bstate_currIdx_6_load : STD_LOGIC_VECTOR (31 downto 0);
    signal ret_3_fu_372_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln1543_fu_223_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln14_fu_289_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln14_fu_298_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln14_fu_294_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal retVal_5_fu_302_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal retVal_6_fu_308_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_316_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln42_fu_324_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln1543_fu_350_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ret_fu_355_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln1076_fu_362_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln229_fu_367_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln57_fu_391_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal binVal_fu_385_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component cabac_top_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component cabac_top_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage2,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    aligned_word_fu_90_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_loop_init = ap_const_logic_1))) then 
                aligned_word_fu_90 <= state_bstate_held_aligned_word_5;
            elsif (((icmp_ln13_reg_488 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                aligned_word_fu_90 <= bStream_q0;
            end if; 
        end if;
    end process;

    ap_phi_reg_pp0_iter0_val_reg_176_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                if ((icmp_ln13_reg_488 = ap_const_lv1_0)) then 
                                        ap_phi_reg_pp0_iter0_val_reg_176(0) <= zext_ln11_fu_312_p1(0);
                elsif ((icmp_ln13_reg_488 = ap_const_lv1_1)) then 
                                        ap_phi_reg_pp0_iter0_val_reg_176(0) <= retVal_fu_328_p3(0);
                end if;
            end if; 
        end if;
    end process;

    empty_fu_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_loop_init = ap_const_logic_1))) then 
                empty_fu_78 <= ap_const_lv32_0;
            elsif (((ap_const_lv1_1 = and_ln57_fu_396_p2) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                empty_fu_78 <= add_ln56_reg_492;
            end if; 
        end if;
    end process;

    p_in_fu_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_loop_init = ap_const_logic_1))) then 
                p_in_fu_82 <= state_ivlOffset_5;
            elsif (((ap_const_lv1_1 = and_ln57_fu_396_p2) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_in_fu_82 <= trunc_ln76_fu_381_p1;
            end if; 
        end if;
    end process;

    state_bstate_currIdx_6_fu_94_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                if ((icmp_ln13_fu_239_p2 = ap_const_lv1_1)) then 
                    state_bstate_currIdx_6_fu_94 <= add_ln6_fu_270_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    state_bstate_currIdx_6_fu_94 <= state_bstate_currIdx_5;
                end if;
            end if; 
        end if;
    end process;

    state_bstate_n_bits_held_6_fu_86_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                if ((icmp_ln13_fu_239_p2 = ap_const_lv1_1)) then 
                    state_bstate_n_bits_held_6_fu_86 <= ap_const_lv8_7;
                elsif ((icmp_ln13_fu_239_p2 = ap_const_lv1_0)) then 
                    state_bstate_n_bits_held_6_fu_86 <= add_ln16_fu_251_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    state_bstate_n_bits_held_6_fu_86 <= state_bstate_n_bits_held_5;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                add_ln56_reg_492 <= add_ln56_fu_245_p2;
                empty_45_reg_473 <= empty_45_fu_219_p1;
                icmp_ln13_reg_488 <= icmp_ln13_fu_239_p2;
                p_in_load_reg_468 <= ap_sig_allocacmp_p_in_load;
                    shl_ln_reg_478(8 downto 1) <= shl_ln_fu_227_p3(8 downto 1);
                    zext_ln13_reg_483(7 downto 0) <= zext_ln13_fu_235_p1(7 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                tmp_s_reg_513 <= p_in_load_reg_468(30 downto 8);
            end if;
        end if;
    end process;
    shl_ln_reg_478(0) <= '0';
    zext_ln13_reg_483(8) <= '0';
    ap_phi_reg_pp0_iter0_val_reg_176(8 downto 1) <= "00000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state3, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln14_fu_289_p2 <= std_logic_vector(unsigned(zext_ln13_reg_483) + unsigned(ap_const_lv9_1FF));
    add_ln16_fu_251_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_state_bstate_n_bits_held_6_load) + unsigned(ap_const_lv8_FF));
    add_ln56_fu_245_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_p_load) + unsigned(ap_const_lv32_1));
    add_ln6_fu_270_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_state_bstate_currIdx_6_load) + unsigned(ap_const_lv32_1));
    and_ln57_fu_396_p2 <= (icmp_ln57_fu_391_p2 and binVal_fu_385_p2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start_int)
    begin
        if ((ap_start_int = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;

    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start_int = ap_const_logic_0);
    end process;

        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage2_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage2_assign_proc : process(ap_CS_fsm_state3, and_ln57_fu_396_p2)
    begin
        if (((ap_const_lv1_0 = and_ln57_fu_396_p2) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            ap_condition_exit_pp0_iter0_stage2 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state3, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage2;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_p_in_load_assign_proc : process(ap_CS_fsm_state1, state_ivlOffset_5, ap_loop_init, p_in_fu_82)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_p_in_load <= state_ivlOffset_5;
        else 
            ap_sig_allocacmp_p_in_load <= p_in_fu_82;
        end if; 
    end process;


    ap_sig_allocacmp_p_load_assign_proc : process(ap_CS_fsm_state1, empty_fu_78, ap_loop_init)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_p_load <= ap_const_lv32_0;
        else 
            ap_sig_allocacmp_p_load <= empty_fu_78;
        end if; 
    end process;


    ap_sig_allocacmp_state_bstate_currIdx_6_load_assign_proc : process(ap_CS_fsm_state1, state_bstate_currIdx_5, ap_loop_init, state_bstate_currIdx_6_fu_94)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_state_bstate_currIdx_6_load <= state_bstate_currIdx_5;
        else 
            ap_sig_allocacmp_state_bstate_currIdx_6_load <= state_bstate_currIdx_6_fu_94;
        end if; 
    end process;


    ap_sig_allocacmp_state_bstate_n_bits_held_6_load_assign_proc : process(ap_CS_fsm_state1, state_bstate_n_bits_held_5, ap_loop_init, state_bstate_n_bits_held_6_fu_86)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_state_bstate_n_bits_held_6_load <= state_bstate_n_bits_held_5;
        else 
            ap_sig_allocacmp_state_bstate_n_bits_held_6_load <= state_bstate_n_bits_held_6_fu_86;
        end if; 
    end process;

    bStream_address0 <= zext_ln5_fu_265_p1(3 - 1 downto 0);

    bStream_ce0_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            bStream_ce0 <= ap_const_logic_1;
        else 
            bStream_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    binVal_fu_385_p2 <= (icmp_ln1076_fu_362_p2 xor ap_const_lv1_1);
    empty_45_fu_219_p1 <= ap_sig_allocacmp_p_load(8 - 1 downto 0);
    icmp_ln1076_fu_362_p2 <= "1" when (unsigned(ret_fu_355_p3) < unsigned(baeState_0_constprop_load)) else "0";
    icmp_ln13_fu_239_p2 <= "1" when (ap_sig_allocacmp_state_bstate_n_bits_held_6_load = ap_const_lv8_0) else "0";
    icmp_ln57_fu_391_p2 <= "1" when (unsigned(add_ln56_reg_492) < unsigned(ap_const_lv32_5)) else "0";
    or_ln1543_fu_350_p2 <= (shl_ln_reg_478 or ap_phi_reg_pp0_iter0_val_reg_176);
    p_out <= empty_45_reg_473;

    p_out_ap_vld_assign_proc : process(ap_CS_fsm_state3, and_ln57_fu_396_p2)
    begin
        if (((ap_const_lv1_0 = and_ln57_fu_396_p2) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            p_out_ap_vld <= ap_const_logic_1;
        else 
            p_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    retVal_5_fu_302_p2 <= std_logic_vector(shift_right(unsigned(zext_ln14_fu_298_p1),to_integer(unsigned('0' & sext_ln14_fu_294_p1(31-1 downto 0)))));
    retVal_6_fu_308_p1 <= retVal_5_fu_302_p2(1 - 1 downto 0);
    retVal_fu_328_p3 <= (ap_const_lv1_0 & zext_ln42_fu_324_p1);
    ret_1_out <= ret_3_fu_372_p3;

    ret_1_out_ap_vld_assign_proc : process(ap_CS_fsm_state3, and_ln57_fu_396_p2)
    begin
        if (((ap_const_lv1_0 = and_ln57_fu_396_p2) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            ret_1_out_ap_vld <= ap_const_logic_1;
        else 
            ret_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    ret_3_fu_372_p3 <= 
        ret_fu_355_p3 when (icmp_ln1076_fu_362_p2(0) = '1') else 
        sub_ln229_fu_367_p2;
    ret_fu_355_p3 <= (tmp_s_reg_513 & or_ln1543_fu_350_p2);
        sext_ln14_fu_294_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln14_fu_289_p2),32));

    shl_ln_fu_227_p3 <= (trunc_ln1543_fu_223_p1 & ap_const_lv1_0);
    state_bstate_currIdx_7_out <= state_bstate_currIdx_6_fu_94;

    state_bstate_currIdx_7_out_ap_vld_assign_proc : process(ap_CS_fsm_state3, and_ln57_fu_396_p2)
    begin
        if (((ap_const_lv1_0 = and_ln57_fu_396_p2) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            state_bstate_currIdx_7_out_ap_vld <= ap_const_logic_1;
        else 
            state_bstate_currIdx_7_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    state_bstate_held_aligned_word_7_out <= aligned_word_fu_90;

    state_bstate_held_aligned_word_7_out_ap_vld_assign_proc : process(ap_CS_fsm_state3, and_ln57_fu_396_p2)
    begin
        if (((ap_const_lv1_0 = and_ln57_fu_396_p2) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            state_bstate_held_aligned_word_7_out_ap_vld <= ap_const_logic_1;
        else 
            state_bstate_held_aligned_word_7_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    state_bstate_n_bits_held_7_out <= state_bstate_n_bits_held_6_fu_86;

    state_bstate_n_bits_held_7_out_ap_vld_assign_proc : process(ap_CS_fsm_state3, and_ln57_fu_396_p2)
    begin
        if (((ap_const_lv1_0 = and_ln57_fu_396_p2) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            state_bstate_n_bits_held_7_out_ap_vld <= ap_const_logic_1;
        else 
            state_bstate_n_bits_held_7_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    sub_ln229_fu_367_p2 <= std_logic_vector(unsigned(ret_fu_355_p3) - unsigned(baeState_0_constprop_load));
    tmp_fu_316_p3 <= bStream_q0(7 downto 7);
    trunc_ln1543_fu_223_p1 <= ap_sig_allocacmp_p_in_load(8 - 1 downto 0);
    trunc_ln76_fu_381_p1 <= ret_3_fu_372_p3(31 - 1 downto 0);
    zext_ln11_fu_312_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(retVal_6_fu_308_p1),9));
    zext_ln13_fu_235_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_state_bstate_n_bits_held_6_load),9));
    zext_ln14_fu_298_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(aligned_word_fu_90),32));
    zext_ln42_fu_324_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_316_p3),8));
    zext_ln5_fu_265_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_state_bstate_currIdx_6_load),64));
end behav;
