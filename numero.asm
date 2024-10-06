.data
num: .word 2024

.text
	li $v0, 1
	lw $a0, num
	syscall
	
	li $v0, 10
	syscall