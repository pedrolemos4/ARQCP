.section .text
.global sum_n
   
sum_n:

#prologue
	pushl %ebp				 
	movl %esp, %ebp			 

#body of the function

	movl 8(%ebp),%ecx
	movl $0,%eax
	movl $0,%edx
	
while:
	cmpl $0, %ecx
	jl fim
	addl %edx,%eax
	cmpl %ecx,%edx
	jz fim
	incl %edx
	jmp while

fim:
	
#prologue	
	movl %ebp, %esp			 
	popl %ebp				 
	ret						 	
