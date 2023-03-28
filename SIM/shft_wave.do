onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal -childformat {{/tb_shftr/x(7) -radix hexadecimal} {/tb_shftr/x(6) -radix hexadecimal} {/tb_shftr/x(5) -radix hexadecimal} {/tb_shftr/x(4) -radix hexadecimal} {/tb_shftr/x(3) -radix hexadecimal} {/tb_shftr/x(2) -radix hexadecimal} {/tb_shftr/x(1) -radix hexadecimal} {/tb_shftr/x(0) -radix hexadecimal}} -subitemconfig {/tb_shftr/x(7) {-radix hexadecimal} /tb_shftr/x(6) {-radix hexadecimal} /tb_shftr/x(5) {-radix hexadecimal} /tb_shftr/x(4) {-radix hexadecimal} /tb_shftr/x(3) {-radix hexadecimal} /tb_shftr/x(2) {-radix hexadecimal} /tb_shftr/x(1) {-radix hexadecimal} /tb_shftr/x(0) {-radix hexadecimal}} /tb_shftr/x
add wave -noupdate -radix hexadecimal /tb_shftr/y
add wave -noupdate -radix hexadecimal /tb_shftr/dir
add wave -noupdate -radix hexadecimal /tb_shftr/cout
add wave -noupdate -radix hexadecimal /tb_shftr/res
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ps} {256 ns}
