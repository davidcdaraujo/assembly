.data
	num1: .asciiz "Primeiro: "
	num2: .asciiz "Segundo: "
	num3: .asciiz "Terceiro: "
	res: .asciiz "Resultado: "
	
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
	
	li $v0, 4
	la $a0, num3
	syscall
	
	li $v0, 5
	syscall
	
	move $t4, $v0
	
	sub $t5, $t3, $t4
	
	li $v0, 4
	la $a0, res
	syscall
	
	li $v0, 1
	move $a0, $t5
	syscall
	
	li $v0, 10
	syscall