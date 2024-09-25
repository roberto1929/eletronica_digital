vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/roberto.se/ELD2_PROJ/AULA 9/conta_0_N.vhd}
vsim work.conta_0_N
add wave -position end  sim:/conta_0_N/clock
add wave -position end  sim:/conta_0_N/q
add wave -position end  sim:/conta_0_N/reset
force -freeze sim:/conta_0_N/clock 1 0, 0 {50 ps} -r 100
force -freeze sim:/conta_0_N/reset 1 0
force -freeze sim:/conta_0_N/reset 1 0, 0 20
run 5000