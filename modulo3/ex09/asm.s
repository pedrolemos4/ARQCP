.section .text
.global vec_search			#short* vec_search

vec_search:
	#prologue
	pushl %ebp				 	#save previous stack frame pointer
	movl %esp, %ebp			 	#the stack frame pointe for our function
	#pushl %esi
	
	#body of the function
	movl num, %ecx			 	#cópia do valor de num para o registo %cx
	cmpl $0, %ecx			 	#verificação se %cx tem valor 0
	je impossible			 	#jump se %cx é 0
	
	movl ptrvec,%edx	 		#cópia do endereço de ptrvec para o registo %esi
	#movswl x,%edx
	movw x, %ax				 	#cópia de 0 para %eax
	
	vec_loop:
		cmpw %ax,(%edx)
		je found_x
		addl $2,%edx
		loop vec_loop
		movl $0,%eax
		jmp end
	
	found_x:
		movl %edx, %eax
		jmp end
		
	impossible:
		movl $0, %eax
		
	end:
		#epilogue
		#popl %esi
		movl %ebp, %esp			 #restore the stack pointer
		popl %ebp				 #restore the stack frame pointer
		ret						 #return from the function

		
		
