onerror {resume}
add list -width 13 /tb_shftr/x
add list /tb_shftr/y
add list /tb_shftr/dir
add list /tb_shftr/cout
add list /tb_shftr/res
configure list -usestrobe 1
configure list -strobestart {0 ps} -strobeperiod {50 ns}
configure list -usesignaltrigger 0
configure list -delta all
configure list -signalnamewidth 0
configure list -datasetprefix 0
configure list -namelimit 5
