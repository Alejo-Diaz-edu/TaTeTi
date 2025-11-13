library verilog;
use verilog.vl_types.all;
entity leds_vlg_check_tst is
    port(
        Jugada_valida   : in     vl_logic;
        Led1            : in     vl_logic;
        Led2            : in     vl_logic;
        Led3            : in     vl_logic;
        Led4            : in     vl_logic;
        Led5            : in     vl_logic;
        Led6            : in     vl_logic;
        Led7            : in     vl_logic;
        Led8            : in     vl_logic;
        Led9            : in     vl_logic;
        Reset_de_ocupado: in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end leds_vlg_check_tst;
