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
	
################################################################
	
.section .text
.global vec_count_bits_zero
   
vec_count_bits_zero:

#prologue
	pushl %ebp				 
	movl %esp, %ebp
	pushl %ebx
	pushl %esi

#body of the function	
	
	movl 8(%ebp), %eax			#ptr
	movl 12(%ebp), %ebx			#num
	movl $0, %edx
	movl $0, %esi
	
while1:
	movl (%eax,%esi,4), %ecx
	cmpl %ebx, %esi
	je fim1
	movl %ecx, 8(%ebp)
	pushl %eax
	pushl %ebx
	pushl %esi
	pushl %edx
	pushl 8(%ebp)
	call count_bits_zero
	popl 8(%ebp)
	popl %edx
	addl %eax, %edx
	popl %esi
	popl %ebx
	popl %eax
	incl %esi
	#incl (%eax)
	jmp while1
	
fim1:
	movl %edx, %eax
	
	
#prologue	
	
	popl %esi
	popl %ebx
	movl %ebp, %esp			 
	popl %ebp				 
	ret	
