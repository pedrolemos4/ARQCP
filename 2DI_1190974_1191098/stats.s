.section .text
.global stats							#int stats(int *temps, unsigned int dias, int *max_min);

stats:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointer for our function
	
	subl $2,%esp                        #reserva de espaço para variáveis locais
	
	pushl %ebx
	pushl %esi
	
	movl 8(%ebp),%esi					#primeiro parâmetro em %esi
	movl 12(%ebp),%ecx					#segundo parâmetro em %ecx
	movl 16(%ebp),%edx					#terceiro parâmetro em %edx
	
	movb $0,-1(%ebp)					#cópia do valor 0 para -1(%ebp)
	movb $0, -2(%ebp)					#cópia do valor 0 para -2(%ebp)
	
	temploop:
		#pushl %eax
		pushl %ecx						#salvaguarda do registo ecx
		pushl %edx						#salvaguarda do registo edx
		
		pushl (%esi)					#passagem do parâmetro da função extremas
		call extremas
		addl $4,%esp					#limpa os parâmetros da stack
		
		popl %ecx						#restabelece-se o valor do registo ecx
		popl %edx						#restabelece-se o valor do registo edx
		
		cmpb -1(%ebp),%ah     			#comparação do valor de %ah com o da primeira variável local
		jg novo_maximo					#salta se for maior
	
	next:
		cmpb -2(%ebp),%al				#comparação do valor de %al com o da segunda variável local
		jl novo_minimo					#salta se for menor
		
	fim_do_loop:
	
		pushl %ecx						#salvaguarda de %ecx
		movsbl -1(%ebp),%ecx			#passagem do valor de temperatura máxima para %ecx
		movsbl -2(%ebp),%ebx			#passagem do valor de temperatura mínima para %ecx
		subl %ebx,%ecx					#cálculo da amplitude térmica
		addl %ecx,%eax					#adição do valor da amplitude térmica a %eax
		popl %ecx						#restabelece-se o valor de %ecx
		
		addl $4,%esi					#avança para o int seguinte em %esi
		loop temploop					#repete o loop enquanto o valor de %ecx for maior que 0
		jmp fim							#salta para o fim
		
	novo_maximo:
		movb %ah,-1(%ebp)				#cópia do valor de %ah para -1(%ebp), que armazena a maior temperatura
		jmp next						#salta para next
		
	novo_minimo:
		movb %al,-2(%ebp)				#cópia do valor de %al para -2(%ebp), que armazena a menor temperatura
		addl $4,%esi					
		jmp fim_do_loop
	
	fim:
		movl 12(%ebp),%ecx					#segundo parâmetro em %ecx
		divl %ecx							#cálculo da média
		
		popl %esi							#restabelece-se %esi
		popl %ebx							#restabelece-se %ebx
		
		#epilogue
		movl %ebp, %esp			 			#restore the stack pointer
		popl %ebp				 			#restore the stack frame pointer
		ret						 			#return from the function
