transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/roberto.se/ELD_PROJ/AULA_25/mux4x1.vhd}

