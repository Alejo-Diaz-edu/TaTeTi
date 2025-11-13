library verilog;
use verilog.vl_types.all;
entity Almace2 is
    port(
        JUGADOR_1       : out    vl_logic;
        RESET           : in     vl_logic;
        CLK             : in     vl_logic;
        Jugada          : in     vl_logic;
        Jugador         : in     vl_logic;
        JUGADOR_2_IA    : out    vl_logic;
        ocupado         : out    vl_logic;
        RESET_OCUPADO   : in     vl_logic
    );
end Almace2;
