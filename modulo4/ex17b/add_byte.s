.section .text
.global add_byte      		#void add_byte(char x, int *vec1, int *vec2);

add_byte:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointer for our function
	
	pushl %ebx
	pushl %esi
	
	movl $0,%edx						#cópia do valor 0 para %edx
	movb 8(%ebp),%dl					#cópia do primeiro parâmetro (char a ser adicionado) para %dl
	
	movl 12(%ebp),%esi					#cópia do endereço de vec1 para %esi
			
	movl 16(%ebp),%ebx					#cópia do terceiro parâmetro para %
	
	movl (%esi),%ecx					#cópia do primeiro número do apontado por %esi para %ecx (número de inteiros à sua "frente")
	cmpl $0,%ecx						#verifica se o primeiro elemento é 0
	je end								#salta para o fim se for verdadeiro
	
	movl (%esi),%eax
	movl %eax,(%ebx)
	addl $4, %esi
	addl $4, %ebx
	
	vec_loop:
		movl (%esi), %eax				#move o apontado por %esi para %eax
		addb %dl, %al					#adição do char x
		movl %eax, (%ebx)				#cópia de %eax para o apontado por %ebx
		addl $4,%esi					#avança para o int seguinte no apontado por %esi
		addl $4,%ebx					#avança para o int seguinte no apontado por %ebx
		loop vec_loop					#repete este processo enquanto %ecx for maior que 0
	
	end:
		popl %esi
		popl %ebx
		
		#epilogue
		movl %ebp, %esp			 		#restore the stack pointer
		popl %ebp				 		#restore the stack frame pointer
		ret						 		#return from the function
