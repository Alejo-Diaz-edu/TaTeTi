library verilog;
use verilog.vl_types.all;
entity PruebaSeleccion_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        Enable          : in     vl_logic;
        in0             : in     vl_logic;
        in1             : in     vl_logic;
        in2             : in     vl_logic;
        in3             : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end PruebaSeleccion_vlg_sample_tst;
