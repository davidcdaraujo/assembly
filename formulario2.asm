.data
nome: .asciiz "David Costa de Araújo\n"
dia: .word 22
n1: .asciiz "/"
mes: .word 05
n2: .asciiz "/"
ano: .word 2005

.text
	li $v0, 4
	la $a0, nome
	syscall
	li $v0, 1
	lw $a0, dia
	syscall
	li $v0, 4
	la $a0, n1
	syscall
	li $v0, 1
	lw $a0, mes
	syscall
	li $v0, 4
	la $a0, n2
	syscall
	li $v0, 1
	lw $a0, ano
	syscall
	
	li $v0, 10
	syscall