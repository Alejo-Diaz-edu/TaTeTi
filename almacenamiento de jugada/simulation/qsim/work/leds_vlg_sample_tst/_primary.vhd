library verilog;
use verilog.vl_types.all;
entity leds_vlg_sample_tst is
    port(
        Jugador1_led1   : in     vl_logic;
        Jugador1_led2   : in     vl_logic;
        Jugador1_led3   : in     vl_logic;
        Jugador1_led4   : in     vl_logic;
        Jugador1_led5   : in     vl_logic;
        Jugador1_led6   : in     vl_logic;
        Jugador1_led7   : in     vl_logic;
        Jugador1_led8   : in     vl_logic;
        Jugador1_led9   : in     vl_logic;
        Jugador2_led1   : in     vl_logic;
        Jugador2_led2   : in     vl_logic;
        Jugador2_led3   : in     vl_logic;
        Jugador2_led4   : in     vl_logic;
        Jugador2_led5   : in     vl_logic;
        Jugador2_led6   : in     vl_logic;
        Jugador2_led7   : in     vl_logic;
        Jugador2_led8   : in     vl_logic;
        Jugador2_led9   : in     vl_logic;
        ocupado1        : in     vl_logic;
        ocupado2        : in     vl_logic;
        ocupado3        : in     vl_logic;
        ocupado4        : in     vl_logic;
        ocupado5        : in     vl_logic;
        ocupado6        : in     vl_logic;
        ocupado7        : in     vl_logic;
        ocupado8        : in     vl_logic;
        ocupado9        : in     vl_logic;
        reset_jugador   : in     vl_logic;
        reset_sig_jugador: in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end leds_vlg_sample_tst;
