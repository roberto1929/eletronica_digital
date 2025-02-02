vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/roberto.se/ELD2_PROJ/2024_04_19/shift_register.vhd}
vsim work.shift_register(two_seg_arch)
add wave -position end  sim:/shift_register/reset
add wave -position end  sim:/shift_register/clk
add wave -position end  sim:/shift_register/d
add wave -position end  sim:/shift_register/ctrl
add wave -position end  sim:/shift_register/r_next
add wave -position end  sim:/shift_register/r_reg
add wave -position end  sim:/shift_register/q
force -freeze sim:/shift_register/reset 1 0
force -freeze sim:/shift_register/reset 1 0, 0 20
force -freeze sim:/shift_register/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/shift_register/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/shift_register/d 1100101010 0
force -freeze sim:/shift_register/ctrl 11 0
run 4000
force -freeze sim:/shift_register/ctrl 10 0
run 4000
force -freeze sim:/shift_register/ctrl 01 0
run 4000
force -freeze sim:/shift_register/ctrl 00 0
run 4000

