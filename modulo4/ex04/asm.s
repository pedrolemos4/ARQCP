.section .text
.global sum_smaller
   
sum_smaller:

#prologue
	pushl %ebp				 
	movl %esp, %ebp			 
	pushl %esi
	pushl %ebx

#body of the function	
	
	movl 16(%ebp),%esi			    #*smaller
	movl 12(%ebp),%eax				#num2
	movl 8(%ebp),%ecx			    #num1
	cmpl %eax,%ecx
	jl menor_ecx
	jg menor_eax
	movl %eax, %ebx
	jmp next

menor_ecx:
	movl %ecx, %ebx
	jmp next
	
menor_eax:
	movl %eax, %ebx

next:
	movl $0, %edx
	movl %ebx, (%esi,%edx,4)
	addl %ecx,%eax
	
	
#prologue	
	
	popl %ebx
	popl %esi
	movl %ebp, %esp			 
	popl %ebp				 
	ret						 	
