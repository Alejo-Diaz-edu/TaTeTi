library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEMUX_1to2 is
    Port (
        D   : in  STD_LOGIC;     -- Entrada de datos
        SEL : in  STD_LOGIC;     -- Línea de selección
        Y0  : out STD_LOGIC;     -- Salida 0
        Y1  : out STD_LOGIC      -- Salida 1
    );
end DEMUX_1to2;

architecture Behavioral of DEMUX_1to2 is
begin
    process(D, SEL)
    begin
        if SEL = '0' then
            Y0 <= D;
            Y1 <= '0';
        else
            Y0 <= '0';
            Y1 <= D;
        end if;
    end process;
end Behavioral;
