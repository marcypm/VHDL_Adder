-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/01/2017 15:58:19"
                                                            
-- Vhdl Test Bench template for design  :  g54_6bitadderBLOCK
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;                                

ENTITY g54_6bitadderBLOCK_vhd_tst IS
END g54_6bitadderBLOCK_vhd_tst;
ARCHITECTURE g54_6bitadderBLOCK_arch OF g54_6bitadderBLOCK_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL c_in : STD_LOGIC;
SIGNAL c_out : STD_LOGIC;
SIGNAL sum : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT g54_6bitadderBLOCK
	PORT (
	A : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	c_in : IN STD_LOGIC;
	c_out : OUT STD_LOGIC;
	sum : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g54_6bitadderBLOCK
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	c_in => c_in,
	c_out => c_out,
	sum => sum
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           /Users/Eva/Desktop/McGill/ECSE 323 DSD/Quartus/readme.txt
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN               
      FOR k in std_logic range '0' to '1' LOOP
      c_in <= k;                                        
        FOR i IN 0 to 63 LOOP
          A <= std_logic_vector(to_unsigned(i,6));
          FOR j In 0 to 63 LOOP
            B<= std_logic_vector(to_unsigned(j,6));
            WAIT FOR 10 ns;
          
        -- code executes for every event on sensitivity list  
      END LOOP;
    END LOOP;
  END LOOP;
WAIT;                                                        
END PROCESS always;                                          
END g54_6bitadderBLOCK_arch;
