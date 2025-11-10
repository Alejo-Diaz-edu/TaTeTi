library verilog;
use verilog.vl_types.all;
entity jugadas_full is
    port(
        JUGADOR_1       : out    vl_logic;
        IN_1            : in     vl_logic;
        CLK             : in     vl_logic;
        RESET_1         : in     vl_logic;
        IN_2            : in     vl_logic;
        RESET_2         : in     vl_logic;
        JUGADOR_2_IA    : out    vl_logic
    );
end jugadas_full;
