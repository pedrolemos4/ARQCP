.section .data
.equ A, 1
.equ B, 1
.global i

.section .text
.global funcao 	

funcao:

# prologue
pushl %ebp 		
movl %esp, %ebp 	

#body of the function

	movl $A, %edx
	movl i, %eax
	
som_loop:

	movl i, %ecx
	imul %eax, %eax
	cmpl i,%ecx
	je fim
	movl $B, %ecx
	imul %edx
	imul %eax, %edx
	cdq
	idivl %ecx
	incl %eax
	jmp som_loop
	
fim:
	
# epilogue
movl %ebp, %esp	 	
popl %ebp 			
ret
