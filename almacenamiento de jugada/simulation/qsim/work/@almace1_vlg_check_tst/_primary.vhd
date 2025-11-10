library verilog;
use verilog.vl_types.all;
entity Almace1_vlg_check_tst is
    port(
        JUGADOR_1       : in     vl_logic;
        JUGADOR_2_IA    : in     vl_logic;
        ocupado         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Almace1_vlg_check_tst;
