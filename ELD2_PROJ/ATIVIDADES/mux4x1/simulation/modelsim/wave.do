onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mux4x1/X
add wave -noupdate /mux4x1/Sel
add wave -noupdate /mux4x1/Y
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 4
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits min
update
WaveRestoreZoom {50 ps} {1050 ps}
