library verilog;
use verilog.vl_types.all;
entity Almace1_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        Jugador         : in     vl_logic;
        posicion        : in     vl_logic;
        RESET           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Almace1_vlg_sample_tst;
