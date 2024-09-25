vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/roberto.se/ELD_PROJ/AULA 31/demux_4_v1.vhd}
vsim work.demux_4_v1
add wave -position end  sim:/demux_4_v1/A
add wave -position end  sim:/demux_4_v1/x
add wave -position end  sim:/demux_4_v1/y
run
force -freeze sim:/demux_4_v1/x 1 0
run
force -freeze sim:/demux_4_v1/A 01 0
run
force -freeze sim:/demux_4_v1/x 0 0
run
force -freeze sim:/demux_4_v1/A 11 0
run
force -freeze sim:/demux_4_v1/x 1 1
run




