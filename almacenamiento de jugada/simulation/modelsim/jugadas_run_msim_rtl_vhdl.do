transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/toni/Desktop/Proyecto_tateti/TaTeTi/almacenamiento de jugada/lpm_mux0.vhd}
vcom -93 -work work {C:/Users/toni/Desktop/Proyecto_tateti/TaTeTi/almacenamiento de jugada/demux1a2.vhd}
vcom -93 -work work {C:/Users/toni/Desktop/Proyecto_tateti/TaTeTi/almacenamiento de jugada/lpm_decode0.vhd}

