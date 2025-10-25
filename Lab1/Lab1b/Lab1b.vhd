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
-- CREATED		"Wed Oct 22 16:18:08 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Lab1b IS 
	PORT
	(
		x1 :  IN  STD_LOGIC;
		x2 :  IN  STD_LOGIC;
		f :  OUT  STD_LOGIC
	);
END Lab1b;

ARCHITECTURE bdf_type OF Lab1b IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_3 <= x1 AND SYNTHESIZED_WIRE_0;


SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_1 AND x2;


f <= SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3;


SYNTHESIZED_WIRE_0 <= NOT(x2);



SYNTHESIZED_WIRE_1 <= NOT(x1);



END bdf_type;