onerror {quit -f}
vlib work
vlog -work work jugadas.vo
vlog -work work jugadas.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Almace1_vlg_vec_tst
vcd file -direction jugadas.msim.vcd
vcd add -internal Almace1_vlg_vec_tst/*
vcd add -internal Almace1_vlg_vec_tst/i1/*
add wave /*
run -all
