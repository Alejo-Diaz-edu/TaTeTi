-- Wrapper para MainCircuit con valores constantes
-- Mantiene las conexiones de pines CLKPLACA y ALOSLEDs para cargar en FPGA

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

LIBRARY work;

ENTITY MainCircuit_wrapper IS 
    PORT
    (
        CLKPLACA :  IN  STD_LOGIC;
        ALOSLEDs :  OUT STD_LOGIC
    );
END MainCircuit_wrapper;

ARCHITECTURE bdf_type OF MainCircuit_wrapper IS 

    -- Declaración del componente MainCircuit
    COMPONENT MainCircuit
        PORT(
            CLKPLACA   : IN  STD_LOGIC;
            turno      : IN  STD_LOGIC;
            color_j1   : IN  STD_LOGIC;
            color_j2   : IN  STD_LOGIC;
            tablero_1  : IN  STD_LOGIC_VECTOR(9 DOWNTO 1);
            tablero_2  : IN  STD_LOGIC_VECTOR(9 DOWNTO 1);
            vidas_1    : IN  STD_LOGIC_VECTOR(3 DOWNTO 1);
            vidas_2    : IN  STD_LOGIC_VECTOR(3 DOWNTO 1);
            ALOSLEDs   : OUT STD_LOGIC
        );
    END COMPONENT;

    -- Valores constantes para las entradas del tablero
    CONSTANT turno_const      : STD_LOGIC := '0';
    CONSTANT tablero_1_const  : STD_LOGIC_VECTOR(9 DOWNTO 1) := "110000000";
    CONSTANT tablero_2_const  : STD_LOGIC_VECTOR(9 DOWNTO 1) := "000000000";
    CONSTANT vidas_1_const    : STD_LOGIC_VECTOR(3 DOWNTO 1) := "010";
    CONSTANT vidas_2_const    : STD_LOGIC_VECTOR(3 DOWNTO 1) := "010";
    
    -- Selección de colores para testeo mediante número de pulsos
    -- 0 = Lima (66FF00)
    -- 1 = Azul (0000FF)
    -- 2 = Amarillo (FFFF00)
    -- 3 = Fucsia (FF33FF)
    -- 4 = Violeta (9900FF)
    CONSTANT NUM_PULSOS_J1 : integer := 3;  -- Jugador 1: Fucsia
    CONSTANT NUM_PULSOS_J2 : integer := 4;  -- Jugador 2: Violeta
    
    -- Señales para generación de pulsos
    signal color_j1_sig : std_logic := '0';
    signal color_j2_sig : std_logic := '0';
    signal contador_j1 : integer range 0 to 10 := 0;
    signal contador_j2 : integer range 0 to 10 := 0;
    signal pulsos_generados_j1 : integer range 0 to 5 := 0;
    signal pulsos_generados_j2 : integer range 0 to 5 := 0;
    signal inicio : std_logic := '1';

BEGIN

    -- Proceso para generar pulsos iniciales y seleccionar colores
    process(CLKPLACA)
    begin
        if rising_edge(CLKPLACA) then
            if inicio = '1' then
                -- Generador de pulsos para jugador 1
                if pulsos_generados_j1 < NUM_PULSOS_J1 then
                    if contador_j1 < 5 then
                        contador_j1 <= contador_j1 + 1;
                        color_j1_sig <= '0';
                    elsif contador_j1 = 5 then
                        color_j1_sig <= '1';  -- Flanco ascendente
                        contador_j1 <= contador_j1 + 1;
                    else
                        color_j1_sig <= '0';
                        contador_j1 <= 0;
                        pulsos_generados_j1 <= pulsos_generados_j1 + 1;
                    end if;
                else
                    color_j1_sig <= '0';
                end if;
                
                -- Generador de pulsos para jugador 2
                if pulsos_generados_j2 < NUM_PULSOS_J2 then
                    if contador_j2 < 5 then
                        contador_j2 <= contador_j2 + 1;
                        color_j2_sig <= '0';
                    elsif contador_j2 = 5 then
                        color_j2_sig <= '1';  -- Flanco ascendente
                        contador_j2 <= contador_j2 + 1;
                    else
                        color_j2_sig <= '0';
                        contador_j2 <= 0;
                        pulsos_generados_j2 <= pulsos_generados_j2 + 1;
                    end if;
                else
                    color_j2_sig <= '0';
                end if;
                
                -- Finalizar generación cuando ambos alcancen sus objetivos
                if pulsos_generados_j1 >= NUM_PULSOS_J1 and pulsos_generados_j2 >= NUM_PULSOS_J2 then
                    inicio <= '0';
                end if;
            else
                -- Mantener señales en '0' después de la inicialización
                color_j1_sig <= '0';
                color_j2_sig <= '0';
            end if;
        end if;
    end process;

    -- Instancia del componente MainCircuit con valores constantes
    inst_MainCircuit: MainCircuit
    PORT MAP(
        CLKPLACA  => CLKPLACA,
        turno     => turno_const,
        color_j1  => color_j1_sig,
        color_j2  => color_j2_sig,
        tablero_1 => tablero_1_const,
        tablero_2 => tablero_2_const,
        vidas_1   => vidas_1_const,
        vidas_2   => vidas_2_const,
        ALOSLEDs  => ALOSLEDs
    );

END bdf_type;
