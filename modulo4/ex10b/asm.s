.section .text
.global count_bits_zero
   
count_bits_zero:

#prologue
	pushl %ebp				 
	movl %esp, %ebp
	pushl %ebx
	pushl %esi

#body of the function	
	
	movl $0, %ebx
	movl $0, %esi
	movl $2, %ecx
	movl 8(%ebp), %eax		#guarda parametro
	
while:
	cmpl $32, %esi
	je fim
	pushl %eax
	cdq
	idivl %ecx
	incl %esi
	popl %eax
	ROL %eax			#roda os bits com carry, assim faço a divisao com o bit que foi para 1
	cmpl $0, %edx
	je num_zero
	jmp while

num_zero:
	incl %ebx
	jmp while
	
fim:
	movl %ebx, %eax
	
#prologue	

	popl %esi
	popl %ebx
	movl %ebp, %esp			 
	popl %ebp				 
	ret	
