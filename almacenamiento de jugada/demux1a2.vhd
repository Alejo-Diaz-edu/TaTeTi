library ieee;
use ieee.std_logic_1164.all;

entity demux1a2 is
    port(
        D  : in  std_logic;
        S  : in  std_logic;
        Y0 : out std_logic;
        Y1 : out std_logic
    );
end entity;

architecture rtl of demux1a2 is
begin
    Y0 <= D and (not S);
    Y1 <= D and S;
end architecture;
