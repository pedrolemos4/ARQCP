.section .text
.global extremas

extremas:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointer for our function
	
	
	
	
	
	
	
	
	#epilogue
	movl %ebp, %esp			 		#restore the stack pointer
	popl %ebp				 		#restore the stack frame pointer
	ret						 		#return from the function
