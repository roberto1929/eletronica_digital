vlib rtl_work
 vmap work rtl_work
 vcom -93 -work work {/home/roberto.se/ELD2_PROJ/2024_07_16/fifo_sync_ctrl4.vhd}
vsim work.ae2(ifsc_v1)

add wave -position end  sim:/ae2/clk_fifo
add wave -position end  sim:/ae2/reset_fifo
add wave -position end  sim:/ae2/wr_fifo
add wave -position end  sim:/ae2/rd_fifo
add wave -position end  sim:/ae2/full_fifo
add wave -position end  sim:/ae2/empty_fifo
add wave -position end  sim:/ae2/data_in_fifo
add wave -position end  sim:/ae2/data_out_fifo
force -freeze sim:/ae2/clk_fifo 1 0, 0 {50 ps} -r 100
force -freeze sim:/ae2/reset_fifo 1 0
force -freeze sim:/ae2/reset_fifo 1 0, 0 20
add wave -position end  sim:/ae2/w_addr_fifo
add wave -position end  sim:/ae2/r_addr_fifo
add wave -position end  sim:/ae2/w_en_sgn
add wave -position 9  sim:/ae2/fifo_reg/array_reg
force -freeze sim:/ae2/wr_fifo 0 0
force -freeze sim:/ae2/rd_fifo 0 0
force -freeze sim:/ae2/data_in_fifo 10#1001 0
run
# ** Warning: NUMERIC_STD.TO_INTEGER: metavalue detected, returning 0
#    Time: 0 ps  Iteration: 0  Instance: /ae2/fifo_reg
# ** Warning: NUMERIC_STD.TO_INTEGER: metavalue detected, returning 0
#    Time: 0 ps  Iteration: 1  Instance: /ae2/fifo_reg
run
force -freeze sim:/ae2/wr_fifo 1 0
run
run
force -freeze sim:/ae2/data_in_fifo 10#1003 0
run
run
force -freeze sim:/ae2/wr_fifo 0 0
run
run
force -freeze sim:/ae2/rd_fifo 1 0
run
run
run
run
run 500
force -freeze sim:/ae2/wr_fifo 1 0
run 500
run 500
run 500
run 500


