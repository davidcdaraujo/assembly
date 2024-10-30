.data
	msg1: .asciiz "Número real: "
	num: .float 33.324
.text
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 2
	lwc1 $f12, num
	syscall
	
	li $v0, 10
	syscall