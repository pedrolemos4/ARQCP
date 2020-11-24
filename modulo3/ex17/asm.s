.section .text
.global array_sort			#void array_sort(void)

array_sort:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointe for our function
	
	
	#body of the function
	movl ptrvec,%edx
	movl num,%eax
	
	vec_loop:
		cmpl $0, %eax
		je end
		
