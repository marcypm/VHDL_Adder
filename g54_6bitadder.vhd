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
-- CREATED		"Mon Jan 30 19:13:10 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY g54_6bitadder IS 
	PORT
	(
		c_in :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		c_out :  OUT  STD_LOGIC;
		sum :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END g54_6bitadder;

ARCHITECTURE bdf_type OF g54_6bitadder IS 

COMPONENT g54_fulladder
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 c_in : IN STD_LOGIC;
		 sum : OUT STD_LOGIC;
		 c_out : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	sum_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 



b2v_inst : g54_fulladder
PORT MAP(A => A(0),
		 B => B(0),
		 c_in => c_in,
		 sum => sum_ALTERA_SYNTHESIZED(0),
		 c_out => SYNTHESIZED_WIRE_0);


b2v_inst1 : g54_fulladder
PORT MAP(A => A(1),
		 B => B(1),
		 c_in => SYNTHESIZED_WIRE_0,
		 sum => sum_ALTERA_SYNTHESIZED(1),
		 c_out => SYNTHESIZED_WIRE_1);


b2v_inst2 : g54_fulladder
PORT MAP(A => A(2),
		 B => B(2),
		 c_in => SYNTHESIZED_WIRE_1,
		 sum => sum_ALTERA_SYNTHESIZED(2),
		 c_out => SYNTHESIZED_WIRE_2);


b2v_inst3 : g54_fulladder
PORT MAP(A => A(3),
		 B => B(3),
		 c_in => SYNTHESIZED_WIRE_2,
		 sum => sum_ALTERA_SYNTHESIZED(3),
		 c_out => SYNTHESIZED_WIRE_3);


b2v_inst4 : g54_fulladder
PORT MAP(A => A(4),
		 B => B(4),
		 c_in => SYNTHESIZED_WIRE_3,
		 sum => sum_ALTERA_SYNTHESIZED(4),
		 c_out => SYNTHESIZED_WIRE_4);


b2v_inst5 : g54_fulladder
PORT MAP(A => A(5),
		 B => B(5),
		 c_in => SYNTHESIZED_WIRE_4,
		 sum => sum_ALTERA_SYNTHESIZED(5),
		 c_out => c_out);

sum <= sum_ALTERA_SYNTHESIZED;

END bdf_type;