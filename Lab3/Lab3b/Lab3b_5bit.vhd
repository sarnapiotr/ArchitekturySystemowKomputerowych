-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"
-- CREATED		"Sat Oct 25 18:39:56 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Lab3b_5bit IS 
	PORT
	(
		A0 :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		A2 :  IN  STD_LOGIC;
		B2 :  IN  STD_LOGIC;
		A3 :  IN  STD_LOGIC;
		B3 :  IN  STD_LOGIC;
		A4 :  IN  STD_LOGIC;
		B4 :  IN  STD_LOGIC;
		S0 :  OUT  STD_LOGIC;
		S1 :  OUT  STD_LOGIC;
		S2 :  OUT  STD_LOGIC;
		S3 :  OUT  STD_LOGIC;
		S4 :  OUT  STD_LOGIC
	);
END Lab3b_5bit;

ARCHITECTURE bdf_type OF Lab3b_5bit IS 

COMPONENT lab3b
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 S : OUT STD_LOGIC;
		 Cout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



b2v_inst : lab3b
PORT MAP(A => A0,
		 B => B0,
		 Cin => '0', 
		 S => S0,
		 Cout => SYNTHESIZED_WIRE_0);


b2v_inst2 : lab3b
PORT MAP(A => A1,
		 B => B1,
		 Cin => SYNTHESIZED_WIRE_0,
		 S => S1,
		 Cout => SYNTHESIZED_WIRE_1);


b2v_inst3 : lab3b
PORT MAP(A => A2,
		 B => B2,
		 Cin => SYNTHESIZED_WIRE_1,
		 S => S2,
		 Cout => SYNTHESIZED_WIRE_2);


b2v_inst4 : lab3b
PORT MAP(A => A3,
		 B => B3,
		 Cin => SYNTHESIZED_WIRE_2,
		 S => S3,
		 Cout => SYNTHESIZED_WIRE_3);


b2v_inst5 : lab3b
PORT MAP(A => A4,
		 B => B4,
		 Cin => SYNTHESIZED_WIRE_3,
		 S => S4);


END bdf_type;