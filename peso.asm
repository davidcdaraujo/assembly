.data
	msg1: .asciiz "O peso da primeira pessoa é: \n"
	peso1: .float 60.0
	msg2: .asciiz "O peso da segunda pessoa é: \n"
	peso2: .float 76.3
	
.text
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 2
	lwc1 $f12, peso1
	syscall
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 2
	lwc1 $f12, peso2
	syscall
	
	li $v0, 10
	syscall