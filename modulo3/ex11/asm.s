.section .text
.global vec_greater20			#int vec_greater20(void)

vec_greater20:
	#prologue
	pushl %ebp				 	#save previous stack frame pointer
	movl %esp, %ebp			 	#the stack frame pointe for our function
	#pushl %esi
	
	movl num, %ecx			 	#cópia do valor de num para o registo %ecx
	cmpl $0, %ecx			 	#verificação se %ecx tem valor 0
	je impossible			 	#jump se %ecx é 0
	
	movl ptrvec,%edx
	
	movl $0, %eax
	
	vec_loop:
		cmpl $20,(%edx)
		jg element_is_20
		addl $4,%edx
		loop vec_loop
		jmp end
		
	element_is_20:
		addl $1,%eax
		addl $4,%edx
		jmp vec_loop
	
	impossible:
		movl $0, %eax
			
	end:
		#epilogue
		movl %ebp, %esp			 	#restore the stack pointer
		popl %ebp				 	#restore the stack frame pointer
		ret						 	#return from the function

	
