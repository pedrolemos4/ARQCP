.section .text
.global greatest					#int greatest(int a, int b, int c)
greatest:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointe for our function
	
	movl 16(%ebp),%edx					#move para o registo edx o valor do terceiro parâmetro
	movl 12(%ebp),%ecx					#move para o registo ecx o valor do segundo parâmetro
	movl 8(%ebp),%eax				    #move para o registo eax o valor do primeiro parâmetro
	
	cmp %eax,%ecx						#verifica se o valor de ecx é maior que o valor de eax
	jg ecx_is_greater					#jump se ecx é maior
	cmp %eax,%edx						#verifica se o valor de edx é maior que o valor de eax
	jg edx_is_greater					#jump se edx é maior
	jmp end								#avança para o fim
	
	ecx_is_greater:
		cmp %ecx,%edx					#verifica se o valor de edx é maior que ecx
		jg edx_is_greater				#jump se edx for maior
		movl %ecx,%eax					#move para o registo eax (registo de retorno) o valor de ecx (maior valor)
		jmp end							#avança para o fim
	
	edx_is_greater:
		movl %edx,%eax					#move para o registo eax (registo de retorno) o valor de edx (maior valor)
		
	end:
	#epilogue
	movl %ebp, %esp			 		#restore the stack pointer
	popl %ebp				 		#restore the stack frame pointer
	ret						 		#return from the function
