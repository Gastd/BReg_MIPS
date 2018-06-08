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
use ieee.numeric_std.all;

entity breg_tb is
end breg_tb;
architecture breg_arch of breg_tb is
-- constants
-- signals
signal clk : std_logic;
signal rst : std_logic;
signal wren : std_logic;

signal radd1 : std_logic_vector(4 downto 0);
signal radd2 : std_logic_vector(4 downto 0);
signal wadd : std_logic_vector(4 downto 0);

signal wdata : std_logic_vector(31 downto 0);
signal r1 : std_logic_vector(31 downto 0);
signal r2 : std_logic_vector(31 downto 0);

component breg
    port (
    clk : in std_logic;
    rst : in std_logic;
    wren : in std_logic;
    radd1 : in std_logic_vector(4 downto 0);
    radd2 : in std_logic_vector(4 downto 0);
    wadd : in std_logic_vector(4 downto 0);
    wdata : in std_logic_vector(31 downto 0);
    r1 : out std_logic_vector(31 downto 0);
    r2 : out std_logic_vector(31 downto 0)
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
    constant half_period : time := 100 ns;
begin    
    -- reseting registers    
    rst <= '1' after 1 ns;
    wait for 2 ps;
    -- writing in register zero
    rst <= '0';
     -- 0
    wadd <= "00000"; wren <= '1'; wdata <= (std_logic_vector(to_unsigned(12245, 32)));
    wait for 200 ps;
     -- 1
    wadd <= "00001"; wren <= '1'; wdata <= (std_logic_vector(to_unsigned(1, 32)));
    wait for 200 ps;
     -- 2
    wadd <= "00010"; wren <= '1'; wdata <= (std_logic_vector(to_unsigned(2, 32)));
    wait for 200 ps;
     -- 3
    wadd <= "00011"; wren <= '1'; wdata <= (std_logic_vector(to_unsigned(3, 32)));
    wait for 200 ps;
     -- 4
    wadd <= "00100"; wren <= '1'; wdata <= (std_logic_vector(to_unsigned(4, 32)));
    wait for 200 ps;
     -- 5
    wadd <= "00101"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(5, 32)));
    wait for 200 ps;
     -- 6
    wadd <= "00110"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(6, 32)));
    wait for 200 ps;
     -- 7
    wadd <= "00111"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(7, 32)));
    wait for 200 ps;
     -- 8
    wadd <= "01000"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(8, 32)));
    wait for 200 ps;
     -- 9
    wadd <= "01001"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(9, 32)));
    wait for 200 ps;
     -- 10
    wadd <= "01010"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(10, 32)));
    wait for 200 ps;
     -- 11
    wadd <= "01011"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(11, 32)));
    wait for 200 ps;
     -- 12
    wadd <= "01100"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(12, 32)));
    wait for 200 ps;
     -- 13
    wadd <= "01101"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(13, 32)));
    wait for 200 ps;
     -- 14
    wadd <= "01110"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(14, 32)));
    wait for 200 ps;
     -- 15
    wadd <= "01111"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(15, 32)));
    wait for 200 ps;
     -- 16
    wadd <= "10000"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(16, 32)));
    wait for 200 ps;
     -- 17
    wadd <= "10001"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(17, 32)));
    wait for 200 ps;
     -- 18
    wadd <= "10010"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(18, 32)));
    wait for 200 ps;
     -- 19
    wadd <= "10011"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(19, 32)));
    wait for 200 ps;
     -- 20
    wadd <= "10100"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(20, 32)));
    wait for 200 ps;
     -- 21
    wadd <= "10101"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(21, 32)));
    wait for 200 ps;
     -- 22
    wadd <= "10110"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(22, 32)));
    wait for 200 ps;
     -- 23
    wadd <= "10111"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(23, 32)));
    wait for 200 ps;
     -- 24
    wadd <= "11000"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(24, 32)));
    wait for 200 ps;
     -- 25
    wadd <= "11001"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(25, 32)));
    wait for 200 ps;
     -- 26
    wadd <= "11010"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(26, 32)));
    wait for 200 ps;
     -- 27
    wadd <= "11011"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(27, 32)));
    wait for 200 ps;
     -- 28
    wadd <= "11100"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(28, 32)));
    wait for 200 ps;
     -- 29
    wadd <= "11101"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(29, 32)));
    wait for 200 ps;
     -- 30
    wadd <= "11110"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(30, 32)));
    wait for 200 ps;
     -- 31
    wadd <= "11111"; wren <= '1'; wdata <=  (std_logic_vector(to_unsigned(31, 32)));
    wait for 200 ps;
wait;
end process init;
end breg_arch;
