addiu $sp $sp -4
sw $ra 0($sp)
addiu $t2 $zero 5

start:
	addiu $t1 $zero 5
	jal adderr
	add $t1 $zero $zero
adderr:
	addiu $t3 $zero 9
	jr $ra