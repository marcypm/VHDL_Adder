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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
-- CREATED		"Mon Jan 30 19:13:50 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY g54_6bitadderBLOCK IS 
	PORT
	(
		c_in :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(0 TO 5);
		B :  IN  STD_LOGIC_VECTOR(0 TO 5);
		c_out :  OUT  STD_LOGIC;
		sum :  OUT  STD_LOGIC_VECTOR(0 TO 5)
	);
END g54_6bitadderBLOCK;

ARCHITECTURE bdf_type OF g54_6bitadderBLOCK IS 

COMPONENT g54_6bitadder
	PORT(c_in : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(0 TO 5);
		 B : IN STD_LOGIC_VECTOR(0 TO 5);
		 c_out : OUT STD_LOGIC;
		 sum : OUT STD_LOGIC_VECTOR(0 TO 5)
	);
END COMPONENT;



BEGIN 



b2v_inst : g54_6bitadder
PORT MAP(c_in => c_in,
		 A => A,
		 B => B,
		 c_out => c_out,
		 sum => sum);


END bdf_type;