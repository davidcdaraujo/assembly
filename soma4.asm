.text
	li $t0, 15
	li $t1, 22
	li $t2, 10
	li $t3, 3
	
	add $t4, $t0, $t1
	sub $t5, $t2, $t3
	sub $t6, $t4, $t5
	
	li $v0, 1
	move $a0, $t6
	syscall
	
	li $v0, 10
	syscall