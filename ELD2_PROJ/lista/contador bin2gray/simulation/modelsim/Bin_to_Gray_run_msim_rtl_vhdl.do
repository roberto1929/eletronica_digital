transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/roberto.se/ELD2_PROJ/lista/contador bin2gray/Bin_to_Gray.vhd}

