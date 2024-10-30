.data
	msg1: .asciiz "Qual o nome do atleta: \n"
	msg2: .asciiz "O nome do atleta é: \n"
	msg3: .asciiz "Seu tempo de corrida é: \n"
	num: .float 1.53
	nome: .space 50
	
.text
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 8
	la $a0, nome
	la $a1, 50
	syscall
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 4
	la $a0, nome
	syscall
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 2
	lwc1 $f12, num
	syscall
	
	li $v0, 10
	syscall