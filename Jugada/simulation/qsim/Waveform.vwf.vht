-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/13/2025 17:07:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Jugada1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Jugada1_vhd_vec_tst IS
END Jugada1_vhd_vec_tst;
ARCHITECTURE Jugada1_arch OF Jugada1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Boton : STD_LOGIC;
SIGNAL Cambio : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL err : STD_LOGIC;
SIGNAL final_win : STD_LOGIC;
SIGNAL Habilitada : STD_LOGIC;
SIGNAL Jugador : STD_LOGIC;
SIGNAL POSenable : STD_LOGIC;
SIGNAL PuntoP1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL PuntoP2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL Verificacion : STD_LOGIC;
SIGNAL Win : STD_LOGIC;
COMPONENT Jugada1
	PORT (
	Boton : IN STD_LOGIC;
	Cambio : OUT STD_LOGIC;
	clock : IN STD_LOGIC;
	err : OUT STD_LOGIC;
	final_win : OUT STD_LOGIC;
	Habilitada : IN STD_LOGIC;
	Jugador : IN STD_LOGIC;
	POSenable : IN STD_LOGIC;
	PuntoP1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	PuntoP2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC;
	Verificacion : OUT STD_LOGIC;
	Win : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Jugada1
	PORT MAP (
-- list connections between master ports and signals
	Boton => Boton,
	Cambio => Cambio,
	clock => clock,
	err => err,
	final_win => final_win,
	Habilitada => Habilitada,
	Jugador => Jugador,
	POSenable => POSenable,
	PuntoP1 => PuntoP1,
	PuntoP2 => PuntoP2,
	reset => reset,
	Verificacion => Verificacion,
	Win => Win
	);

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 10000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- Boton
t_prcs_Boton: PROCESS
BEGIN
	Boton <= '0';
	WAIT FOR 40000 ps;
	Boton <= '1';
	WAIT FOR 40000 ps;
	Boton <= '0';
	WAIT FOR 120000 ps;
	Boton <= '1';
	WAIT FOR 30000 ps;
	Boton <= '0';
	WAIT FOR 50000 ps;
	Boton <= '1';
	WAIT FOR 50000 ps;
	Boton <= '0';
	WAIT FOR 40000 ps;
	Boton <= '1';
	WAIT FOR 30000 ps;
	Boton <= '0';
	WAIT FOR 80000 ps;
	Boton <= '1';
	WAIT FOR 30000 ps;
	Boton <= '0';
	WAIT FOR 70000 ps;
	Boton <= '1';
	WAIT FOR 30000 ps;
	Boton <= '0';
	WAIT FOR 90000 ps;
	Boton <= '1';
	WAIT FOR 30000 ps;
	Boton <= '0';
	WAIT FOR 120000 ps;
	Boton <= '1';
	WAIT FOR 30000 ps;
	Boton <= '0';
WAIT;
END PROCESS t_prcs_Boton;

-- Habilitada
t_prcs_Habilitada: PROCESS
BEGIN
	Habilitada <= '0';
	WAIT FOR 210000 ps;
	Habilitada <= '1';
	WAIT FOR 30000 ps;
	Habilitada <= '0';
	WAIT FOR 70000 ps;
	Habilitada <= '1';
	WAIT FOR 20000 ps;
	Habilitada <= '0';
	WAIT FOR 50000 ps;
	Habilitada <= '1';
	WAIT FOR 20000 ps;
	Habilitada <= '0';
	WAIT FOR 90000 ps;
	Habilitada <= '1';
	WAIT FOR 20000 ps;
	Habilitada <= '0';
	WAIT FOR 80000 ps;
	Habilitada <= '1';
	WAIT FOR 20000 ps;
	Habilitada <= '0';
	WAIT FOR 100000 ps;
	Habilitada <= '1';
	WAIT FOR 20000 ps;
	Habilitada <= '0';
	WAIT FOR 130000 ps;
	Habilitada <= '1';
	WAIT FOR 20000 ps;
	Habilitada <= '0';
WAIT;
END PROCESS t_prcs_Habilitada;

-- POSenable
t_prcs_POSenable: PROCESS
BEGIN
	POSenable <= '0';
	WAIT FOR 130000 ps;
	POSenable <= '1';
	WAIT FOR 20000 ps;
	POSenable <= '0';
	WAIT FOR 60000 ps;
	POSenable <= '1';
	WAIT FOR 30000 ps;
	POSenable <= '0';
	WAIT FOR 70000 ps;
	POSenable <= '1';
	WAIT FOR 20000 ps;
	POSenable <= '0';
	WAIT FOR 50000 ps;
	POSenable <= '1';
	WAIT FOR 20000 ps;
	POSenable <= '0';
	WAIT FOR 90000 ps;
	POSenable <= '1';
	WAIT FOR 20000 ps;
	POSenable <= '0';
	WAIT FOR 80000 ps;
	POSenable <= '1';
	WAIT FOR 20000 ps;
	POSenable <= '0';
	WAIT FOR 100000 ps;
	POSenable <= '1';
	WAIT FOR 20000 ps;
	POSenable <= '0';
	WAIT FOR 130000 ps;
	POSenable <= '1';
	WAIT FOR 20000 ps;
	POSenable <= '0';
WAIT;
END PROCESS t_prcs_POSenable;

-- Win
t_prcs_Win: PROCESS
BEGIN
	Win <= '0';
	WAIT FOR 380000 ps;
	Win <= '1';
	WAIT FOR 20000 ps;
	Win <= '0';
	WAIT FOR 90000 ps;
	Win <= '1';
	WAIT FOR 40000 ps;
	Win <= '0';
	WAIT FOR 70000 ps;
	Win <= '1';
	WAIT FOR 30000 ps;
	Win <= '0';
	WAIT FOR 80000 ps;
	Win <= '1';
	WAIT FOR 40000 ps;
	Win <= '0';
	WAIT FOR 110000 ps;
	Win <= '1';
	WAIT FOR 40000 ps;
	Win <= '0';
WAIT;
END PROCESS t_prcs_Win;

-- Jugador
t_prcs_Jugador: PROCESS
BEGIN
	Jugador <= '0';
	WAIT FOR 190000 ps;
	Jugador <= '1';
	WAIT FOR 60000 ps;
	Jugador <= '0';
	WAIT FOR 110000 ps;
	Jugador <= '1';
	WAIT FOR 70000 ps;
	Jugador <= '0';
	WAIT FOR 130000 ps;
	Jugador <= '1';
	WAIT FOR 90000 ps;
	Jugador <= '0';
	WAIT FOR 190000 ps;
	Jugador <= '1';
	WAIT FOR 80000 ps;
	Jugador <= '0';
WAIT;
END PROCESS t_prcs_Jugador;
END Jugada1_arch;
