.section .text
.global inc_and_square		      #int inc_and_square(int *v1, int v2);
inc_and_square:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointe for our function
	
	pushl %esi
	
	movl 8(%ebp),%esi					#endereço de v1 em esi
	movl 12(%ebp), %edx					#move para o registo edx o valor de v2 (segundo parâmetro)
	movl 12(%ebp), %eax					#move para o registo eax o valor de v2 (segundo parâmetro)
	
	movl (%esi),%ecx					#move o valor apontado por esi para ecx
	incl %ecx							#incrementa o valor de ecx
	
	movl %ecx,(%esi)					#move o valor de ecx para o apontado por esi
	imull %edx							#multiplica edx por eax, resultado fica em eax
	
	end:
	popl %esi							
	
	#epilogue
	movl %ebp, %esp			 		#restore the stack pointer
	popl %ebp				 		#restore the stack frame pointer
	ret						 		#return from the function
