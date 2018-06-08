-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to 
-- suit user's needs .Comments are provided in each section to help the user 
-- fill out necessary details.                         
-- ***************************************************************************
-- Generated on "06/06/2018 13:51:06"
    
-- Vhdl Test Bench template for design  :  breg
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

library ieee;         
use ieee.std_logic_1164.all;

entity breg_tb is
end breg_tb;
architecture breg_arch of breg_tb is
-- constants
-- signals
signal clk : std_logic;
signal r1 : std_logic_vector(31 downto 0);
signal r2 : std_logic_vector(31 downto 0);
signal radd1 : std_logic_vector(4 downto 0);
signal radd2 : std_logic_vector(4 downto 0);
signal rst : std_logic;
signal wadd : std_logic_vector(4 downto 0);
signal wdata : std_logic_vector(31 downto 0);
signal wren : std_logic;
component breg
	port (
	clk : in std_logic;
	r1 : out std_logic_vector(31 downto 0);
	r2 : out std_logic_vector(31 downto 0);
	radd1 : in std_logic_vector(4 downto 0);
	radd2 : in std_logic_vector(4 downto 0);
	rst : in std_logic;
	wadd : in std_logic_vector(4 downto 0);
	wdata : in std_logic_vector(31 downto 0);
	wren : in std_logic
	);
end component;
begin
	i1 : breg
	port map (
-- list connections between master ports and signals
	clk => clk,
	r1 => r1,
	r2 => r2,
	radd1 => radd1,
	radd2 => radd2,
	rst => rst,
	wadd => wadd,
	wdata => wdata,
	wren => wren
	);
init : process
-- variable declarations
	constant half_period := 1 ns;
	signal clk : std_logic := '0';
begin    
	clk <= not clk after half_period;
        -- code that executes only once
wait;
end process init;
end breg_arch;
