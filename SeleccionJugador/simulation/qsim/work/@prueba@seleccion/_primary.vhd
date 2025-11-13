library verilog;
use verilog.vl_types.all;
entity PruebaSeleccion is
    port(
        Jugador         : out    vl_logic;
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        Enable          : in     vl_logic;
        in3             : in     vl_logic;
        in2             : in     vl_logic;
        in1             : in     vl_logic;
        in0             : in     vl_logic;
        Hab             : out    vl_logic
    );
end PruebaSeleccion;
