library verilog;
use verilog.vl_types.all;
entity Prueba_borrar_vlg_check_tst is
    port(
        bus_out         : in     vl_logic_vector(8 downto 0);
        sampler_rx      : in     vl_logic
    );
end Prueba_borrar_vlg_check_tst;
