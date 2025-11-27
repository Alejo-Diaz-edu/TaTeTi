library verilog;
use verilog.vl_types.all;
entity Bloque_final is
    port(
        Fin             : out    vl_logic;
        Jugador         : in     vl_logic;
        RESET_GENERAL   : in     vl_logic;
        Habilitado      : in     vl_logic;
        CLK             : in     vl_logic;
        data            : in     vl_logic_vector(3 downto 0);
        Habilitada_ocupado: out    vl_logic;
        P1_LEDS         : out    vl_logic_vector(0 to 8);
        P2_LEDS         : out    vl_logic_vector(0 to 8);
        Ganador_jugador_1: out    vl_logic;
        Ganador_jugador_2: out    vl_logic;
        Empate          : out    vl_logic
    );
end Bloque_final;
