transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/roberto.se/ELD2_PROJ/AULA 9/conta_0_N.vhd}

