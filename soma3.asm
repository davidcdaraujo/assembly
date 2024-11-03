.text
	li $t0, 12
	li $t1, 8
	li $t2, 12
	
	mul $t3, $t0, $t1
	add $t4, $t3, $t2
	
	li $v0, 1
	move $a0, $t4
	syscall
	
	li $v0, 10
	syscall