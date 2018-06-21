.data




.text
	
	li $t0, 0xffff0000
	li $t1, 0x00000002
	sw $t1, ($t0)
	
	andi $t2, $t0, 0x00000001
	#beq $t2, 1, ready
	
	
#ready:
#	li $t3, 0xffff0004
#	move $a0