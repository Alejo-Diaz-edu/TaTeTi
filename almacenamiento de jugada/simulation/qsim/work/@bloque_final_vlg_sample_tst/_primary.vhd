library verilog;
use verilog.vl_types.all;
entity Bloque_final_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        data            : in     vl_logic_vector(3 downto 0);
        Habilitado      : in     vl_logic;
        Jugador         : in     vl_logic;
        RESET_GENERAL   : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Bloque_final_vlg_sample_tst;
