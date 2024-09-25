onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Entradas
add wave -noupdate /somador_carry_ripple/a
add wave -noupdate /somador_carry_ripple/b
add wave -noupdate /somador_carry_ripple/cin
add wave -noupdate -divider Interno
add wave -noupdate /somador_carry_ripple/c
add wave -noupdate -divider Saidas
add wave -noupdate /somador_carry_ripple/cout
add wave -noupdate /somador_carry_ripple/s
add wave -noupdate -divider {Decimal unsigned}
add wave -noupdate -radix unsigned /somador_carry_ripple/a
add wave -noupdate -radix unsigned /somador_carry_ripple/b
add wave -noupdate -radix unsigned /somador_carry_ripple/s
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {21 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1 ns}
