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
-- CREATED		"Thu Nov 20 16:09:58 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Jugada1 IS 
	PORT
	(
		reset :  IN  STD_LOGIC;
		clock :  IN  STD_LOGIC;
		Boton :  IN  STD_LOGIC;
		Win :  IN  STD_LOGIC;
		Habilitada :  IN  STD_LOGIC;
		POSenable :  IN  STD_LOGIC;
		Ganador_Jugador_1 :  IN  STD_LOGIC;
		Ganador_Jugador_2 :  IN  STD_LOGIC;
		final_win :  OUT  STD_LOGIC;
		Cambio :  OUT  STD_LOGIC;
		err :  OUT  STD_LOGIC;
		Verificacion :  OUT  STD_LOGIC;
		PuntoP1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		PuntoP2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END Jugada1;

ARCHITECTURE bdf_type OF Jugada1 IS 

COMPONENT jugacionmachine
	PORT(reset : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 Boton : IN STD_LOGIC;
		 Win : IN STD_LOGIC;
		 Habilitada : IN STD_LOGIC;
		 POSenable : IN STD_LOGIC;
		 win3 : IN STD_LOGIC;
		 final_win : OUT STD_LOGIC;
		 Cambio : OUT STD_LOGIC;
		 err : OUT STD_LOGIC;
		 Verificacion : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT contador_modn
GENERIC (N : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 fin : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	punto :  STD_LOGIC;
SIGNAL	rst :  STD_LOGIC;
SIGNAL	winf :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_4 <= '1';



b2v_inst : jugacionmachine
PORT MAP(reset => rst,
		 clock => clock,
		 Boton => Boton,
		 Win => punto,
		 Habilitada => Habilitada,
		 POSenable => POSenable,
		 win3 => winf,
		 final_win => final_win,
		 Cambio => Cambio,
		 err => err,
		 Verificacion => Verificacion);


b2v_inst4 : contador_modn
GENERIC MAP(N => 3
			)
PORT MAP(clk => Ganador_Jugador_1,
		 reset => rst,
		 enable => SYNTHESIZED_WIRE_4,
		 fin => SYNTHESIZED_WIRE_3,
		 count => PuntoP1);


b2v_inst5 : contador_modn
GENERIC MAP(N => 3
			)
PORT MAP(clk => Ganador_Jugador_2,
		 reset => rst,
		 enable => SYNTHESIZED_WIRE_4,
		 fin => SYNTHESIZED_WIRE_2,
		 count => PuntoP2);



winf <= SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3;

rst <= reset;
punto <= Win;

END bdf_type;