transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/roberto.se/ELD2_PROJ/2024_07_16/fifo_sync_ctrl4.vhd}
vcom -93 -work work {/home/roberto.se/ELD2_PROJ/2024_07_09/reg_file2/reg_file_para.vhd}
vcom -93 -work work {/home/roberto.se/ELD2_PROJ/2024_07_16_2/ae2.vhd}

