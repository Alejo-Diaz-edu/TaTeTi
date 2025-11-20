library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Contador_ModN is
    generic (
        N : integer := 7  -- módulo 
    );
    port (
        clk     : in  std_logic;      -- reloj (SCL en I2C)
        reset   : in  std_logic;      -- reset síncrono
        enable  : in  std_logic;      -- habilitación del contador
        fin     : out std_logic;      -- se activa cuando llega al valor final
        count   : out std_logic_vector(3 downto 0)  -- valor actual
    );
end Contador_ModN;

architecture Behavioral of Contador_ModN is
    signal cnt : integer range 0 to N := 0;
begin

process(clk, reset)
begin
    if reset = '1' then
        cnt <= 0;
    elsif falling_edge(clk) then
        if enable = '1' then
            if cnt = N then
                cnt <= 0;           -- Reinicia automáticamente
            else
                cnt <= cnt + 1;
            end if;
        end if;
    end if;
end process;

    fin   <= '1' when cnt = N else '0';
    count <= std_logic_vector(to_unsigned(cnt, count'length));

end Behavioral;
