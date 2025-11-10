library verilog;
use verilog.vl_types.all;
entity Almace1_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        IN_1            : in     vl_logic;
        IN_2            : in     vl_logic;
        RESET_1         : in     vl_logic;
        RESET_2         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Almace1_vlg_sample_tst;
