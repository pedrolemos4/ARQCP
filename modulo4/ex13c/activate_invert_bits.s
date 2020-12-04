.section .text
.global activate_invert_bits	    	#int activate_bits(int a, int left, int right);

activate_invert_bits:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointe for our function

	pushl 16(%ebp)
	pushl 12(%ebp)
	pushl 8(%ebp)
	call activate_bits
	popl 8(%ebp)
	popl 12(%ebp)
	popl 16(%ebp)
	
	not %eax
	
	#epilogue
		movl %ebp, %esp			 		#restore the stack pointer
		popl %ebp				 		#restore the stack frame pointer
		ret						 		#return from the function
