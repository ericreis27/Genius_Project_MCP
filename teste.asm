.data

msg_menu_1: .asciiz "1 - Iniciar o jogo\n"
msg_menu_2: .asciiz "2 - Encerrar programa\n"


.text

main: 
menu_inicial:
	la $a0, msg_menu_1
	li $v0, 4
	syscall
	
	la $a0, msg_menu_2
	syscall
	
	li $v0, 5
	syscall
	
	beq $v0, 1, start_game
	beq $v0, 2, end_game
	li $v0, 41

	#li $a1, 3
	syscall
	
	rem $a0, $a0, 4
	bltz $a0, convert
	j exit
	
	
convert:
	mul 	$t1, $a0, -1
	move	$a0, $t1
	
exit:
	li $v0, 1
	syscall

end_game:

	li $v0, 10
	syscall