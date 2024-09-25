 vlib rtl_work
 vmap work rtl_work
 vcom -93 -work work {/home/roberto.se/ELD2_PROJ/2024_07_09/reg_file2/reg_file_para.vhd}
vsim work.reg_file_para(beh_arch)


add wave -position end  sim:/reg_file_para/reset
add wave -position end  sim:/reg_file_para/clk
add wave -position end  sim:/reg_file_para/wr_en
add wave -position end  sim:/reg_file_para/w_addr
add wave -position end  sim:/reg_file_para/w_data
add wave -position end  sim:/reg_file_para/array_next
add wave -position end  sim:/reg_file_para/array_reg
add wave -position end  sim:/reg_file_para/r_addr
add wave -position end  sim:/reg_file_para/r_data
add wave -position end  sim:/reg_file_para/r_addr1
add wave -position end  sim:/reg_file_para/r_data1

force -freeze sim:/reg_file_para/reset 1 0, 0 20
force -freeze sim:/reg_file_para/clk 1 0, 0 {50ps} -r 100
force -freeze sim:/reg_file_para/wr_en 0 0, 1 100, 0 600
force -freeze sim:/reg_file_para/w_data 10#1 0, 10#2 200, 10#3 400, 10#4 500, 10#5 700
force -freeze sim:/reg_file_para/w_addr 0000 0, 0001 200, 1000 400, 1100 500, 0000 700
force -freeze sim:/reg_file_para/r_addr 0000 0, 0100 600 
force -freeze sim:/reg_file_para/r_addr1 1000 0, 1100 600
run 900