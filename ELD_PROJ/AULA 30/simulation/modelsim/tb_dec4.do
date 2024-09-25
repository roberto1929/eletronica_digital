 vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/roberto.se/ELD_PROJ/AULA 30/dec_end_4.vhd}
vsim work.dec_end_4(ifsc_v1)
 vsim work.dec_end_4(ifsc_v1) 
add wave -position end  sim:/dec_end_4/a
add wave -position end  sim:/dec_end_4/cs
force -freeze sim:/dec_end_4/cs 0001 0
run
run
force -freeze sim:/dec_end_4/a 01 0
force -freeze sim:/dec_end_4/cs 0010 0
run
force -freeze sim:/dec_end_4/a 10 0
force -freeze sim:/dec_end_4/a 10 0
force -freeze sim:/dec_end_4/cs 0100 0
run
force -freeze sim:/dec_end_4/a 11 0
force -freeze sim:/dec_end_4/cs 1000 0
run



