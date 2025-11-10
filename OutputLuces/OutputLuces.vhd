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
-- CREATED		"Thu Nov 06 17:41:17 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY OutputLuces IS 
	PORT
	(
		ClkMain :  IN  STD_LOGIC;
		NuevoInput :  IN  STD_LOGIC;
		Celda10 :  IN  STD_LOGIC_VECTOR(23 DOWNTO 0);
		Celda11 :  IN  STD_LOGIC_VECTOR(23 DOWNTO 0);
		Celda12 :  IN  STD_LOGIC_VECTOR(23 DOWNTO 0);
		Celda13 :  IN  STD_LOGIC_VECTOR(23 DOWNTO 0);
		Celda14 :  IN  STD_LOGIC_VECTOR(23 DOWNTO 0);
		Celda15 :  IN  STD_LOGIC_VECTOR(23 DOWNTO 0);
		Celda16 :  IN  STD_LOGIC_VECTOR(23 DOWNTO 0);
		Celda5 :  IN  STD_LOGIC_VECTOR(23 DOWNTO 0);
		Celda6 :  IN  STD_LOGIC_VECTOR(23 DOWNTO 0);
		Celda7 :  IN  STD_LOGIC_VECTOR(23 DOWNTO 0);
		Celda8 :  IN  STD_LOGIC_VECTOR(23 DOWNTO 0);
		Celda9 :  IN  STD_LOGIC_VECTOR(23 DOWNTO 0);
		CeldaA :  IN  STD_LOGIC_VECTOR(23 DOWNTO 0);
		CeldaB :  IN  STD_LOGIC_VECTOR(23 DOWNTO 0);
		CeldaC :  IN  STD_LOGIC_VECTOR(23 DOWNTO 0);
		CeldaD :  IN  STD_LOGIC_VECTOR(23 DOWNTO 0);
		SalidaLeds :  OUT  STD_LOGIC
	);
END OutputLuces;

ARCHITECTURE bdf_type OF OutputLuces IS 

COMPONENT pll
	PORT(inclk0 : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC;
		 c1 : OUT STD_LOGIC;
		 c2 : OUT STD_LOGIC;
		 c3 : OUT STD_LOGIC;
		 locked : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_mux1
	PORT(data0x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 data10x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 data11x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 data12x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 data13x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 data14x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 data15x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 data16x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 data2x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 data3x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 data4x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 data5x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 data6x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 data7x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 data8x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 data9x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_mux0
	PORT(data1 : IN STD_LOGIC;
		 data0 : IN STD_LOGIC;
		 sel : IN STD_LOGIC;
		 result : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_shiftreg0
	PORT(load : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 shiftout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_counter0
	PORT(clock : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 cout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(0 TO 23);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_2 <= "000000000000000000000000";




b2v_inst : pll
PORT MAP(inclk0 => ClkMain,
		 c0 => SYNTHESIZED_WIRE_1,
		 c1 => SYNTHESIZED_WIRE_11,
		 c2 => SYNTHESIZED_WIRE_12,
		 c3 => SYNTHESIZED_WIRE_5,
		 locked => SYNTHESIZED_WIRE_17);


SYNTHESIZED_WIRE_14 <= SYNTHESIZED_WIRE_17 AND SYNTHESIZED_WIRE_1;


b2v_inst19 : lpm_mux1
PORT MAP(data0x => CeldaA,
		 data10x => Celda11,
		 data11x => Celda12,
		 data12x => Celda13,
		 data13x => Celda14,
		 data14x => Celda15,
		 data15x => Celda16,
		 data16x => SYNTHESIZED_WIRE_2,
		 data1x => CeldaB,
		 data2x => CeldaC,
		 data3x => CeldaD,
		 data4x => Celda5,
		 data5x => Celda6,
		 data6x => Celda7,
		 data7x => Celda8,
		 data8x => Celda9,
		 data9x => Celda10,
		 sel => SYNTHESIZED_WIRE_3,
		 result => SYNTHESIZED_WIRE_15);


SYNTHESIZED_WIRE_7 <= SYNTHESIZED_WIRE_17 AND SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_16 <= SYNTHESIZED_WIRE_18 AND SYNTHESIZED_WIRE_7;


SalidaLeds <= SYNTHESIZED_WIRE_18 AND SYNTHESIZED_WIRE_9 AND SYNTHESIZED_WIRE_17;


b2v_MUX_CLOCK : lpm_mux0
PORT MAP(data1 => SYNTHESIZED_WIRE_11,
		 data0 => SYNTHESIZED_WIRE_12,
		 sel => SYNTHESIZED_WIRE_13,
		 result => SYNTHESIZED_WIRE_9);


b2v_REGISTRO_CONTROL : lpm_shiftreg0
PORT MAP(clock => SYNTHESIZED_WIRE_14,
		 data => SYNTHESIZED_WIRE_15,
		 shiftout => SYNTHESIZED_WIRE_13);


b2v_SELECTOR_LED : lpm_counter0
PORT MAP(clock => SYNTHESIZED_WIRE_16,
		 aclr => NuevoInput,
		 cout => SYNTHESIZED_WIRE_18,
		 q => SYNTHESIZED_WIRE_3);


END bdf_type;