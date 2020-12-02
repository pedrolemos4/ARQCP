.section .text
.global calculate				#int calculate(int a, int b)

calculate:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointe for our function
	
	subl $8, %esp						#guarda espaço para 2 variávies locais
	
	movl 8(%ebp),%edx					#primeira variável em %edx
	movl 12(%ebp),%ecx					#segunda variável em %ecx
	pushl %ecx							#guarda o conteúdo de %ecx
	addl %edx,%ecx						#adiciona %edx a %ecx
	movl %ecx,-4(%ebp)					#move o conteúdo de %ecx para a primeira variável local
	popl %ecx							#restaura o contéudo de %ecx
	
	
	pushl -4(%ebp)						#guarda o conteúdo da primeira variável local
	pushl 12(%ebp)						#guarda o conteúdo do segundo parâmetro
	pushl 8(%ebp)						#guarda o conteúdo do primeiro parâmetro
	push $'+'
	call print_result					#invoca a função
	addl $16, %esp						#restabele a stack
	
	movl 8(%ebp),%edx					#primeira variável em %edx
	movl 12(%ebp),%ecx					#segunda variável em %ecx
	pushl %ecx							#guarda o conteúdo de %ecx
	imull %edx,%ecx						#multiplica %edx por %ecx, resultado fica em %ecx
	movl %ecx,-8(%ebp)					#move o conteúdo de %ecx para a segunda variável local
	popl %ecx							#restabelece o valor de %ecx
	
	pushl -8(%ebp)						#guarda o conteúdo da segunda variável
	pushl 12(%ebp)						#guarda o conteúdo do segundo parâmetro
	pushl 8(%ebp)						#guarda o conteúdo do primeiro paraêmtro	
	push $'*'
	call print_result					#invoca a função
	addl $16, %esp						#restabelece a função
	
	movl -4(%ebp),%eax					#move o conteúdo da primeira variável local para %eax
	subl -8(%ebp),%eax					#subtrai a %eax o conteúdo da segunda variável
	
	#epilogue
	movl %ebp, %esp			 		#restore the stack pointer
	popl %ebp				 		#restore the stack frame pointer
	ret						 		#return from the function
