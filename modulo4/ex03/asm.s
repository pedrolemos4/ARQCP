.section .text
.global greatest					#int greatest(int a, int b, int c)
greatest:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointe for our function
	
	movl 16(%ebp),%edx
	movl 12(%ebp),%ecx
	movl 8(%ebp),%eax
	
	cmp %eax,%ecx
	jg ecx_is_greater
	cmp %eax,%edx
	jg edx_is_greater
	jmp end
	
	ecx_is_greater:
		cmp %ecx,%edx
		jg edx_is_greater
		movl %ecx,%eax
		jmp end
	
	edx_is_greater:
		movl %edx,%eax
		
	end:
	#epilogue
	movl %ebp, %esp			 		#restore the stack pointer
	popl %ebp				 		#restore the stack frame pointer
	ret						 		#return from the function
