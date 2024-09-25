vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/roberto.se/ELD2_PROJ/ATIVIDADES/mux4x1/mux4x1.vhd}
vsim work.cfg_ifsc
add wave -position end  sim:/mux4x1/X
add wave -position end  sim:/mux4x1/Sel
add wave -position end  sim:/mux4x1/Y
force -freeze sim:/mux4x1/Sel 10 0
run
noforce sim:/mux4x1/X
force -freeze sim:/mux4x1/X 0001 0
run
force -freeze sim:/mux4x1/X 0010 0
run
force -freeze sim:/mux4x1/X 0100 0
run
force -freeze sim:/mux4x1/X 1000 0
run
force -freeze sim:/mux4x1/X 1001 0
force -freeze sim:/mux4x1/X 1010 0
run
force -freeze sim:/mux4x1/X 1100 0
run
force -freeze sim:/mux4x1/X 1101 0
run
force -freeze sim:/mux4x1/X 1110 0
run
force -freeze sim:/mux4x1/X 1111 0
run
force -freeze sim:/mux4x1/Sel 11 0
run
run


