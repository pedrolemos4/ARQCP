.section .text
.global vec_sum 	#int vec_sum()

vec_sum:
	#prologue
	pushl %ebp				 	#save previous stack frame pointer
	movl %esp, %ebp			 	#the stack frame pointe for our function
	
	#body of the function
	movl num, %ecx			 	#cópia do valor de num para o registo %ecx
	cmpl $0, %ecx			 	#verificação se %ecx tem valor 0
	je impossible			 	#jump se %ecx é 0
		
	movl ptrvec,%edx		 	#cópia do endereço de ptrvec para o registo %edx
	movl $0, %eax			 	#cópia de 0 para %eax
	
vec_loop:
	addl (%edx), %eax			#adição do int apontado por %ecx a %eax		
	addl $4, %edx				#avança para o int seguinte em %edx
	loop vec_loop				#decrementa automaticamente o valor de %ecx e repete o ciclo, enquanto o valor de %ecx não for 0
	jmp end_string				#avança para o fim da função

impossible:
	movl $0, %eax				#cópia do valor 0 para %eax

end_string:
	#epilogue
	movl %ebp, %esp			 	#restore the stack pointer
	popl %ebp				 	#restore the stack frame pointer
	ret						 	#return from the function

	
.global vec_avg		#int vec_avg()

vec_avg:
	#prologue
	pushl %ebp				 	#save previous stack frame pointer
	movl %esp, %ebp			 	#the stack frame pointe for our function
	
	#body of the function
	pushl %ecx					#guarda o valor de %ecx
	call vec_sum				#chama a função vec_sum
	popl %ecx
	cdq
	movl num, %ecx				#cópia de num para %ecx
	cmpl $0, %ecx				#verifica se %ecx é igual a 0
	je zeroresult				#jump se %ecx for 0
	idivl %ecx					#divide %eax por %ecx e guarda o quociente em %eax
	jmp end						#avança para o fim da função
	 
zeroresult:
	movl $0, %eax				#cópia do valor 0 para %eax

end:
	# epilogue
	movl %ebp, %esp			 	#restore the stack pointer
	popl %ebp				 	#restore the stack frame pointer
	ret						 	#return from the function
