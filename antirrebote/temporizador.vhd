-- Temporizador para sistema de antirrebote
-- Cuenta ciclos de reloj y genera señal fin_temp

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY temporizador IS
    GENERIC (
        -- Para 20 KHz y 20 ms de antirrebote: 20000 * 0.02 = 400
        -- Ajusta según tu frecuencia de reloj y tiempo deseado
        CUENTA_MAX : INTEGER := 400
    );
    PORT (
		  reset    : IN STD_LOGIC;
        clock    : IN STD_LOGIC;
        ini_temp : IN STD_LOGIC;
        fin_temp : OUT STD_LOGIC
    );
END temporizador;

ARCHITECTURE comportamiento OF temporizador IS
    SIGNAL contador : INTEGER RANGE 0 TO CUENTA_MAX := 0;
BEGIN
    PROCESS (clock, reset)
    BEGIN
        IF (reset = '1') THEN
            contador <= 0;
            fin_temp <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (ini_temp = '1') THEN
                IF (contador = CUENTA_MAX - 1) THEN
                    contador <= 0;
                    fin_temp <= '1';
                ELSE
                    contador <= contador + 1;
                    fin_temp <= '0';
                END IF;
            ELSE
                contador <= 0;
                fin_temp <= '0';
            END IF;
        END IF;
    END PROCESS;
END comportamiento;