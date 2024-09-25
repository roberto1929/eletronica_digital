
vlib rtl_work
vmap work rtl_work
vcom -93 -work work {/home/roberto.se/ELD_PROJ/nand_gate.vhd}
vsim work.nand_gate(nome_arch)
add wave -position insertpoint  \
sim:/nand_gate/a \
sim:/nand_gate/b \
sim:/nand_gate/c \
sim:/nand_gate/d \
sim:/nand_gate/x
force -freeze sim:/nand_gate/a 1 0
run
force -freeze sim:/nand_gate/b 1 0
run
force -freeze sim:/nand_gate/c 1 0
run
force -freeze sim:/nand_gate/d 1 0
run
force -freeze sim:/nand_gate/b 0 0
run
force -freeze sim:/nand_gate/a 0 0
run
force -freeze sim:/nand_gate/a 0 0


