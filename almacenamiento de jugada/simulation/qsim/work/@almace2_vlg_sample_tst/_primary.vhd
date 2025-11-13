library verilog;
use verilog.vl_types.all;
entity Almace2_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        Jugada          : in     vl_logic;
        Jugador         : in     vl_logic;
        RESET           : in     vl_logic;
        RESET_OCUPADO   : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Almace2_vlg_sample_tst;
