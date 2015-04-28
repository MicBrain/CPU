lui $s1 0x1001
addiu $s0 $zero 55555
sw $s0 0($s1)
lbu $t0 0($s1)
lbu $t1 1($s1)
lbu $t2 2($s1)
lbu $t3 3($s1)