library verilog;
use verilog.vl_types.all;
entity Prueba_borrar is
    port(
        Fin             : out    vl_logic;
        Jugador         : in     vl_logic;
        RESET_GENERAL   : in     vl_logic;
        Habilitado      : in     vl_logic;
        CLK             : in     vl_logic;
        data            : in     vl_logic_vector(3 downto 0);
        Habilitada_ocupado: out    vl_logic;
        Empate          : out    vl_logic;
        Ganador_jugador2: out    vl_logic;
        Ganador_jugador1: out    vl_logic;
        \1_leds\        : out    vl_logic_vector(8 downto 0);
        \2_leds\        : out    vl_logic_vector(8 downto 0)
    );
end Prueba_borrar;
