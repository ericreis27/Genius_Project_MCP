.text

	li $v0, 31
	li $a0, 71
	li $a1, 1000
	li $a2, 72
	li $a3, 50
	syscall
	
	li $a0, 500
	li $v0, 32
	syscall 
	
	li $v0, 31
	li $a0, 69
	li $a1, 1000
	li $a2, 72
	li $a3, 50
	syscall
	
	li $a0, 500
	li $v0, 32
	syscall 
	
	li $v0, 31
	li $a0, 64
	li $a1, 3000
	li $a2, 72
	li $a3, 50
	syscall
	
exit:
	li $v0, 10
	syscall
	
