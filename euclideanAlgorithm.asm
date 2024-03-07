global _start
_start:
	mov rax, ;num1
	mov rdi, ;num2
	
alg:	
	div rdi	
	test rdx, rdx
	jz success
	mov rax, rdi
	mov rdi, rdx
	mov rdx, 0	
	jmp alg

success:
	mov rax, 60
	syscall
