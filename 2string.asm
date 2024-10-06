.data
msg1: .asciiz "Hello"
msg2: .asciiz " world!"

.text
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 10
	syscall