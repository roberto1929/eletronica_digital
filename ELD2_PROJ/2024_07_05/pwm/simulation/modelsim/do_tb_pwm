vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/roberto.se/ELD2_PROJ/2024_07_05/pwm/pwm.vhd}
vsim work.pwm(two_seg_arch)
add wave -position end  sim:/pwm/clk
add wave -position end  sim:/pwm/reset
add wave -position end  sim:/pwm/w
add wave -position end  sim:/pwm/pwm_pulse
add wave -position end  sim:/pwm/r_reg
add wave -position end  sim:/pwm/r_next
add wave -position end  sim:/pwm/buf_reg
add wave -position end  sim:/pwm/buf_next
force -freeze sim:/pwm/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/pwm/reset 1 0
force -freeze sim:/pwm/reset 1 0, 0 20
force -freeze sim:/pwm/w 0011 0
run 100
# ** Warning: NUMERIC_STD."<": metavalue detected, returning FALSE
#    Time: 0 ps  Iteration: 0  Instance: /pwm
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
run 100
force -freeze sim:/pwm/w 10#8 0
run 1600


