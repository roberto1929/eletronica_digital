vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/roberto.se/ELD_PROJ/AULA 35/somador_carry_ripple.vhd}
vsim work.somador_carry_ripple(ifsc_v1)
do wave.do
force -freeze sim:/somador_carry_ripple/a 1101 0
force -freeze sim:/somador_carry_ripple/b 0010 0
run
force -freeze sim:/somador_carry_ripple/cin 0 0
run
force -freeze sim:/somador_carry_ripple/cin 1 0
run
force -freeze sim:/somador_carry_ripple/b 10#7 0
force -freeze sim:/somador_carry_ripple/a 10#15 0
run
force -freeze sim:/somador_carry_ripple/cin 0 0
run
force -freeze sim:/somador_carry_ripple/cin 1 0
run

