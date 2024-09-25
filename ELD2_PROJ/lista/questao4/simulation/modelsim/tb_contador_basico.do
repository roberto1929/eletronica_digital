
vlib rtl_work
vmap work rtl_work

 vcom -93 -work work {/home/roberto.se/ELD2_PROJ/lista/questao4/contador_basico.vhd}

vsim work.contador_basico(ifsc_v1)

do wave.do

force -freeze sim:/contador_basico/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/contador_basico/reset 1 0, 0 20
write format wave -window .main_pane.wave.interior.cs.body.pw.wf /home/roberto.se/ELD2_PROJ/lista/questao4/simulation/modelsim/wave.do
run 200
run 1000


