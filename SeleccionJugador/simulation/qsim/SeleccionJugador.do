onerror {quit -f}
vlib work
vlog -work work SeleccionJugador.vo
vlog -work work SeleccionJugador.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.PruebaSeleccion_vlg_vec_tst
vcd file -direction SeleccionJugador.msim.vcd
vcd add -internal PruebaSeleccion_vlg_vec_tst/*
vcd add -internal PruebaSeleccion_vlg_vec_tst/i1/*
add wave /*
run -all
