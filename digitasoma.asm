.data
	num1: .asciiz "Digite o primeiro número: "
	num2: .asciiz "Digite o segundo número: "

.text
	li $v0, 4
	la $a0, num1
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, num2
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	add $t3, $t1, $t0
	
	li $v0, 1
	move $a0, $t3
	syscall
	
	li $v0, 10
	syscall