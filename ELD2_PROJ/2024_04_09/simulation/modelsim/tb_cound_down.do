
vlib rtl_work
 vmap work rtl_work
vcom -93 -work work {/home/roberto.se/ELD2_PROJ/2024_04_09/contador_up_down.vhd}
vsim work.contador_up_down(ifsc_v1)
add wave -position end  sim:/contador_up_down/MIN
add wave -position end  sim:/contador_up_down/MAX
add wave -position end  sim:/contador_up_down/UPDOWN
add wave -position end  sim:/contador_up_down/clk
add wave -position end  sim:/contador_up_down/rst
add wave -position end  sim:/contador_up_down/count_out
add wave -position end  sim:/contador_up_down/clk_out
force -freeze sim:/contador_up_down/rst 1 0
force -freeze sim:/contador_up_down/rst 1 0, 0 20
force -freeze sim:/contador_up_down/clk 1 0, 0 {50 ps} -r 100
run 2000


