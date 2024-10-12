.data
	saudacao: .asciiz "Digite sua idade: "
	saida: .asciiz "Sua idade é "
	
.text
	li $v0, 4
	la $a0, saudacao
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, saida
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 10
	syscall