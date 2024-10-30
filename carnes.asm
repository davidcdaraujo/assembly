.data
	msg1: .asciiz "O valor da carne moída é: \n"
	msg2: .asciiz "O valor do coxão mole é: \n"
	msg3: .asciiz "O valor da picanha é: \n"
	msg4: .asciiz "O valor da fraldinha é: \n"
	num1: .float 22.90
	num2: .float 33.80
	num3: .float 62.40
	num4: .float 45.50
	
.text
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 2
	lwc1 $f12, num1
	syscall
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 2
	lwc1 $f12, num2
	syscall
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 2
	lwc1 $f12, num3
	syscall
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 2
	lwc1 $f12, num4
	syscall
	
	li $v0, 10
	syscall