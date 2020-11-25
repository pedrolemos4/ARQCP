.section .text
.global cube 			#int cube(int x)
cube:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointe for our function
	
	movl 8(%ebp),%ecx					#move para o registo %ecx o valor do parâmetro
	movl 8(%ebp),%eax					#move para o registo %eax o valor do parâmetro
	imull %ecx							#multiplica %ecx por %eax, resultado fica em %eax
	imull %ecx							#multiplica %ecx por %eax, resultado fica em %eax
	
	end:
	#epilogue
	movl %ebp, %esp			 		#restore the stack pointer
	popl %ebp				 		#restore the stack frame pointer
	ret						 		#return from the function

	
	
