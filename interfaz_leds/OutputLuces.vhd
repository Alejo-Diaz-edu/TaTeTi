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
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Mon Nov 10 15:36:53 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY OutputLuces IS 
	PORT
	(
		ClkMain :  IN  STD_LOGIC;
		LOCKOUT :  IN  STD_LOGIC;
		CONTROL :  IN  STD_LOGIC;
		SalidaLeds :  OUT  STD_LOGIC;
		BITCLK :  OUT  STD_LOGIC
	);
END OutputLuces;

ARCHITECTURE bdf_type OF OutputLuces IS 

COMPONENT pll
	PORT(inclk0 : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC;
		 c1 : OUT STD_LOGIC;
		 c2 : OUT STD_LOGIC;
		 locked : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_mux0
	PORT(data1 : IN STD_LOGIC;
		 data0 : IN STD_LOGIC;
		 sel : IN STD_LOGIC;
		 result : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;


BEGIN 



b2v_inst : pll
PORT MAP(inclk0 => ClkMain,
		 c0 => SYNTHESIZED_WIRE_1,
		 c1 => SYNTHESIZED_WIRE_4,
		 c2 => SYNTHESIZED_WIRE_5,
		 locked => SYNTHESIZED_WIRE_6);


BITCLK <= SYNTHESIZED_WIRE_6 AND SYNTHESIZED_WIRE_1;


SalidaLeds <= LOCKOUT AND SYNTHESIZED_WIRE_2 AND SYNTHESIZED_WIRE_6;


b2v_MUX_CLOCK : lpm_mux0
PORT MAP(data1 => SYNTHESIZED_WIRE_4,
		 data0 => SYNTHESIZED_WIRE_5,
		 sel => CONTROL,
		 result => SYNTHESIZED_WIRE_2);


END bdf_type;