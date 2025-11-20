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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/13/2025 17:07:11"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Jugada1 IS
    PORT (
	final_win : OUT std_logic;
	reset : IN std_logic;
	clock : IN std_logic;
	Boton : IN std_logic;
	Win : IN std_logic;
	Habilitada : IN std_logic;
	POSenable : IN std_logic;
	Jugador : IN std_logic;
	Cambio : OUT std_logic;
	err : OUT std_logic;
	Verificacion : OUT std_logic;
	PuntoP1 : OUT std_logic_vector(3 DOWNTO 0);
	PuntoP2 : OUT std_logic_vector(3 DOWNTO 0)
	);
END Jugada1;

-- Design Ports Information
-- final_win	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cambio	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- err	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Verificacion	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PuntoP1[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PuntoP1[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PuntoP1[1]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PuntoP1[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PuntoP2[3]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PuntoP2[2]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PuntoP2[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PuntoP2[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Win	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- POSenable	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Habilitada	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Boton	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jugador	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Jugada1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_final_win : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_Boton : std_logic;
SIGNAL ww_Win : std_logic;
SIGNAL ww_Habilitada : std_logic;
SIGNAL ww_POSenable : std_logic;
SIGNAL ww_Jugador : std_logic;
SIGNAL ww_Cambio : std_logic;
SIGNAL ww_err : std_logic;
SIGNAL ww_Verificacion : std_logic;
SIGNAL ww_PuntoP1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PuntoP2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|Y1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|Y0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \final_win~output_o\ : std_logic;
SIGNAL \Cambio~output_o\ : std_logic;
SIGNAL \err~output_o\ : std_logic;
SIGNAL \Verificacion~output_o\ : std_logic;
SIGNAL \PuntoP1[3]~output_o\ : std_logic;
SIGNAL \PuntoP1[2]~output_o\ : std_logic;
SIGNAL \PuntoP1[1]~output_o\ : std_logic;
SIGNAL \PuntoP1[0]~output_o\ : std_logic;
SIGNAL \PuntoP2[3]~output_o\ : std_logic;
SIGNAL \PuntoP2[2]~output_o\ : std_logic;
SIGNAL \PuntoP2[1]~output_o\ : std_logic;
SIGNAL \PuntoP2[0]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Win~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Habilitada~input_o\ : std_logic;
SIGNAL \POSenable~input_o\ : std_logic;
SIGNAL \Boton~input_o\ : std_logic;
SIGNAL \Jugador~input_o\ : std_logic;
SIGNAL \inst3|Y0~combout\ : std_logic;
SIGNAL \inst3|Y0~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|cnt[0]~1_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst3|Y1~combout\ : std_logic;
SIGNAL \inst3|Y1~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|cnt[0]~1_combout\ : std_logic;
SIGNAL \inst5|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst|process_1~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.CambioJ~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.CambioJ~1_combout\ : std_logic;
SIGNAL \inst|fstate.CambioJ~q\ : std_logic;
SIGNAL \inst|reg_fstate.Error~0_combout\ : std_logic;
SIGNAL \inst|fstate.Error~q\ : std_logic;
SIGNAL \inst|reg_fstate.Idle~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.Idle~1_combout\ : std_logic;
SIGNAL \inst|fstate.Idle~q\ : std_logic;
SIGNAL \inst|reg_fstate.Verificar~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.Verificar~1_combout\ : std_logic;
SIGNAL \inst|fstate.Verificar~q\ : std_logic;
SIGNAL \inst|reg_fstate.Marcar~0_combout\ : std_logic;
SIGNAL \inst|fstate.Marcar~q\ : std_logic;
SIGNAL \inst|reg_fstate.Punto~0_combout\ : std_logic;
SIGNAL \inst|fstate.Punto~q\ : std_logic;
SIGNAL \inst|reg_fstate.Ganar~2_combout\ : std_logic;
SIGNAL \inst|fstate.Ganar~q\ : std_logic;
SIGNAL \inst|final_win~0_combout\ : std_logic;
SIGNAL \inst|Cambio~0_combout\ : std_logic;
SIGNAL \inst|err~0_combout\ : std_logic;
SIGNAL \inst|Verificacion~0_combout\ : std_logic;
SIGNAL \inst4|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

final_win <= ww_final_win;
ww_reset <= reset;
ww_clock <= clock;
ww_Boton <= Boton;
ww_Win <= Win;
ww_Habilitada <= Habilitada;
ww_POSenable <= POSenable;
ww_Jugador <= Jugador;
Cambio <= ww_Cambio;
err <= ww_err;
Verificacion <= ww_Verificacion;
PuntoP1 <= ww_PuntoP1;
PuntoP2 <= ww_PuntoP2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|Y1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|Y1~combout\);

\inst3|Y0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|Y0~combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y15_N9
\final_win~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|final_win~0_combout\,
	devoe => ww_devoe,
	o => \final_win~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\Cambio~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Cambio~0_combout\,
	devoe => ww_devoe,
	o => \Cambio~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\err~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|err~0_combout\,
	devoe => ww_devoe,
	o => \err~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\Verificacion~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Verificacion~0_combout\,
	devoe => ww_devoe,
	o => \Verificacion~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\PuntoP1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PuntoP1[3]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\PuntoP1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PuntoP1[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\PuntoP1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|cnt\(1),
	devoe => ww_devoe,
	o => \PuntoP1[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\PuntoP1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|cnt\(0),
	devoe => ww_devoe,
	o => \PuntoP1[0]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\PuntoP2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PuntoP2[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\PuntoP2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PuntoP2[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\PuntoP2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|cnt\(1),
	devoe => ww_devoe,
	o => \PuntoP2[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\PuntoP2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|cnt\(0),
	devoe => ww_devoe,
	o => \PuntoP2[0]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y27_N1
\Win~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Win,
	o => \Win~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\Habilitada~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Habilitada,
	o => \Habilitada~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\POSenable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_POSenable,
	o => \POSenable~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\Boton~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Boton,
	o => \Boton~input_o\);

-- Location: IOIBUF_X23_Y34_N15
\Jugador~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Jugador,
	o => \Jugador~input_o\);

-- Location: LCCOMB_X24_Y33_N0
\inst3|Y0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Y0~combout\ = LCELL((\Win~input_o\ & !\Jugador~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Win~input_o\,
	datad => \Jugador~input_o\,
	combout => \inst3|Y0~combout\);

-- Location: CLKCTRL_G10
\inst3|Y0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|Y0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|Y0~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y13_N10
\inst4|cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cnt[0]~1_combout\ = !\inst4|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|cnt\(0),
	combout => \inst4|cnt[0]~1_combout\);

-- Location: CLKCTRL_G1
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X2_Y13_N11
\inst4|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|Y0~clkctrl_outclk\,
	d => \inst4|cnt[0]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(0));

-- Location: LCCOMB_X2_Y13_N4
\inst4|cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cnt[1]~0_combout\ = \inst4|cnt\(1) $ (\inst4|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|cnt\(1),
	datad => \inst4|cnt\(0),
	combout => \inst4|cnt[1]~0_combout\);

-- Location: FF_X2_Y13_N5
\inst4|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|Y0~clkctrl_outclk\,
	d => \inst4|cnt[1]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(1));

-- Location: LCCOMB_X24_Y33_N2
\inst3|Y1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Y1~combout\ = LCELL((\Win~input_o\ & \Jugador~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Win~input_o\,
	datad => \Jugador~input_o\,
	combout => \inst3|Y1~combout\);

-- Location: CLKCTRL_G12
\inst3|Y1~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|Y1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|Y1~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y13_N18
\inst5|cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|cnt[0]~1_combout\ = !\inst5|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|cnt\(0),
	combout => \inst5|cnt[0]~1_combout\);

-- Location: FF_X1_Y13_N19
\inst5|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|Y1~clkctrl_outclk\,
	d => \inst5|cnt[0]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(0));

-- Location: LCCOMB_X1_Y13_N4
\inst5|cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|cnt[1]~0_combout\ = \inst5|cnt\(1) $ (\inst5|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|cnt\(1),
	datad => \inst5|cnt\(0),
	combout => \inst5|cnt[1]~0_combout\);

-- Location: FF_X1_Y13_N5
\inst5|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|Y1~clkctrl_outclk\,
	d => \inst5|cnt[1]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(1));

-- Location: LCCOMB_X1_Y13_N0
\inst|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~0_combout\ = (\inst4|cnt\(1) & ((\inst4|cnt\(0)) # ((\inst5|cnt\(1) & \inst5|cnt\(0))))) # (!\inst4|cnt\(1) & (\inst5|cnt\(1) & ((\inst5|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(1),
	datab => \inst5|cnt\(1),
	datac => \inst4|cnt\(0),
	datad => \inst5|cnt\(0),
	combout => \inst|process_1~0_combout\);

-- Location: LCCOMB_X1_Y13_N12
\inst|reg_fstate.CambioJ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.CambioJ~0_combout\ = (\Win~input_o\ & (((\inst|fstate.Punto~q\ & !\inst|process_1~0_combout\)))) # (!\Win~input_o\ & ((\inst|fstate.Marcar~q\) # ((\inst|fstate.Punto~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Win~input_o\,
	datab => \inst|fstate.Marcar~q\,
	datac => \inst|fstate.Punto~q\,
	datad => \inst|process_1~0_combout\,
	combout => \inst|reg_fstate.CambioJ~0_combout\);

-- Location: LCCOMB_X1_Y13_N22
\inst|reg_fstate.CambioJ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.CambioJ~1_combout\ = (!\reset~input_o\ & ((\inst|fstate.Ganar~q\) # (\inst|reg_fstate.CambioJ~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst|fstate.Ganar~q\,
	datad => \inst|reg_fstate.CambioJ~0_combout\,
	combout => \inst|reg_fstate.CambioJ~1_combout\);

-- Location: FF_X1_Y13_N23
\inst|fstate.CambioJ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.CambioJ~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.CambioJ~q\);

-- Location: LCCOMB_X1_Y13_N14
\inst|reg_fstate.Error~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Error~0_combout\ = (!\Habilitada~input_o\ & (\POSenable~input_o\ & (\inst|fstate.Verificar~q\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Habilitada~input_o\,
	datab => \POSenable~input_o\,
	datac => \inst|fstate.Verificar~q\,
	datad => \reset~input_o\,
	combout => \inst|reg_fstate.Error~0_combout\);

-- Location: FF_X1_Y13_N15
\inst|fstate.Error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.Error~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Error~q\);

-- Location: LCCOMB_X1_Y13_N2
\inst|reg_fstate.Idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Idle~0_combout\ = (\reset~input_o\) # ((\inst|fstate.Error~q\) # ((!\Boton~input_o\ & !\inst|fstate.Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Boton~input_o\,
	datab => \reset~input_o\,
	datac => \inst|fstate.Idle~q\,
	datad => \inst|fstate.Error~q\,
	combout => \inst|reg_fstate.Idle~0_combout\);

-- Location: LCCOMB_X1_Y13_N30
\inst|reg_fstate.Idle~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Idle~1_combout\ = (!\inst|fstate.CambioJ~q\ & !\inst|reg_fstate.Idle~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|fstate.CambioJ~q\,
	datad => \inst|reg_fstate.Idle~0_combout\,
	combout => \inst|reg_fstate.Idle~1_combout\);

-- Location: FF_X1_Y13_N31
\inst|fstate.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.Idle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Idle~q\);

-- Location: LCCOMB_X1_Y13_N24
\inst|reg_fstate.Verificar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Verificar~0_combout\ = (\Boton~input_o\ & (((!\POSenable~input_o\ & \inst|fstate.Verificar~q\)) # (!\inst|fstate.Idle~q\))) # (!\Boton~input_o\ & (!\POSenable~input_o\ & ((\inst|fstate.Verificar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Boton~input_o\,
	datab => \POSenable~input_o\,
	datac => \inst|fstate.Idle~q\,
	datad => \inst|fstate.Verificar~q\,
	combout => \inst|reg_fstate.Verificar~0_combout\);

-- Location: LCCOMB_X1_Y13_N16
\inst|reg_fstate.Verificar~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Verificar~1_combout\ = (!\reset~input_o\ & \inst|reg_fstate.Verificar~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \inst|reg_fstate.Verificar~0_combout\,
	combout => \inst|reg_fstate.Verificar~1_combout\);

-- Location: FF_X1_Y13_N17
\inst|fstate.Verificar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.Verificar~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Verificar~q\);

-- Location: LCCOMB_X1_Y13_N20
\inst|reg_fstate.Marcar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Marcar~0_combout\ = (\Habilitada~input_o\ & (\POSenable~input_o\ & (\inst|fstate.Verificar~q\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Habilitada~input_o\,
	datab => \POSenable~input_o\,
	datac => \inst|fstate.Verificar~q\,
	datad => \reset~input_o\,
	combout => \inst|reg_fstate.Marcar~0_combout\);

-- Location: FF_X1_Y13_N21
\inst|fstate.Marcar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.Marcar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Marcar~q\);

-- Location: LCCOMB_X1_Y13_N26
\inst|reg_fstate.Punto~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Punto~0_combout\ = (!\reset~input_o\ & (\Win~input_o\ & \inst|fstate.Marcar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \Win~input_o\,
	datad => \inst|fstate.Marcar~q\,
	combout => \inst|reg_fstate.Punto~0_combout\);

-- Location: FF_X1_Y13_N27
\inst|fstate.Punto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.Punto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Punto~q\);

-- Location: LCCOMB_X1_Y13_N8
\inst|reg_fstate.Ganar~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Ganar~2_combout\ = (\Win~input_o\ & (!\reset~input_o\ & (\inst|fstate.Punto~q\ & \inst|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Win~input_o\,
	datab => \reset~input_o\,
	datac => \inst|fstate.Punto~q\,
	datad => \inst|process_1~0_combout\,
	combout => \inst|reg_fstate.Ganar~2_combout\);

-- Location: FF_X1_Y13_N9
\inst|fstate.Ganar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.Ganar~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Ganar~q\);

-- Location: LCCOMB_X1_Y15_N16
\inst|final_win~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|final_win~0_combout\ = (\inst|fstate.Ganar~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fstate.Ganar~q\,
	datac => \reset~input_o\,
	combout => \inst|final_win~0_combout\);

-- Location: LCCOMB_X1_Y13_N28
\inst|Cambio~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Cambio~0_combout\ = (!\reset~input_o\ & \inst|fstate.CambioJ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst|fstate.CambioJ~q\,
	combout => \inst|Cambio~0_combout\);

-- Location: LCCOMB_X1_Y15_N14
\inst|err~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|err~0_combout\ = (!\reset~input_o\ & \inst|fstate.Error~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst|fstate.Error~q\,
	combout => \inst|err~0_combout\);

-- Location: LCCOMB_X1_Y13_N10
\inst|Verificacion~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Verificacion~0_combout\ = (\inst|fstate.Verificar~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|fstate.Verificar~q\,
	datad => \reset~input_o\,
	combout => \inst|Verificacion~0_combout\);

ww_final_win <= \final_win~output_o\;

ww_Cambio <= \Cambio~output_o\;

ww_err <= \err~output_o\;

ww_Verificacion <= \Verificacion~output_o\;

ww_PuntoP1(3) <= \PuntoP1[3]~output_o\;

ww_PuntoP1(2) <= \PuntoP1[2]~output_o\;

ww_PuntoP1(1) <= \PuntoP1[1]~output_o\;

ww_PuntoP1(0) <= \PuntoP1[0]~output_o\;

ww_PuntoP2(3) <= \PuntoP2[3]~output_o\;

ww_PuntoP2(2) <= \PuntoP2[2]~output_o\;

ww_PuntoP2(1) <= \PuntoP2[1]~output_o\;

ww_PuntoP2(0) <= \PuntoP2[0]~output_o\;
END structure;


