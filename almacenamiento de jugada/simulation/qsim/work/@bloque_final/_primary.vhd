library verilog;
use verilog.vl_types.all;
entity Bloque_final is
    port(
        Fin             : out    vl_logic;
        Jugador         : in     vl_logic;
        RESET_GENERAL   : in     vl_logic;
        Habilitado      : in     vl_logic;
        CLK             : in     vl_logic;
        data            : in     vl_logic_vector(3 downto 0);
        Habilitada_ocupado: out    vl_logic;
        Empate          : out    vl_logic;
        Ganador_jugador_uno: out    vl_logic;
        Ganador_jugador_dos: out    vl_logic;
        pin_name2       : out    vl_logic;
        pin_name3       : out    vl_logic;
        pin_name4       : out    vl_logic;
        pin_name5       : out    vl_logic;
        pin_name6       : out    vl_logic;
        pin_name8       : out    vl_logic;
        pin_name9       : out    vl_logic;
        pin_name10      : out    vl_logic;
        pin_name11      : out    vl_logic;
        pin_name12      : out    vl_logic;
        pin_name13      : out    vl_logic;
        pin_name14      : out    vl_logic;
        pin_name15      : out    vl_logic;
        pin_name16      : out    vl_logic;
        pin_name17      : out    vl_logic;
        pin_name18      : out    vl_logic;
        pin_name19      : out    vl_logic;
        pin_name20      : out    vl_logic
    );
end Bloque_final;
