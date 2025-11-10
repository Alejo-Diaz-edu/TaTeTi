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
-- CREATED		"Mon Nov 10 17:56:32 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY antirrebote IS 
	PORT
	(
		reset :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		entrada :  IN  STD_LOGIC;
		entrada_filtrada :  OUT  STD_LOGIC
	);
END antirrebote;

ARCHITECTURE bdf_type OF antirrebote IS 

COMPONENT fsm_antirrebote
	PORT(reset : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 x : IN STD_LOGIC;
		 fin_temp : IN STD_LOGIC;
		 ini_temp : OUT STD_LOGIC;
		 z : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT temporizador
GENERIC (CUENTA_MAX : INTEGER
			);
	PORT(reset : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 ini_temp : IN STD_LOGIC;
		 fin_temp : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 



b2v_inst : fsm_antirrebote
PORT MAP(reset => reset,
		 clock => clk,
		 x => entrada,
		 fin_temp => SYNTHESIZED_WIRE_0,
		 ini_temp => SYNTHESIZED_WIRE_1,
		 z => entrada_filtrada);


b2v_inst4 : temporizador
GENERIC MAP(CUENTA_MAX => 400
			)
PORT MAP(reset => reset,
		 clock => clk,
		 ini_temp => SYNTHESIZED_WIRE_1,
		 fin_temp => SYNTHESIZED_WIRE_0);


END bdf_type;