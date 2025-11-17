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
-- CREATED		"Mon Nov 17 17:02:58 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY MainCircuit IS 
	PORT
	(
		CLKPLACA :  IN  STD_LOGIC;
		turno :  IN  STD_LOGIC;
		color_j1 :  IN  STD_LOGIC;
		color_j2 :  IN  STD_LOGIC;
		tablero_1 :  IN  STD_LOGIC_VECTOR(9 DOWNTO 1);
		tablero_2 :  IN  STD_LOGIC_VECTOR(9 DOWNTO 1);
		vidas_1 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 1);
		vidas_2 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 1);
		ALOSLEDs :  OUT  STD_LOGIC
	);
END MainCircuit;

ARCHITECTURE bdf_type OF MainCircuit IS 

COMPONENT outputluces
	PORT(ClkMain : IN STD_LOGIC;
		 LOCKOUT : IN STD_LOGIC;
		 CONTROL : IN STD_LOGIC;
		 SalidaLeds : OUT STD_LOGIC;
		 BITCLK : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT colores
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 output : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;

COMPONENT decoluces
	PORT(turno : IN STD_LOGIC;
		 CLKBIT : IN STD_LOGIC;
		 color_j1 : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 color_j2 : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 E0 : IN STD_LOGIC_VECTOR(9 DOWNTO 1);
		 E1 : IN STD_LOGIC_VECTOR(9 DOWNTO 1);
		 ERROR : IN STD_LOGIC_VECTOR(16 DOWNTO 1);
		 vidas_j1 : IN STD_LOGIC_VECTOR(3 DOWNTO 1);
		 vidas_j2 : IN STD_LOGIC_VECTOR(3 DOWNTO 1);
		 ControlBit : OUT STD_LOGIC;
		 STOP : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(0 TO 15);


BEGIN 
SYNTHESIZED_WIRE_8 <= '0';
SYNTHESIZED_WIRE_7 <= "0000000000000000";



b2v_inst : outputluces
PORT MAP(ClkMain => CLKPLACA,
		 LOCKOUT => SYNTHESIZED_WIRE_0,
		 CONTROL => SYNTHESIZED_WIRE_1,
		 SalidaLeds => ALOSLEDs,
		 BITCLK => SYNTHESIZED_WIRE_4);


b2v_inst1 : colores
PORT MAP(clk => color_j1,
		 reset => SYNTHESIZED_WIRE_8,
		 output => SYNTHESIZED_WIRE_5);


b2v_inst2 : colores
PORT MAP(clk => color_j2,
		 reset => SYNTHESIZED_WIRE_8,
		 output => SYNTHESIZED_WIRE_6);


b2v_inst3 : decoluces
PORT MAP(turno => turno,
		 CLKBIT => SYNTHESIZED_WIRE_4,
		 color_j1 => SYNTHESIZED_WIRE_5,
		 color_j2 => SYNTHESIZED_WIRE_6,
		 E0 => tablero_2,
		 E1 => tablero_1,
		 ERROR => SYNTHESIZED_WIRE_7,
		 vidas_j1 => vidas_1,
		 vidas_j2 => vidas_2,
		 ControlBit => SYNTHESIZED_WIRE_1,
		 STOP => SYNTHESIZED_WIRE_0);




END bdf_type;