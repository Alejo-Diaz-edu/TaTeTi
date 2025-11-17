library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DecoLuces is
	port 
	(
	-- INPUTS
		E1	   : in std_logic_vector (9 downto 1);
		E0	   : in std_logic_vector (9 downto 1);
		vidas_j1: in std_logic_vector (3 downto 1);
		vidas_j2: in std_logic_vector (3 downto 1);  -- Corregido nombre duplicado
		turno: in std_logic;  -- '0' = jugador 1, '1' = jugador 2
		color_j1 : in std_logic_vector(23 downto 0);
		color_j2 : in std_logic_vector(23 downto 0);
		CLKBIT	: in std_logic;
		
	--E1E0
	-- 00 => Celda Vacía
	-- 01 => Jugador 1
	-- 10 => Jugador 2
	-- 11 => ""IA""
	
		ERROR : in std_logic_vector (16 downto 1); 
	-- SI HAY ERROR, ERROR => 1, sino, ERROR => 0. 
	-- Ejemplo: hay error en la celda 7: ERROR => 0000001000000000
		
	-- OUTPUTS (Incompleto)
	ControlBit : out std_logic;
	STOP	: out std_logic := '1'
	);

end entity;

architecture Design of DecoLuces is

-- Constantes para colores
constant COLOR_VACIO : std_logic_vector(23 downto 0) := x"000000";  -- Negro (apagado)
constant COLOR_IA : std_logic_vector(23 downto 0) := x"FFFF00";     -- Amarillo

-- Array para almacenar los 24 bits de cada LED (16 LEDs total)
type t_led_array is array (0 to 15) of std_logic_vector(23 downto 0);
signal leds : t_led_array;

-- Vector de control de 384 bits (24 bits * 16 LEDs)
signal Control : std_logic_vector (383 downto 0);
 
begin

-- Proceso combinacional para asignar colores a los LEDs según las entradas
process (E1, E0, vidas_j1, vidas_j2, turno, color_j1, color_j2)
    variable estado_celda : std_logic_vector(1 downto 0);
begin
    -- Mapeo de la matriz 4x4:
    -- Confirmado con pruebas:
    -- 111100000 → LEDs 0,4,8,1: E1(9)→0, E1(8)→4, E1(7)→8, E1(6)→1
    -- 000111000 → LEDs 1,5,9: E1(6)→1, E1(5)→5, E1(4)→9
    --
    -- La numeración de celdas en E1/E0 es:
    -- Celda 9 | Celda 8 | Celda 7 
    -- Celda 6 | Celda 5 | Celda 4 
    -- Celda 3 | Celda 2 | Celda 1
    --
    -- Patrón detectado: zigzag vertical
    -- Col1↓: 9→0, 8→4, 7→8
    -- Col2↑: 6→1, 5→5, 4→9
    -- Col3↓: 3→2, 2→6, 1→10
    --
    -- Mapeo a LEDs físicos (índice en array):
    -- LED 0  | LED 1  | LED 2  | LED 3  (vidas_j2(1))
    -- LED 4  | LED 5  | LED 6  | LED 7  (vidas_j2(2))
    -- LED 8  | LED 9  | LED 10 | LED 11 (vidas_j2(3))
    -- LED 12 | LED 13 | LED 14 | LED 15 (turno)
    -- (vidas_j1(1)) (vidas_j1(2)) (vidas_j1(3))
    
    -- Tablero de juego 3x3 - mapeo zigzag vertical confirmado
    -- Columna 1 (descendente)
    estado_celda := E1(9) & E0(9);
    case estado_celda is
        when "00" => leds(0) <= COLOR_VACIO;
        when "01" => leds(0) <= color_j1;
        when "10" => leds(0) <= color_j2;
        when "11" => leds(0) <= COLOR_IA;
        when others => leds(0) <= COLOR_VACIO;
    end case;
    
    estado_celda := E1(8) & E0(8);
    case estado_celda is
        when "00" => leds(4) <= COLOR_VACIO;
        when "01" => leds(4) <= color_j1;
        when "10" => leds(4) <= color_j2;
        when "11" => leds(4) <= COLOR_IA;
        when others => leds(4) <= COLOR_VACIO;
    end case;
    
    estado_celda := E1(7) & E0(7);
    case estado_celda is
        when "00" => leds(8) <= COLOR_VACIO;
        when "01" => leds(8) <= color_j1;
        when "10" => leds(8) <= color_j2;
        when "11" => leds(8) <= COLOR_IA;
        when others => leds(8) <= COLOR_VACIO;
    end case;
    
    -- Columna 2 (ascendente)
    estado_celda := E1(6) & E0(6);
    case estado_celda is
        when "00" => leds(1) <= COLOR_VACIO;
        when "01" => leds(1) <= color_j1;
        when "10" => leds(1) <= color_j2;
        when "11" => leds(1) <= COLOR_IA;
        when others => leds(1) <= COLOR_VACIO;
    end case;
    
    estado_celda := E1(5) & E0(5);
    case estado_celda is
        when "00" => leds(5) <= COLOR_VACIO;
        when "01" => leds(5) <= color_j1;
        when "10" => leds(5) <= color_j2;
        when "11" => leds(5) <= COLOR_IA;
        when others => leds(5) <= COLOR_VACIO;
    end case;
    
    estado_celda := E1(4) & E0(4);
    case estado_celda is
        when "00" => leds(9) <= COLOR_VACIO;
        when "01" => leds(9) <= color_j1;
        when "10" => leds(9) <= color_j2;
        when "11" => leds(9) <= COLOR_IA;
        when others => leds(9) <= COLOR_VACIO;
    end case;
    
    -- Columna 3 (descendente) - extrapolado del patrón
    estado_celda := E1(3) & E0(3);
    case estado_celda is
        when "00" => leds(2) <= COLOR_VACIO;
        when "01" => leds(2) <= color_j1;
        when "10" => leds(2) <= color_j2;
        when "11" => leds(2) <= COLOR_IA;
        when others => leds(2) <= COLOR_VACIO;
    end case;
    
    estado_celda := E1(2) & E0(2);
    case estado_celda is
        when "00" => leds(6) <= COLOR_VACIO;
        when "01" => leds(6) <= color_j1;
        when "10" => leds(6) <= color_j2;
        when "11" => leds(6) <= COLOR_IA;
        when others => leds(6) <= COLOR_VACIO;
    end case;
    
    estado_celda := E1(1) & E0(1);
    case estado_celda is
        when "00" => leds(10) <= COLOR_VACIO;
        when "01" => leds(10) <= color_j1;
        when "10" => leds(10) <= color_j2;
        when "11" => leds(10) <= COLOR_IA;
        when others => leds(10) <= COLOR_VACIO;
    end case;
    
    -- Vidas jugador 2 (columna derecha: LEDs 3, 7, 11) - CORREGIDO
    if vidas_j2(1) = '1' then
        leds(3) <= color_j2;
    else
        leds(3) <= COLOR_VACIO;
    end if;
    
    if vidas_j2(2) = '1' then
        leds(7) <= color_j2;
    else
        leds(7) <= COLOR_VACIO;
    end if;
    
    if vidas_j2(3) = '1' then
        leds(11) <= color_j2;
    else
        leds(11) <= COLOR_VACIO;
    end if;
    
    -- Vidas jugador 1 (fila inferior: LEDs 12, 13, 14) - CORREGIDO
    if vidas_j1(1) = '1' then
        leds(12) <= color_j1;
    else
        leds(12) <= COLOR_VACIO;
    end if;
    
    if vidas_j1(2) = '1' then
        leds(13) <= color_j1;
    else
        leds(13) <= COLOR_VACIO;
    end if;
    
    if vidas_j1(3) = '1' then
        leds(14) <= color_j1;
    else
        leds(14) <= COLOR_VACIO;
    end if;
    
    -- Indicador de turno (LED 15 - esquina inferior derecha)
    if turno = '0' then
        leds(15) <= color_j1;  -- Turno jugador 1
    else
        leds(15) <= color_j2;  -- Turno jugador 2
    end if;
    
end process;

-- Proceso para convertir el array de LEDs a un vector de 384 bits
-- El orden de bits para WS2812B es GRB (Green-Red-Blue)
process (leds)
begin
    for i in 0 to 15 loop
        -- Cada LED ocupa 24 bits en el vector Control
        -- Control(383 downto 360) = LED 0
        -- Control(359 downto 336) = LED 1
        -- ...
        -- Control(23 downto 0) = LED 15
        -- El formato es GRB: leds(i)(23:16)=R, leds(i)(15:8)=G, leds(i)(7:0)=B
        -- Para WS2812B reordenamos: G,R,B
        Control((15-i)*24+23 downto (15-i)*24+16) <= leds(i)(15 downto 8);  -- Green
        Control((15-i)*24+15 downto (15-i)*24+8)  <= leds(i)(23 downto 16); -- Red
        Control((15-i)*24+7 downto (15-i)*24)     <= leds(i)(7 downto 0);   -- Blue
    end loop;
end process;

-- Proceso secuencial para enviar los bits uno por uno
process(CLKBIT)
    variable i : integer := 0;
begin

    if rising_edge(CLKBIT) then
        ControlBit <= Control(i);

        if i = 383 then
				STOP <= '0';
            i := 0;              -- vuelve a empezar
        else
				STOP <= '1';
            i := i + 1;
        end if;
    end if;
end process;

end Design;
