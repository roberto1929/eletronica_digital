onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /gcd/clk
add wave -noupdate /gcd/reset
add wave -noupdate /gcd/start
add wave -noupdate -radix unsigned /gcd/a_in
add wave -noupdate -radix unsigned /gcd/b_in
add wave -noupdate /gcd/ready
add wave -noupdate -radix unsigned /gcd/r
add wave -noupdate /gcd/state_reg
add wave -noupdate /gcd/state_next
add wave -noupdate -radix unsigned /gcd/a_reg
add wave -noupdate -radix unsigned /gcd/a_next
add wave -noupdate -radix unsigned /gcd/b_reg
add wave -noupdate -radix unsigned /gcd/b_next
add wave -noupdate -radix unsigned /gcd/n_reg
add wave -noupdate -radix unsigned /gcd/n_next
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {48 ps} 0}
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
configure wave -gridperiod 4
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1 ns}
