.data
	msg1: .asciiz "Digite o valor da camiseta: "
	msg2: .asciiz "Valor a ser pago: "
	msg3: .asciiz "Troco: "
	
.text
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 6
	syscall
	
	mov.s $f1, $f0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 6
	syscall
	
	mov.s $f2, $f0
	
	sub.s $f12, $f2, $f1
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 2
	syscall
	
	li $v0, 10
	syscall