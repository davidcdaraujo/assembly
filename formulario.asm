.data
str1: .asciiz "David Costa de Araújo\n"
str2: .asciiz "Av. Ilsão de Melo, Jardim das Acácias, num. 509\n"
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