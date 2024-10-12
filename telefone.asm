.data
	num1: .asciiz "Digite o primeiro número: "
	num2: .asciiz "Digite o segundo número: "
	saida1: .asciiz "Primeiro: "
	saida2: .asciiz "Segundo: "

.text
	li $v0, 4
	la $a0, num1
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	li $v0, 4
	la $a0, saida1
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 4
	la $a0, num2
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	li $v0, 4
	la $a0, saida2
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	li $v0, 10
	syscall