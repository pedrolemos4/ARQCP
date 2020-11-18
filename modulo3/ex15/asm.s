.section .text
.global sum_first_byte				#int sum_first_byte(void)

sum_first_byte:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointe for our function
	pushl %ebx							
	
	#body of the function
	
	movl num,%ebx						#cópia do valor de num para o registo %ebx
	
	movl $0, %eax						#copia do valor 0 para %eax
	
	movl ptrvec,%edx		 			#cópia do endereço de ptrvec para o registo %edx	
	
	vec_loop:
		cmpl $0,%ebx					#verificação se o valor que está em %ebx é 0
		je end							#jump se o valor de %ebx é 0	
		movsbl (%edx),%ecx				#cópia e extensão do sinal do byte menos significativo do int apontado por %edx para o registo %ecx
		addl %ecx,%eax					#adição do valor de %ecx ao valor de %eax, o resultado fica em %eax
		addl $4, %edx					#avança para o int seguinte
		subl $1,%ebx					#subtrai 1 ao valor de %ebx, reduzindo o número de iterações restantes
		jmp vec_loop
	
	end:
		#epilogue
		popl %ebx
		movl %ebp, %esp			 		#restore the stack pointer
		popl %ebp				 		#restore the stack frame pointer
		ret						 		#return from the function

	
