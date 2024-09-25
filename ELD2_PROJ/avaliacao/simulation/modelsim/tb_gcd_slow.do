vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/roberto.se/ELD2_PROJ/avaliacao/gcd.vhd}
vsim work.gcd(slow_arch)

do wave.do

force -freeze sim:/gcd/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/gcd/reset 1 0
force -freeze sim:/gcd/reset 1 0, 0 20
force -freeze sim:/gcd/start 0 0
force -freeze sim:/gcd/a_in 10#225 0
force -freeze sim:/gcd/b_in 10#3 0
run
run
run
force -freeze sim:/gcd/start 1 0
run 16900



