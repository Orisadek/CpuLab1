onerror {resume}
add list /tb_sys/X
add list /tb_sys/Y
add list /tb_sys/ALUFN
add list /tb_sys/ALUout
add list /tb_sys/Nflag
add list /tb_sys/Cflag
add list /tb_sys/Zflag
configure list -usestrobe 1
configure list -strobestart {0 ps} -strobeperiod {50 ns}
configure list -usesignaltrigger 0
configure list -delta all
configure list -signalnamewidth 0
configure list -datasetprefix 0
configure list -namelimit 5
