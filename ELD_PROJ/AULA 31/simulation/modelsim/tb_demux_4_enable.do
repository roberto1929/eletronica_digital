vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/roberto.se/ELD_PROJ/AULA 31/demux_4_enable.vhd}
vsim work.demux_4_enable(ifsc_v1)
add wave -position end  sim:/demux_4_enable/A
add wave -position end  sim:/demux_4_enable/ena
add wave -position end  sim:/demux_4_enable/x
add wave -position end  sim:/demux_4_enable/y
force -freeze sim:/demux_4_enable/A 00 0
run
force -freeze sim:/demux_4_enable/A 01 0
run
force -freeze sim:/demux_4_enable/A 10 0
run
force -freeze sim:/demux_4_enable/A 11 0
run
force -freeze sim:/demux_4_enable/A 00 0
force -freeze sim:/demux_4_enable/ena 1 0
run
force -freeze sim:/demux_4_enable/x 1 0
run
force -freeze sim:/demux_4_enable/A 01 0
run
force -freeze sim:/demux_4_enable/A 10 0
run
force -freeze sim:/demux_4_enable/A 11 0
run
force -freeze sim:/demux_4_enable/x 0 0
run
force -freeze sim:/demux_4_enable/ena 0 0
run


