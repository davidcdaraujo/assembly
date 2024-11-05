.data
	msg1: .asciiz "Digite o primeiro número da soma: "
	msg2: .asciiz "Digite o segundo número da soma: "
	msg3: .asciiz "Digite o número a ser multiplicado da soma: "
	msg4: .asciiz "Digite o número a ser subtraído da multiplicação: "
	msg5: .asciiz "Resultado: "
	
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
	
	add $t2, $t1, $t0
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	
	move $t3, $v0
	
	mul $t4, $t3, $t2
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 5
	syscall
	
	move $t5, $v0
	
	sub $t6, $t4, $t5
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	move $a0, $t6
	syscall
	
	li $v0, 10
	syscall