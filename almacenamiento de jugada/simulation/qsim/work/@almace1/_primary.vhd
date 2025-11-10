library verilog;
use verilog.vl_types.all;
entity Almace1 is
    port(
        JUGADOR_1       : out    vl_logic;
        RESET_2         : in     vl_logic;
        CLK             : in     vl_logic;
        IN_2            : in     vl_logic;
        RESET_1         : in     vl_logic;
        IN_1            : in     vl_logic;
        JUGADOR_2_IA    : out    vl_logic;
        ocupado         : out    vl_logic
    );
end Almace1;
