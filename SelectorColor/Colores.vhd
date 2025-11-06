-- Quartus II VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;

entity Colores is

	port(
		clk		 : in	std_logic;
		reset	 : in	std_logic;
		output	 : out	std_logic_vector(23 downto 0)
	);

end entity;

architecture rtl of Colores is

	-- Build an enumerated type for the state machine
	type state_type is (Lima, Azul, Amarillo, Fucsia, Violeta);

	-- Register to hold the current state
	signal state   : state_type;

begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			state <= Lima;
		elsif (rising_edge(clk)) then
			case state is
				when Lima=>
						state <= Azul;
					
				when Azul=>
					state <= Amarillo;
					
				when Amarillo=>
					state <= Fucsia;
					
				when Fucsia =>
					state <= Violeta;
					
				when Violeta =>
					state <= Lima;
					
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when Lima =>
				output <= "011001101111111100000000"; --66FF00
			when Azul =>
				output <= "000000000000000011111111"; --0000FF
			when Amarillo =>
				output <= "111111111111111100000000"; --FFFF00
			when Fucsia =>
				output <= "111111110011001111111111"; --FF33FF
			when Violeta =>
				output <= "100110010000000011111111"; --9900FF
		end case;
	end process;

end rtl;
