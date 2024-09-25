
 vlib rtl_work
 vmap work rtl_work

 vcom -93 -work work {/home/roberto.se/ELD2_PROJ/AULA 8/ff_D.vhd}

vsim work.cfg_ifsc
add wave -position end  sim:/ff_d/N
add wave -position end  sim:/ff_d/clock
add wave -position end  sim:/ff_d/preset
add wave -position end  sim:/ff_d/enable
add wave -position end  sim:/ff_d/reset
add wave -position end  sim:/ff_d/d
add wave -position end  sim:/ff_d/q
force -freeze sim:/ff_d/preset 0 0
force -freeze sim:/ff_d/enable 0 0
force -freeze sim:/ff_d/reset 0 0
force -freeze sim:/ff_d/d 0 0
force -freeze sim:/ff_d/clock 1 0, 0 {50 ps} -r 100
run
run 10
run 10
run 100
force -freeze sim:/ff_d/d 1 0
run 100
force -freeze sim:/ff_d/d 0 0
run 100
force -freeze sim:/ff_d/preset 0 0
force -freeze sim:/ff_d/enable 0 0
force -freeze sim:/ff_d/reset 0 0
force -freeze sim:/ff_d/d 0 0
force -freeze sim:/ff_d/clock 1 0, 0 {50 ps} -r 100
run
run 10
run 10
run 100
force -freeze sim:/ff_d/d 1 0
run 100
force -freeze sim:/ff_d/d 0 0
run 100
force -freeze sim:/ff_d/reset 1 0
run 100
force -freeze sim:/ff_d/reset 0 0
force -freeze sim:/ff_d/enable 1 0
run
run


