global _start
_start:
	mov rdi, 5
 	mov rax, 1

fact:
	mul rdi
    dec rdi
  	test rdi, rdi
   	jz done
	jmp fact

 done:
    mov rdi, rax
 	mov rax, 60
  	syscall   	
