library verilog;
use verilog.vl_types.all;
entity demux1a2 is
    port(
        D               : in     vl_logic;
        S               : in     vl_logic;
        Y0              : out    vl_logic;
        Y1              : out    vl_logic
    );
end demux1a2;
