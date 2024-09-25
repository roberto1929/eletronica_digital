# do nand_gate_run_msim_rtl_vhdl.do
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
# vlib rtl_work
# vmap work rtl_work
# Model Technology ModelSim - Intel FPGA Edition vmap 2020.1 Lib Mapping Utility 2020.02 Feb 28 2020
# vmap work rtl_work 
# Copying /opt/intelFPGA/20.1/modelsim_ae/linuxaloem/../modelsim.ini to modelsim.ini
# Modifying modelsim.ini
# 
# vcom -93 -work work {/home/roberto.se/ELD_PROJ/nand_gate.vhd}
# Model Technology ModelSim - Intel FPGA Edition vcom 2020.1 Compiler 2020.02 Feb 28 2020
# Start time: 10:26:30 on Oct 03,2023
# vcom -reportprogress 300 -93 -work work /home/roberto.se/ELD_PROJ/nand_gate.vhd 
# -- Loading package STANDARD
# -- Compiling entity nand_gate
# -- Compiling architecture nome_arch of nand_gate
# End time: 10:26:31 on Oct 03,2023, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
# 
# 
# stdin: <EOF>
vsim work.nand_gate(nome_arch)
# vsim work.nand_gate(nome_arch) 
# Start time: 10:32:12 on Oct 03,2023
# //  ModelSim - Intel FPGA Edition 2020.1 Feb 28 2020 Linux 4.19.0-25-amd64
# //
# //  Copyright 1991-2020 Mentor Graphics Corporation
# //  All Rights Reserved.
# //
# //  ModelSim - Intel FPGA Edition and its associated documentation contain trade
# //  secrets and commercial or financial information that are the property of
# //  Mentor Graphics Corporation and are privileged, confidential,
# //  and exempt from disclosure under the Freedom of Information Act,
# //  5 U.S.C. Section 552. Furthermore, this information
# //  is prohibited from disclosure under the Trade Secrets Act,
# //  18 U.S.C. Section 1905.
# //
# Loading std.standard
# Loading work.nand_gate(nome_arch)
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
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/nand_gate/b 0 0
run
force -freeze sim:/nand_gate/x 0 0
run
add wave -position insertpoint  \
sim:/nand_gate/a \
sim:/nand_gate/b \
sim:/nand_gate/c \
sim:/nand_gate/d \
sim:/nand_gate/x


