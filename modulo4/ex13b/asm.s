.section .text
.global activate_bits					#int activate_bits(int a, int left, int right);

activate_bits:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointe for our function
	
	
	pushl %ebx							#salvaguarda do registo ebx
	pushl %esi							#salvaguarda do registo esi
	movl $0, %ebx						#cópia do valor 0 para %ebx	
	movl $0, %esi						#cópia do valor 0 para %ebx
	movl 8(%ebp), %eax					#primeira variável em %eax
	cmpl $31,12(%ebp)					#verifica se a segunda variável (left) é o último bit do número
	je left_is_31						#jump se for igual
	jmp continue	
	
	left_is_31:
		cmpl $0,16(%ebp)				#verifica se a terceira variável (right) é o último bit do número
		je right_is_0					#jump se for igual
		jmp continue
		
	right_is_0:
		jmp end						
	
	continue:
		movl 12(%ebp),%ecx				#segunda variável em %ecx
		incl %ecx						#incrementa o valor que está em %ecx
	
		mask1_loop:
			shl %ebx					#desloca um bit para a esquerda o número que está em %ebx
			incl %ebx					#incrementa %ebx
			loop mask1_loop				#decrementa o valor de %ecx, se for maior que 0, repete o ciclo
	
		notl %ebx						#inverte todos os bits de %ebx
	
		movl 16(%ebp),%ecx				#terceira variável para %ecx
	
		mask2_loop:
			shl %esi					#desloca um bit para a esquerda o número que está em %esi
			incl %esi					#incrementa %ebx
			loop mask2_loop				#decrementa o valor de %ecx, se for maior que 0, repete o ciclo
	
		orl %ebx,%esi					#operação lógica or
		orl %esi,%eax					#operação lógica or
	
		
	end:
		popl %esi
		popl %ebx
	
		#epilogue
		movl %ebp, %esp			 		#restore the stack pointer
		popl %ebp				 		#restore the stack frame pointer
		ret						 		#return from the function

	 
	
