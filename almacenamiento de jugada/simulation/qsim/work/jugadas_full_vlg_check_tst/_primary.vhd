library verilog;
use verilog.vl_types.all;
entity jugadas_full_vlg_check_tst is
    port(
        JUGADOR_1       : in     vl_logic;
        JUGADOR_2_IA    : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end jugadas_full_vlg_check_tst;
