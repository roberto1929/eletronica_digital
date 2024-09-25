# do reg_file_run_msim_rtl_vhdl.do
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
# vcom -93 -work work {/home/roberto.se/ELD2_PROJ/2024_07_09/reg_file/reg_file.vhd}
# Model Technology ModelSim - Intel FPGA Edition vcom 2020.1 Compiler 2020.02 Feb 28 2020
# Start time: 10:33:02 on Jul 09,2024
# vcom -reportprogress 300 -93 -work work /home/roberto.se/ELD2_PROJ/2024_07_09/reg_file/reg_file.vhd 
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Compiling entity reg_file
# -- Compiling architecture no_loop_arch of reg_file
# End time: 10:33:02 on Jul 09,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# 
# 
# stdin: <EOF>
vsim work.reg_file(no_loop_arch)
# vsim work.reg_file(no_loop_arch) 
# Start time: 10:33:05 on Jul 09,2024
# //  ModelSim - Intel FPGA Edition 2020.1 Feb 28 2020 Linux 4.19.0-27-amd64
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
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.reg_file(no_loop_arch)
add wave -position end  sim:/reg_file/N
add wave -position end  sim:/reg_file/W
add wave -position end  sim:/reg_file/clk
add wave -position end  sim:/reg_file/reset
add wave -position end  sim:/reg_file/wr_en
add wave -position end  sim:/reg_file/w_addr
add wave -position end  sim:/reg_file/w_data
add wave -position end  sim:/reg_file/r_addr0
add wave -position end  sim:/reg_file/r_addr1
add wave -position end  sim:/reg_file/r_data0
add wave -position end  sim:/reg_file/r_data1
add wave -position end  sim:/reg_file/array_reg
add wave -position end  sim:/reg_file/array_next
add wave -position end  sim:/reg_file/en
do tb_reg_file.do
# ** Warning: (vlib-34) Library already exists at "rtl_work".
# Model Technology ModelSim - Intel FPGA Edition vmap 2020.1 Lib Mapping Utility 2020.02 Feb 28 2020
# vmap work rtl_work 
# Modifying modelsim.ini
# Model Technology ModelSim - Intel FPGA Edition vcom 2020.1 Compiler 2020.02 Feb 28 2020
# Start time: 10:45:06 on Jul 09,2024
# vcom -reportprogress 300 -93 -work work ../../reg_file.vhd 
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Compiling entity reg_file
# -- Compiling architecture no_loop_arch of reg_file
# End time: 10:45:06 on Jul 09,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# End time: 10:45:07 on Jul 09,2024, Elapsed time: 0:12:02
# Errors: 0, Warnings: 0
# vsim work.reg_file(no_loop_arch) 
# Start time: 10:45:07 on Jul 09,2024
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.reg_file(no_loop_arch)
do tb_reg_file.do
# ** Warning: (vlib-34) Library already exists at "rtl_work".
# Model Technology ModelSim - Intel FPGA Edition vmap 2020.1 Lib Mapping Utility 2020.02 Feb 28 2020
# vmap work rtl_work 
# Modifying modelsim.ini
# Model Technology ModelSim - Intel FPGA Edition vcom 2020.1 Compiler 2020.02 Feb 28 2020
# Start time: 10:48:35 on Jul 09,2024
# vcom -reportprogress 300 -93 -work work ../../reg_file.vhd 
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Compiling entity reg_file
# -- Compiling architecture no_loop_arch of reg_file
# End time: 10:48:35 on Jul 09,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# End time: 10:48:36 on Jul 09,2024, Elapsed time: 0:03:29
# Errors: 0, Warnings: 0
# vsim work.reg_file(no_loop_arch) 
# Start time: 10:48:36 on Jul 09,2024
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.reg_file(no_loop_arch)
do tb_reg_file.do
# ** Warning: (vlib-34) Library already exists at "rtl_work".
# Model Technology ModelSim - Intel FPGA Edition vmap 2020.1 Lib Mapping Utility 2020.02 Feb 28 2020
# vmap work rtl_work 
# Modifying modelsim.ini
# Model Technology ModelSim - Intel FPGA Edition vcom 2020.1 Compiler 2020.02 Feb 28 2020
# Start time: 10:50:04 on Jul 09,2024
# vcom -reportprogress 300 -93 -work work ../../reg_file.vhd 
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Compiling entity reg_file
# -- Compiling architecture no_loop_arch of reg_file
# End time: 10:50:04 on Jul 09,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# End time: 10:50:05 on Jul 09,2024, Elapsed time: 0:01:29
# Errors: 0, Warnings: 0
# vsim work.reg_file(no_loop_arch) 
# Start time: 10:50:05 on Jul 09,2024
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.reg_file(no_loop_arch)
# ** UI-Msg (suppressible): (vsim-4008) Object 'sim://reg_file/w_addr0' not found.
# Error in macro ./tb_reg_file.do line 25
# ** UI-Msg (suppressible): (vsim-4008) Object 'sim://reg_file/w_addr0' not found.
# 
#     while executing
# "force -freeze sim://reg_file/w_addr0 00 0, 01 600 "
do tb_reg_file.do
# ** Warning: (vlib-34) Library already exists at "rtl_work".
# Model Technology ModelSim - Intel FPGA Edition vmap 2020.1 Lib Mapping Utility 2020.02 Feb 28 2020
# vmap work rtl_work 
# Modifying modelsim.ini
# Model Technology ModelSim - Intel FPGA Edition vcom 2020.1 Compiler 2020.02 Feb 28 2020
# Start time: 10:50:47 on Jul 09,2024
# vcom -reportprogress 300 -93 -work work ../../reg_file.vhd 
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Compiling entity reg_file
# -- Compiling architecture no_loop_arch of reg_file
# End time: 10:50:48 on Jul 09,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
# End time: 10:50:48 on Jul 09,2024, Elapsed time: 0:00:43
# Errors: 0, Warnings: 0
# vsim work.reg_file(no_loop_arch) 
# Start time: 10:50:48 on Jul 09,2024
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.reg_file(no_loop_arch)
# ** UI-Msg (suppressible): (vsim-4008) Object 'sim://reg_file/w_addr0' not found.
# Error in macro ./tb_reg_file.do line 27
# ** UI-Msg (suppressible): (vsim-4008) Object 'sim://reg_file/w_addr0' not found.
# 
#     while executing
# "force -freeze sim://reg_file/w_addr0 00 0, 01 600 "
do tb_reg_file.do
# ** Warning: (vlib-34) Library already exists at "rtl_work".
# Model Technology ModelSim - Intel FPGA Edition vmap 2020.1 Lib Mapping Utility 2020.02 Feb 28 2020
# vmap work rtl_work 
# Modifying modelsim.ini
# Model Technology ModelSim - Intel FPGA Edition vcom 2020.1 Compiler 2020.02 Feb 28 2020
# Start time: 10:52:17 on Jul 09,2024
# vcom -reportprogress 300 -93 -work work ../../reg_file.vhd 
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Compiling entity reg_file
# -- Compiling architecture no_loop_arch of reg_file
# End time: 10:52:17 on Jul 09,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# End time: 10:52:18 on Jul 09,2024, Elapsed time: 0:01:30
# Errors: 0, Warnings: 0
# vsim work.reg_file(no_loop_arch) 
# Start time: 10:52:18 on Jul 09,2024
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.reg_file(no_loop_arch)
# ** UI-Msg (suppressible): (vsim-4008) Object 'sim://reg_file/w_addr0' not found.
# Error in macro ./tb_reg_file.do line 27
# ** UI-Msg (suppressible): (vsim-4008) Object 'sim://reg_file/w_addr0' not found.
# 
#     while executing
# "force -freeze sim://reg_file/w_addr0 00 0, 01 600 "
do tb_reg_file.do
# ** Warning: (vlib-34) Library already exists at "rtl_work".
# Model Technology ModelSim - Intel FPGA Edition vmap 2020.1 Lib Mapping Utility 2020.02 Feb 28 2020
# vmap work rtl_work 
# Modifying modelsim.ini
# Model Technology ModelSim - Intel FPGA Edition vcom 2020.1 Compiler 2020.02 Feb 28 2020
# Start time: 10:53:54 on Jul 09,2024
# vcom -reportprogress 300 -93 -work work ../../reg_file.vhd 
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Compiling entity reg_file
# -- Compiling architecture no_loop_arch of reg_file
# End time: 10:53:54 on Jul 09,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# End time: 10:53:55 on Jul 09,2024, Elapsed time: 0:01:37
# Errors: 0, Warnings: 0
# vsim work.reg_file(no_loop_arch) 
# Start time: 10:53:55 on Jul 09,2024
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.reg_file(no_loop_arch)
# ** UI-Msg (suppressible): (vsim-4008) Object 'sim://reg_file/w_addr0' not found.
# Error in macro ./tb_reg_file.do line 27
# ** UI-Msg (suppressible): (vsim-4008) Object 'sim://reg_file/w_addr0' not found.
# 
#     while executing
# "force -freeze sim://reg_file/w_addr0 00 0, 01 600 "
do tb_reg_file.do
# ** Warning: (vlib-34) Library already exists at "rtl_work".
# Model Technology ModelSim - Intel FPGA Edition vmap 2020.1 Lib Mapping Utility 2020.02 Feb 28 2020
# vmap work rtl_work 
# Modifying modelsim.ini
# Model Technology ModelSim - Intel FPGA Edition vcom 2020.1 Compiler 2020.02 Feb 28 2020
# Start time: 10:54:43 on Jul 09,2024
# vcom -reportprogress 300 -93 -work work ../../reg_file.vhd 
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Compiling entity reg_file
# -- Compiling architecture no_loop_arch of reg_file
# End time: 10:54:43 on Jul 09,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# End time: 10:54:44 on Jul 09,2024, Elapsed time: 0:00:49
# Errors: 0, Warnings: 0
# vsim work.reg_file(no_loop_arch) 
# Start time: 10:54:44 on Jul 09,2024
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.reg_file(no_loop_arch)
# ** UI-Msg (suppressible): (vsim-4008) Object 'sim:/reg_file/w_addr0' not found.
# Error in macro ./tb_reg_file.do line 27
# ** UI-Msg (suppressible): (vsim-4008) Object 'sim:/reg_file/w_addr0' not found.
# 
#     while executing
# "force -freeze sim:/reg_file/w_addr0 00 0, 01 600 "
