.section .text
.global keep_positives					#void keep_positives

keep_positives:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointe for our function
	pushl %ebx
	
	#body of the function
	
	movl num, %ebx						#cópia do valor de num para o registo %ebx
		
	movl ptrvec,%edx		 			#cópia do endereço de ptrvec para o registo %edx
	movl $0, %ecx						#cópia de 0 para o registo %ecx, %ecx vai ser um iterador dos indexs do array
	
	vec_loop:
		cmpl $0,%ebx					#verificação se o valor de %ebx é 0
		je end							#jump se o valor de %ebx é 0	
		cmpl $0,(%edx)					#verificação se o int apontado por %edx é 0
		jl int_is_negative				#jump se for menor que 0
		addl $4, %edx					#avança para o int seguinte em %edx
		subl $1,%ebx					#subtrai 1 ao valor de %ebx, reduzindo o número de iterações restantes
		addl $1,%ecx					#adiciona 1 a %ecx, ou seja, passa para o index seguinte
		jmp vec_loop					#jump para vec_loop
		
	int_is_negative:
		movl %ecx,(%edx)				#cópia do valor de %ecx (o index da posição cujo valor era negativo) para o int apontado por %edx		
		addl $4, %edx					#avança para o int seguinte em %edx
		subl $1,%ebx					#subtrai 1 ao valor de %ebx, reduzindo o número de iterações restantes
		addl $1,%ecx					#adiciona 1 a %ecx, ou seja, passa para o index seguinte
		jmp vec_loop					#jump para vec_loop
	
	end:
		#epilogue
		popl %ebx
		movl %ebp, %esp			 		#restore the stack pointer
		popl %ebp				 		#restore the stack frame pointer
		ret						 		#return from the function

	
	
		
