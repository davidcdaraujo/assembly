.data
	msg1: .asciiz "Primeiro número da multiplicação: "
	msg2: .asciiz "Segundo número da multiplicação: "
	msg3: .asciiz "Número que vai subtrair: "
	res: .asciiz "Resultado: "

.text
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	mul $t2, $t1, $t0
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	
	move $t3, $v0
	
	sub $t4, $t2, $t3
	
	li $v0, 4
	la $a0, res
	syscall
	
	li $v0, 1
	move $a0, $t4
	syscall
	
	li $v0, 10
	syscall