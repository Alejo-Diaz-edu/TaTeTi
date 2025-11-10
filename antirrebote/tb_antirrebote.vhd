-- Testbench para sistema de antirrebote
-- Clock: 20 KHz (periodo = 50 us)
-- Tiempo antirrebote: 20 ms (400 ciclos)

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY tb_antirrebote IS
END tb_antirrebote;

ARCHITECTURE testbench OF tb_antirrebote IS

    -- Declaración del componente a probar
    COMPONENT antirrebote
        PORT (
            reset            : IN  STD_LOGIC;
            clk              : IN  STD_LOGIC;
            entrada          : IN  STD_LOGIC;
            entrada_filtrada : OUT STD_LOGIC
        );
    END COMPONENT;

    -- Señales de prueba
    SIGNAL reset_tb            : STD_LOGIC := '0';
    SIGNAL clk_tb              : STD_LOGIC := '0';
    SIGNAL entrada_tb          : STD_LOGIC := '0';
    SIGNAL entrada_filtrada_tb : STD_LOGIC;
    
    -- Control de simulación
    SIGNAL fin_simulacion : BOOLEAN := FALSE;
    
    -- Constantes de tiempo
    CONSTANT PERIODO_CLK : TIME := 50 us;  -- 20 KHz
    CONSTANT TIEMPO_REBOTE : TIME := 20 ms; -- Tiempo de antirrebote
    
BEGIN

    -- Instancia del DUT (Device Under Test)
    DUT: antirrebote
        PORT MAP (
            reset            => reset_tb,
            clk              => clk_tb,
            entrada          => entrada_tb,
            entrada_filtrada => entrada_filtrada_tb
        );

    -- Generador de reloj
    proceso_reloj: PROCESS
    BEGIN
        WHILE NOT fin_simulacion LOOP
            clk_tb <= '0';
            WAIT FOR PERIODO_CLK/2;
            clk_tb <= '1';
            WAIT FOR PERIODO_CLK/2;
        END LOOP;
        WAIT;
    END PROCESS;

    -- Proceso de estimulación
    proceso_estimulos: PROCESS
    BEGIN
        -- Reporte inicial
        REPORT "=== INICIO DE SIMULACION ===" SEVERITY NOTE;
        REPORT "Clock: 20 KHz (50 us)" SEVERITY NOTE;
        REPORT "Tiempo antirrebote: 20 ms (400 ciclos)" SEVERITY NOTE;
        
        -- Reset inicial
        REPORT "--- Test 1: Reset inicial ---" SEVERITY NOTE;
        reset_tb <= '1';
        entrada_tb <= '0';
        WAIT FOR 200 us;
        reset_tb <= '0';
        WAIT FOR 100 us;
        
        -- Test 1: Transición limpia 0->1 (sin rebotes)
        REPORT "--- Test 2: Transición limpia 0->1 ---" SEVERITY NOTE;
        entrada_tb <= '1';
        WAIT FOR 25 ms;  -- Esperar mas del tiempo de antirrebote
        
        -- Test 2: Transición limpia 1->0
        REPORT "--- Test 3: Transición limpia 1->0 ---" SEVERITY NOTE;
        entrada_tb <= '0';
        WAIT FOR 25 ms;
        
        -- Test 3: Pulso corto (menor a 20ms) - debe ser ignorado
        REPORT "--- Test 4: Pulso corto (<20ms) - debe ignorarse ---" SEVERITY NOTE;
        entrada_tb <= '1';
        WAIT FOR 10 ms;  -- Menos del tiempo de antirrebote
        entrada_tb <= '0';
        WAIT FOR 25 ms;
        
        -- Test 4: Rebotes al presionar (0->1 con rebotes)
        REPORT "--- Test 5: Rebotes al presionar (0->1) ---" SEVERITY NOTE;
        entrada_tb <= '1';
        WAIT FOR 100 us;
        entrada_tb <= '0';  -- Rebote
        WAIT FOR 150 us;
        entrada_tb <= '1';  -- Rebote
        WAIT FOR 200 us;
        entrada_tb <= '0';  -- Rebote
        WAIT FOR 100 us;
        entrada_tb <= '1';  -- Se estabiliza en 1
        WAIT FOR 25 ms;     -- Esperar confirmacion
        
        -- Test 5: Rebotes al soltar (1->0 con rebotes)
        REPORT "--- Test 6: Rebotes al soltar (1->0) ---" SEVERITY NOTE;
        entrada_tb <= '0';
        WAIT FOR 120 us;
        entrada_tb <= '1';  -- Rebote
        WAIT FOR 180 us;
        entrada_tb <= '0';  -- Rebote
        WAIT FOR 90 us;
        entrada_tb <= '1';  -- Rebote
        WAIT FOR 110 us;
        entrada_tb <= '0';  -- Se estabiliza en 0
        WAIT FOR 25 ms;     -- Esperar confirmacion
        
        -- Test 6: Multiples rebotes prolongados
        REPORT "--- Test 7: Rebotes prolongados ---" SEVERITY NOTE;
        entrada_tb <= '1';
        WAIT FOR 500 us;
        entrada_tb <= '0';
        WAIT FOR 300 us;
        entrada_tb <= '1';
        WAIT FOR 400 us;
        entrada_tb <= '0';
        WAIT FOR 200 us;
        entrada_tb <= '1';
        WAIT FOR 600 us;
        entrada_tb <= '0';
        WAIT FOR 250 us;
        entrada_tb <= '1';  -- Se estabiliza en 1
        WAIT FOR 25 ms;
        
        -- Test 7: Cambio de estado justo antes de completar el timer
        REPORT "--- Test 8: Cambio antes de completar timer ---" SEVERITY NOTE;
        entrada_tb <= '0';
        WAIT FOR 19 ms;     -- Casi 20ms pero no completo
        entrada_tb <= '1';  -- Cambio antes de confirmar
        WAIT FOR 25 ms;
        entrada_tb <= '0';
        WAIT FOR 25 ms;
        
        -- Test 8: Secuencia rápida de pulsos
        REPORT "--- Test 9: Secuencia rápida de pulsos ---" SEVERITY NOTE;
        FOR i IN 1 TO 5 LOOP
            entrada_tb <= '1';
            WAIT FOR 5 ms;
            entrada_tb <= '0';
            WAIT FOR 5 ms;
        END LOOP;
        WAIT FOR 10 ms;
        
        -- Test 9: Transición válida final
        REPORT "--- Test 10: Transición válida final ---" SEVERITY NOTE;
        entrada_tb <= '1';
        WAIT FOR 25 ms;
        entrada_tb <= '0';
        WAIT FOR 25 ms;
        
        -- Test de reset durante operación
        REPORT "--- Test 11: Reset durante operación ---" SEVERITY NOTE;
        entrada_tb <= '1';
        WAIT FOR 10 ms;
        reset_tb <= '1';
        WAIT FOR 200 us;
        reset_tb <= '0';
        WAIT FOR 5 ms;
        
        -- Finalización
        REPORT "=== FIN DE SIMULACION ===" SEVERITY NOTE;
        fin_simulacion <= TRUE;
        WAIT;
    END PROCESS;
    
    -- Proceso de monitoreo (opcional - para debug)
    proceso_monitor: PROCESS (entrada_filtrada_tb)
    BEGIN
        IF entrada_filtrada_tb = '1' THEN
            REPORT ">>> SALIDA FILTRADA = 1 <<<" SEVERITY NOTE;
        ELSIF entrada_filtrada_tb = '0' THEN
            REPORT ">>> SALIDA FILTRADA = 0 <<<" SEVERITY NOTE;
        END IF;
    END PROCESS;

END testbench;