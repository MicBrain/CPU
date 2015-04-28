lui $s1 0x1001
addiu $s0 $zero 55555
sw $s0 0($s1)
lb $t0 0($s1)
lb $t1 1($s1)
lb $t2 2($s1)
lb $t3 3($s1)