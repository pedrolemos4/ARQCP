.section .text
.global greater_date                    #unsigned int greater_date(unsigned int date1, unsigned int date2);

greater_date:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointe for our function
	
	
	movl 8(%ebp), %ecx					#primeira variável (date1) em %ecx
	movl 12(%ebp),%edx					#segunda variável(date2) em %ecx
	
	pushl %ecx							#salvaguarda do valor de %ecx
	pushl %edx							#salvaguarda do valor de %edx
	
	andl $0x00FFFF00,%ecx				#%ecx fica apenas com os valores relativos ao ano de date1
	andl $0x00FFFF00,%edx				#%edx fica apenas com os valores relativos ao ano de date2
	cmpl %edx,%ecx						#comparação entre %edx e %ecx (neste caso está a comparar os anos)
	jg date1_is_greater					#salta se o valor que está em %ecx for maior
	jl date2_is_greater					#salta se for menor
	
	movl 8(%ebp), %ecx					#primeira variável (date1) em %ecx
	movl 12(%ebp),%edx					#segunda variável(date2) em %ecx
	andl $0xFF000000,%ecx				#%ecx fica apenas com os valores relativos ao mês de date1
	andl $0xFF000000,%edx				#%edx fica apenas com os valores relativos ao mês de date2	
	cmpl %edx,%ecx						#comparação entre %edx e %ecx (neste caso está a comparar os meses)
	jg date1_is_greater					#salta se o valor que está em %ecx for maior
	jl date2_is_greater					#salta se for menor
	
	movl 8(%ebp), %ecx					#primeira variável (date1) em %ecx
	movl 12(%ebp),%edx					#segunda variável(date2) em %ecx
	andl $0xFF, %ecx					#%ecx fica apenas com os valores relativos ao dia de date1
	andl $0xFF, %edx					#%edx fica apenas com os valores relativos ao dia de date2
	cmpl %edx,%ecx						#comparação entre %edx e %ecx (neste caso está a comparar os dias)
	jg date1_is_greater					#salta se o valor que está em %ecx for maior
	jl date2_is_greater					#salta se for menor
	
	popl %edx							#restabelece a stack
	popl %ecx							#restabelece a stack
	movl %ecx,%eax						#se passa nesta linha é porque as datas são iguais, logo pode retornar qualquer dos parâmetros
	jmp end								#salta para o fim
	
	date1_is_greater:
		popl %edx						#restabelece a stack
		popl %ecx						#restabelece a stack
		movl %ecx, %eax					#move date1 para %eax (endereço de retorno)
		jmp end							#salta para o fim
	
	date2_is_greater:
		popl %edx						#restabelece a stack
		popl %ecx						#restabelece a stack
		movl %edx, %eax					#move date2 para %eax (endereço de retorno)
		
	
	end:
		#epilogue
		movl %ebp, %esp			 		#restore the stack pointer
		popl %ebp				 		#restore the stack frame pointer
		ret						 		#return from the function

	
