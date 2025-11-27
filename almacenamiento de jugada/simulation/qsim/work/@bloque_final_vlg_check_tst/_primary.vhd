library verilog;
use verilog.vl_types.all;
entity Bloque_final_vlg_check_tst is
    port(
        Empate          : in     vl_logic;
        Fin             : in     vl_logic;
        Ganador_jugador_1: in     vl_logic;
        Ganador_jugador_2: in     vl_logic;
        Habilitada_ocupado: in     vl_logic;
        P1_LEDS         : in     vl_logic_vector(0 to 8);
        P2_LEDS         : in     vl_logic_vector(0 to 8);
        sampler_rx      : in     vl_logic
    );
end Bloque_final_vlg_check_tst;
