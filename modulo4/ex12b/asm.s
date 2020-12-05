.section .text
.global activate_bit
   
activate_bit:

#prologue
	pushl %ebp				 
	movl %esp, %ebp
	pushl %ebx
	pushl %esi

#body of the function	
	
	movl 8(%ebp), %edx
	movl $0, %ebx
	movb 12(%ebp), %cl
	movl (%edx),%esi
	movl (%edx), %eax
	
	sal %cl, %ebx
	orl %ebx,%esi
	cmpl %esi, %eax 
	je zero
	movl $1, %eax
	jmp fim
	
zero:
	movl $0, %eax
	
fim:
	
#prologue	
	
	popl %esi
	popl %ebx
	movl %ebp, %esp			 
	popl %ebp				 
	ret	
