onerror {resume}
add list -width 15 /tb_add_sub/x
add list /tb_add_sub/y
add list /tb_add_sub/ALUFN
add list /tb_add_sub/res
add list /tb_add_sub/cout
configure list -usestrobe 1
configure list -strobestart {0 ps} -strobeperiod {50 ns}
configure list -usesignaltrigger 0
configure list -delta all
configure list -signalnamewidth 0
configure list -datasetprefix 0
configure list -namelimit 5
