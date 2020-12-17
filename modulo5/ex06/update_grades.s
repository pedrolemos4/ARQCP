.section .text
.global update_grades					#void update_grades (Student *s, int *new_grades);

update_grades:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointer for our function
	
	pushl %esi							#callee save
	
	movl 8(%ebp), %edx					#primeiro parâmetro em %edx
	movl 12(%ebp), %esi					#segundo parâmetro em %esi
	
	addl $4, %edx						#move o pointer para o endereço onde começa o array grades
	
	movl $10,%ecx						#cópia do valor 10 para %ecx
	
	fill_grades:
		movl (%esi), %eax				#move o apontado por %esi para %eax
		movl %eax, (%edx)				#move o valor de %eax para o apontado por %edx
		
		addl $4, %edx					#avança para o elemento seguinte do array apontado por %edx
		addl $4, %esi					#avança para o elemento seguinte do array apontado por %esi
		loop fill_grades				#repete enquanto %ecx for maior que 0
	
	
	popl %esi							#restabelece %esi
	
	#epilogue
	movl %ebp, %esp			 			#restore the stack pointer	
	popl %ebp				 			#restore the stack frame pointer
	ret						 			#return from the function
