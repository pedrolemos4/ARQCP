.section .data
aux:
	.int 0
	
.section .text
.global frequencies					#void frequencies

frequencies:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointe for our function
	pushl %ebx
	
	#body of the function
	movl num, %ecx
	movl ptrgrades, %edx
	movl 0,%ebx
	
	vec_loop:
		cmpl $0,%ecx					#verificação se o valor que está em %ebx é 0
		je end							#jump se o valor de %ebx é 0	
		movl (%edx),%eax
		loop:
			addl $4, %edx
			cmpl (%edx),%eax
			je
