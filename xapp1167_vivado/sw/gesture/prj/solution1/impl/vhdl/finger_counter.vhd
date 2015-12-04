-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2013.2
-- Copyright (C) 2013 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity finger_counter is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    src_rows_V_read : IN STD_LOGIC_VECTOR (11 downto 0);
    src_cols_V_read : IN STD_LOGIC_VECTOR (11 downto 0);
    src_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    src_data_stream_0_V_empty_n : IN STD_LOGIC;
    src_data_stream_0_V_read : OUT STD_LOGIC;
    dst_data_stream_0_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst_data_stream_0_V_full_n : IN STD_LOGIC;
    dst_data_stream_0_V_write : OUT STD_LOGIC;
    dst_data_stream_1_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst_data_stream_1_V_full_n : IN STD_LOGIC;
    dst_data_stream_1_V_write : OUT STD_LOGIC;
    dst_data_stream_2_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst_data_stream_2_V_full_n : IN STD_LOGIC;
    dst_data_stream_2_V_write : OUT STD_LOGIC );
end;


architecture behav of finger_counter is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_pp0_stg0_fsm_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv13_1 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal t_V_reg_112 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_sig_bdd_47 : BOOLEAN;
    signal op2_assign_fu_128_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal op2_assign_reg_239 : STD_LOGIC_VECTOR (12 downto 0);
    signal op2_assign_3_fu_138_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal op2_assign_3_reg_244 : STD_LOGIC_VECTOR (12 downto 0);
    signal i_V_fu_158_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal i_V_reg_252 : STD_LOGIC_VECTOR (11 downto 0);
    signal not_fu_164_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal not_reg_257 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_fu_153_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal notrhs_fu_169_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal notrhs_reg_262 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_7_fu_179_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_7_reg_267 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_ppiten_pp0_it0 : STD_LOGIC := '0';
    signal or_cond_reg_276 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_bdd_82 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it1 : STD_LOGIC := '0';
    signal ap_reg_ppstg_tmp_7_reg_267_pp0_it1 : STD_LOGIC_VECTOR (0 downto 0);
    signal not_or_cond_reg_280 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_ppstg_not_or_cond_reg_280_pp0_it1 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_bdd_102 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it2 : STD_LOGIC := '0';
    signal j_V_fu_184_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal or_cond_fu_195_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal not_or_cond_fu_206_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal t_V_5_reg_101 : STD_LOGIC_VECTOR (11 downto 0);
    signal pixel_in_val_fu_58 : STD_LOGIC_VECTOR (7 downto 0);
    signal retval_i4_cast_fu_124_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal retval_i_cast_fu_134_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_cast_fu_149_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_9_cast_fu_175_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal not4_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal notlhs_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);


begin



    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- ap_done_reg assign process. --
    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_ST_st2_fsm_1 = ap_CS_fsm) and (tmp_s_fu_153_p2 = ap_const_lv1_0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it0 assign process. --
    ap_reg_ppiten_pp0_it0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
            else
                if (((ap_ST_pp0_stg0_fsm_2 = ap_CS_fsm) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))) and (ap_const_lv1_0 = tmp_7_fu_179_p2))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
                elsif (((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((tmp_s_fu_153_p2 = ap_const_lv1_0)))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it1 assign process. --
    ap_reg_ppiten_pp0_it1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
            else
                if (((ap_ST_pp0_stg0_fsm_2 = ap_CS_fsm) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))) and not((ap_const_lv1_0 = tmp_7_fu_179_p2)))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
                elsif ((((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((tmp_s_fu_153_p2 = ap_const_lv1_0))) or ((ap_ST_pp0_stg0_fsm_2 = ap_CS_fsm) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))) and (ap_const_lv1_0 = tmp_7_fu_179_p2)))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it2 assign process. --
    ap_reg_ppiten_pp0_it2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
            else
                if (((ap_ST_pp0_stg0_fsm_2 = ap_CS_fsm) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then 
                    ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
                elsif (((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((tmp_s_fu_153_p2 = ap_const_lv1_0)))) then 
                    ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- pixel_in_val_fu_58 assign process. --
    pixel_in_val_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_pp0_stg0_fsm_2 = ap_CS_fsm) and not((ap_const_lv1_0 = tmp_7_reg_267)) and not((ap_const_lv1_0 = or_cond_reg_276)) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then 
                pixel_in_val_fu_58 <= src_data_stream_0_V_dout;
            elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_47))) then 
                pixel_in_val_fu_58 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;

    -- t_V_5_reg_101 assign process. --
    t_V_5_reg_101_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_pp0_stg0_fsm_2 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))) and (ap_const_lv1_0 = tmp_7_fu_179_p2))) then 
                t_V_5_reg_101 <= i_V_reg_252;
            elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_47))) then 
                t_V_5_reg_101 <= ap_const_lv12_0;
            end if; 
        end if;
    end process;

    -- t_V_reg_112 assign process. --
    t_V_reg_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((tmp_s_fu_153_p2 = ap_const_lv1_0)))) then 
                t_V_reg_112 <= ap_const_lv12_0;
            elsif (((ap_ST_pp0_stg0_fsm_2 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))) and not((ap_const_lv1_0 = tmp_7_fu_179_p2)))) then 
                t_V_reg_112 <= j_V_fu_184_p2;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_pp0_stg0_fsm_2 = ap_CS_fsm) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then
                ap_reg_ppstg_not_or_cond_reg_280_pp0_it1 <= not_or_cond_reg_280;
                ap_reg_ppstg_tmp_7_reg_267_pp0_it1 <= tmp_7_reg_267;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st2_fsm_1 = ap_CS_fsm)) then
                i_V_reg_252 <= i_V_fu_158_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_pp0_stg0_fsm_2 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))) and not((ap_const_lv1_0 = tmp_7_fu_179_p2)))) then
                not_or_cond_reg_280 <= not_or_cond_fu_206_p2;
                or_cond_reg_276 <= or_cond_fu_195_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((tmp_s_fu_153_p2 = ap_const_lv1_0)))) then
                not_reg_257 <= not_fu_164_p2;
                notrhs_reg_262 <= notrhs_fu_169_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_47))) then
                op2_assign_3_reg_244 <= op2_assign_3_fu_138_p2;
                op2_assign_reg_239 <= op2_assign_fu_128_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_pp0_stg0_fsm_2 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then
                tmp_7_reg_267 <= tmp_7_fu_179_p2;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_CS_fsm , ap_sig_bdd_47 , tmp_s_fu_153_p2 , tmp_7_fu_179_p2 , ap_reg_ppiten_pp0_it0 , ap_sig_bdd_82 , ap_reg_ppiten_pp0_it1 , ap_sig_bdd_102 , ap_reg_ppiten_pp0_it2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not(ap_sig_bdd_47)) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if ((tmp_s_fu_153_p2 = ap_const_lv1_0)) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                end if;
            when ap_ST_pp0_stg0_fsm_2 => 
                if ((not(((ap_ST_pp0_stg0_fsm_2 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))) and not((ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))) and (ap_const_lv1_0 = tmp_7_fu_179_p2) and not((ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                elsif ((((ap_ST_pp0_stg0_fsm_2 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))) and not((ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))) and (ap_const_lv1_0 = tmp_7_fu_179_p2) and not((ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm, tmp_s_fu_153_p2)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_ST_st2_fsm_1 = ap_CS_fsm) and (tmp_s_fu_153_p2 = ap_const_lv1_0)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_CS_fsm)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_ST_st1_fsm_0 = ap_CS_fsm))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_CS_fsm, tmp_s_fu_153_p2)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and (tmp_s_fu_153_p2 = ap_const_lv1_0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_bdd_102 assign process. --
    ap_sig_bdd_102_assign_proc : process(dst_data_stream_0_V_full_n, dst_data_stream_1_V_full_n, dst_data_stream_2_V_full_n, ap_reg_ppstg_tmp_7_reg_267_pp0_it1, ap_reg_ppstg_not_or_cond_reg_280_pp0_it1)
    begin
                ap_sig_bdd_102 <= (((dst_data_stream_0_V_full_n = ap_const_logic_0) and not((ap_const_lv1_0 = ap_reg_ppstg_tmp_7_reg_267_pp0_it1)) and not((ap_const_lv1_0 = ap_reg_ppstg_not_or_cond_reg_280_pp0_it1))) or (not((ap_const_lv1_0 = ap_reg_ppstg_tmp_7_reg_267_pp0_it1)) and not((ap_const_lv1_0 = ap_reg_ppstg_not_or_cond_reg_280_pp0_it1)) and (dst_data_stream_1_V_full_n = ap_const_logic_0)) or (not((ap_const_lv1_0 = ap_reg_ppstg_tmp_7_reg_267_pp0_it1)) and not((ap_const_lv1_0 = ap_reg_ppstg_not_or_cond_reg_280_pp0_it1)) and (dst_data_stream_2_V_full_n = ap_const_logic_0)));
    end process;


    -- ap_sig_bdd_47 assign process. --
    ap_sig_bdd_47_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_sig_bdd_47 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    -- ap_sig_bdd_82 assign process. --
    ap_sig_bdd_82_assign_proc : process(src_data_stream_0_V_empty_n, tmp_7_reg_267, or_cond_reg_276)
    begin
                ap_sig_bdd_82 <= ((src_data_stream_0_V_empty_n = ap_const_logic_0) and not((ap_const_lv1_0 = tmp_7_reg_267)) and not((ap_const_lv1_0 = or_cond_reg_276)));
    end process;

    dst_data_stream_0_V_din <= pixel_in_val_fu_58;

    -- dst_data_stream_0_V_write assign process. --
    dst_data_stream_0_V_write_assign_proc : process(ap_CS_fsm, ap_sig_bdd_82, ap_reg_ppiten_pp0_it1, ap_reg_ppstg_tmp_7_reg_267_pp0_it1, ap_reg_ppstg_not_or_cond_reg_280_pp0_it1, ap_sig_bdd_102, ap_reg_ppiten_pp0_it2)
    begin
        if (((ap_ST_pp0_stg0_fsm_2 = ap_CS_fsm) and not((ap_const_lv1_0 = ap_reg_ppstg_tmp_7_reg_267_pp0_it1)) and not((ap_const_lv1_0 = ap_reg_ppstg_not_or_cond_reg_280_pp0_it1)) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then 
            dst_data_stream_0_V_write <= ap_const_logic_1;
        else 
            dst_data_stream_0_V_write <= ap_const_logic_0;
        end if; 
    end process;

    dst_data_stream_1_V_din <= pixel_in_val_fu_58;

    -- dst_data_stream_1_V_write assign process. --
    dst_data_stream_1_V_write_assign_proc : process(ap_CS_fsm, ap_sig_bdd_82, ap_reg_ppiten_pp0_it1, ap_reg_ppstg_tmp_7_reg_267_pp0_it1, ap_reg_ppstg_not_or_cond_reg_280_pp0_it1, ap_sig_bdd_102, ap_reg_ppiten_pp0_it2)
    begin
        if (((ap_ST_pp0_stg0_fsm_2 = ap_CS_fsm) and not((ap_const_lv1_0 = ap_reg_ppstg_tmp_7_reg_267_pp0_it1)) and not((ap_const_lv1_0 = ap_reg_ppstg_not_or_cond_reg_280_pp0_it1)) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then 
            dst_data_stream_1_V_write <= ap_const_logic_1;
        else 
            dst_data_stream_1_V_write <= ap_const_logic_0;
        end if; 
    end process;

    dst_data_stream_2_V_din <= pixel_in_val_fu_58;

    -- dst_data_stream_2_V_write assign process. --
    dst_data_stream_2_V_write_assign_proc : process(ap_CS_fsm, ap_sig_bdd_82, ap_reg_ppiten_pp0_it1, ap_reg_ppstg_tmp_7_reg_267_pp0_it1, ap_reg_ppstg_not_or_cond_reg_280_pp0_it1, ap_sig_bdd_102, ap_reg_ppiten_pp0_it2)
    begin
        if (((ap_ST_pp0_stg0_fsm_2 = ap_CS_fsm) and not((ap_const_lv1_0 = ap_reg_ppstg_tmp_7_reg_267_pp0_it1)) and not((ap_const_lv1_0 = ap_reg_ppstg_not_or_cond_reg_280_pp0_it1)) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then 
            dst_data_stream_2_V_write <= ap_const_logic_1;
        else 
            dst_data_stream_2_V_write <= ap_const_logic_0;
        end if; 
    end process;

    i_V_fu_158_p2 <= std_logic_vector(unsigned(t_V_5_reg_101) + unsigned(ap_const_lv12_1));
    j_V_fu_184_p2 <= std_logic_vector(unsigned(t_V_reg_112) + unsigned(ap_const_lv12_1));
    not4_fu_190_p2 <= "1" when (unsigned(t_V_reg_112) < unsigned(src_cols_V_read)) else "0";
    not_fu_164_p2 <= "1" when (unsigned(t_V_5_reg_101) < unsigned(src_rows_V_read)) else "0";
    not_or_cond_fu_206_p2 <= (notrhs_reg_262 and notlhs_fu_200_p2);
    notlhs_fu_200_p2 <= "0" when (t_V_reg_112 = ap_const_lv12_0) else "1";
    notrhs_fu_169_p2 <= "0" when (t_V_5_reg_101 = ap_const_lv12_0) else "1";
    op2_assign_3_fu_138_p2 <= std_logic_vector(unsigned(retval_i_cast_fu_134_p1) + unsigned(ap_const_lv13_1));
    op2_assign_fu_128_p2 <= std_logic_vector(unsigned(retval_i4_cast_fu_124_p1) + unsigned(ap_const_lv13_1));
    or_cond_fu_195_p2 <= (not_reg_257 and not4_fu_190_p2);
    retval_i4_cast_fu_124_p1 <= std_logic_vector(resize(unsigned(src_rows_V_read),13));
    retval_i_cast_fu_134_p1 <= std_logic_vector(resize(unsigned(src_cols_V_read),13));

    -- src_data_stream_0_V_read assign process. --
    src_data_stream_0_V_read_assign_proc : process(ap_CS_fsm, tmp_7_reg_267, or_cond_reg_276, ap_sig_bdd_82, ap_reg_ppiten_pp0_it1, ap_sig_bdd_102, ap_reg_ppiten_pp0_it2)
    begin
        if (((ap_ST_pp0_stg0_fsm_2 = ap_CS_fsm) and not((ap_const_lv1_0 = tmp_7_reg_267)) and not((ap_const_lv1_0 = or_cond_reg_276)) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_sig_bdd_82 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or (ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then 
            src_data_stream_0_V_read <= ap_const_logic_1;
        else 
            src_data_stream_0_V_read <= ap_const_logic_0;
        end if; 
    end process;

    tmp_7_fu_179_p2 <= "1" when (unsigned(tmp_9_cast_fu_175_p1) < unsigned(op2_assign_3_reg_244)) else "0";
    tmp_9_cast_fu_175_p1 <= std_logic_vector(resize(unsigned(t_V_reg_112),13));
    tmp_cast_fu_149_p1 <= std_logic_vector(resize(unsigned(t_V_5_reg_101),13));
    tmp_s_fu_153_p2 <= "1" when (unsigned(tmp_cast_fu_149_p1) < unsigned(op2_assign_reg_239)) else "0";
end behav;
