
LfsrPalindrome:
	addiu $sp $sp -20
	sw $s0 0($sp)
	sw $s1 4($sp)
	sw $s2 8($sp)
	sw $s3 12($sp)
	sw $ra 16($sp)
	add $s0 $a0 $zero
	add $s1 $s0 $zero #savinf value of s0 into s1
	addiu $s2 $zero 1 #store value of 1 in s2
	add $s3 $zero $zero #initiliaze value of s3 to be 0
Loop:
	bitpal $s3 $s1

	beq $s3 $s2 done
	lfsr $s1 $s1
	beq $s0 $s1 done
	j Loop
done:
	add $v0 $s1 $zero
	lw $s0 0($sp)
	lw $s1 4($sp)
	lw $s2 8($sp)
	lw $s3 12($sp)
	lw $ra 16($sp)
	addiu $sp $sp 20
	jr $ra


