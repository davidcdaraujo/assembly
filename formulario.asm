.data
str1: .asciiz "David Costa de Ara�jo\n"
str2: .asciiz "Av. Ils�o de Melo, Jardim das Ac�cias, num. 509\n"
str3: .asciiz "Teresina - PI\n"
str4: .asciiz "Brasil"

.text
	li $v0, 4
	la $a0, str1
	syscall
	li $v0, 4
	la $a0, str2
	syscall
	li $v0, 4
	la $a0, str3
	syscall
	li $v0, 4
	la $a0, str4
	syscall
	
	li $v0, 10
	syscall