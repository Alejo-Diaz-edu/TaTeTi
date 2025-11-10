library verilog;
use verilog.vl_types.all;
entity demux1a2_vlg_sample_tst is
    port(
        D               : in     vl_logic;
        S               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end demux1a2_vlg_sample_tst;
