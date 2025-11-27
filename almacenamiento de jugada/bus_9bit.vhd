library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bus_9bit is
    port(
        b0      : in  std_logic;
        b1      : in  std_logic;
        b2      : in  std_logic;
        b3      : in  std_logic;
        b4      : in  std_logic;
        b5      : in  std_logic;
        b6      : in  std_logic;
        b7      : in  std_logic;
        b8      : in  std_logic;
        bus_out : out std_logic_vector(8 downto 0)
    );
end bus_9bit;

architecture rtl of bus_9bit is
begin
    bus_out(0) <= b0;
    bus_out(1) <= b1;
    bus_out(2) <= b2;
    bus_out(3) <= b3;
    bus_out(4) <= b4;
    bus_out(5) <= b5;
    bus_out(6) <= b6;
    bus_out(7) <= b7;
    bus_out(8) <= b8;
end rtl;