vlib rtl_work
vmap work rtl_work
vcom -93 -work work {../../reg_file.vhd}
vsim work.reg_file(no_loop_arch)

add wave -position end  sim:/reg_file/reset
add wave -position end  sim:/reg_file/clk
add wave -position end  sim:/reg_file/wr_en
add wave -position end  sim:/reg_file/w_addr
add wave -position end  sim:/reg_file/en
add wave -position end  sim:/reg_file/w_data
add wave -position end  sim:/reg_file/array_next
add wave -position end  sim:/reg_file/array_reg
add wave -position end  sim:/reg_file/r_addr0
add wave -position end  sim:/reg_file/r_data0
add wave -position end  sim:/reg_file/r_addr1
add wave -position end  sim:/reg_file/r_data1
add wave -position end  sim:/reg_file/N
add wave -position end  sim:/reg_file/W

force -freeze sim:/reg_file/reset 1 0, 0 20
force -freeze sim:/reg_file/clk 1 0, 0 {50ps} -r 100
force -freeze sim:/reg_file/wr_en 0 0, 1 100, 0 600
force -freeze sim:/reg_file/w_data 10#1 0, 10#2 200, 10#3 400, 10#4 500, 10#5 700
force -freeze sim:/reg_file/w_addr 00 0, 01 200, 10 400, 11 500, 00 700
force -freeze sim:/reg_file/r_addr0 00 0, 01 600 
force -freeze sim:/reg_file/r_addr1 10 0, 11 600
run 900

