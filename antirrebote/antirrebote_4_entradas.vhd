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
-- CREATED		"Tue Nov 11 13:03:30 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY antirrebote_4_entradas IS 
	PORT
	(
		entrada_1 :  IN  STD_LOGIC;
		entrada_2 :  IN  STD_LOGIC;
		entrada_3 :  IN  STD_LOGIC;
		entrada_4 :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		entrada_filtrada_1 :  OUT  STD_LOGIC;
		entrada_filtrada_2 :  OUT  STD_LOGIC;
		entrada_filtrada_3 :  OUT  STD_LOGIC;
		entrada_filtrada_4 :  OUT  STD_LOGIC
	);
END antirrebote_4_entradas;

ARCHITECTURE bdf_type OF antirrebote_4_entradas IS 

COMPONENT antirrebote
	PORT(reset : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 entrada : IN STD_LOGIC;
		 entrada_filtrada : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_4 <= '0';



b2v_inst : antirrebote
PORT MAP(reset => SYNTHESIZED_WIRE_4,
		 clk => CLK,
		 entrada => entrada_1,
		 entrada_filtrada => entrada_filtrada_1);


b2v_inst1 : antirrebote
PORT MAP(reset => SYNTHESIZED_WIRE_4,
		 clk => CLK,
		 entrada => entrada_2,
		 entrada_filtrada => entrada_filtrada_2);


b2v_inst2 : antirrebote
PORT MAP(reset => SYNTHESIZED_WIRE_4,
		 clk => CLK,
		 entrada => entrada_3,
		 entrada_filtrada => entrada_filtrada_3);


b2v_inst3 : antirrebote
PORT MAP(reset => SYNTHESIZED_WIRE_4,
		 clk => CLK,
		 entrada => entrada_4,
		 entrada_filtrada => entrada_filtrada_4);



END bdf_type;