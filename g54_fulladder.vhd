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
-- CREATED		"Mon Jan 30 18:59:41 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY g54_fulladder IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		c_in :  IN  STD_LOGIC;
		sum :  OUT  STD_LOGIC;
		c_out :  OUT  STD_LOGIC
	);
END g54_fulladder;

ARCHITECTURE bdf_type OF g54_fulladder IS 

COMPONENT g54_halfadder
	PORT(A : IN STD_LOGIC_VECTOR(0 TO 0);
		 B : IN STD_LOGIC_VECTOR(0 TO 0);
		 sum : OUT STD_LOGIC;
		 carry : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



b2v_inst : g54_halfadder
PORT MAP(A(0) => A,
		 B(0) => B,
		 sum => SYNTHESIZED_WIRE_0,
		 carry => SYNTHESIZED_WIRE_1);


b2v_inst1 : g54_halfadder
PORT MAP(A(0) => SYNTHESIZED_WIRE_0,
		 B(0) => c_in,
		 sum => sum,
		 carry => SYNTHESIZED_WIRE_2);


c_out <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


END bdf_type;