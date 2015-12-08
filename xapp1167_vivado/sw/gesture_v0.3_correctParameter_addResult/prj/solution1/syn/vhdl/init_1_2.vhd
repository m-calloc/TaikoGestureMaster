-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2013.2
-- Copyright (C) 2013 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity init_1_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_rows : IN STD_LOGIC_VECTOR (31 downto 0);
    p_cols : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (11 downto 0) );
end;


architecture behav of init_1_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_sig_bdd_29 : BOOLEAN;
    signal tmp_fu_29_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_20_fu_33_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_return_0_preg : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    signal ap_return_1_preg : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);


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
                elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_29))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_return_0_preg assign process. --
    ap_return_0_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_0_preg <= ap_const_lv12_0;
            else
                if (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_29))) then 
                    ap_return_0_preg <= tmp_fu_29_p1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_return_1_preg assign process. --
    ap_return_1_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_1_preg <= ap_const_lv12_0;
            else
                if (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_29))) then 
                    ap_return_1_preg <= tmp_20_fu_33_p1;
                end if; 
            end if;
        end if;
    end process;


    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_CS_fsm , ap_sig_bdd_29)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                ap_NS_fsm <= ap_ST_st1_fsm_0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm, ap_sig_bdd_29)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_29)))) then 
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
    ap_ready_assign_proc : process(ap_CS_fsm, ap_sig_bdd_29)
    begin
        if (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_29))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_return_0 assign process. --
    ap_return_0_assign_proc : process(ap_CS_fsm, ap_sig_bdd_29, tmp_fu_29_p1, ap_return_0_preg)
    begin
        if (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_29))) then 
            ap_return_0 <= tmp_fu_29_p1;
        else 
            ap_return_0 <= ap_return_0_preg;
        end if; 
    end process;


    -- ap_return_1 assign process. --
    ap_return_1_assign_proc : process(ap_CS_fsm, ap_sig_bdd_29, tmp_20_fu_33_p1, ap_return_1_preg)
    begin
        if (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_29))) then 
            ap_return_1 <= tmp_20_fu_33_p1;
        else 
            ap_return_1 <= ap_return_1_preg;
        end if; 
    end process;


    -- ap_sig_bdd_29 assign process. --
    ap_sig_bdd_29_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_sig_bdd_29 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

    tmp_20_fu_33_p1 <= p_cols(12 - 1 downto 0);
    tmp_fu_29_p1 <= p_rows(12 - 1 downto 0);
end behav;
