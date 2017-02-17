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
-- CREATED		"Mon Jan 30 18:56:30 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY g54_halfadder IS 
	PORT
	(
		A :  IN  STD_LOGIC_VECTOR(0 TO 0);
		B :  IN  STD_LOGIC_VECTOR(0 TO 0);
		carry :  OUT  STD_LOGIC;
		sum :  OUT  STD_LOGIC
	);
END g54_halfadder;

ARCHITECTURE bdf_type OF g54_halfadder IS 



BEGIN 



sum <= A(0) XOR B(0);


carry <= A(0) AND B(0);


END bdf_type;