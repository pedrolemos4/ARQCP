.section .text
.global locate_greater
   
locate_greater:

#prologue
	pushl %ebp				 
	movl %esp, %ebp
	pushl %esi
	pushl %ebx
	pushl %edi
	
#body of the function	
	
	movl 8(%ebp), %ebx				#*s
	movl 12(%ebp), %esi				#int minimun
	movl 16(%ebp), %edx				#*greater_grades
	addl $4, %ebx					#move para as notas
	movl $0, %eax					#contador de notas maiores
	movl $0, %ecx					#contador do apontador
	movl $0, %edi					#contador de posicoes do greater_grades
	
while:
	cmpl $10, %ecx					#ve se chegou ao fim do apontador
	je fim
	pushl %eax						#guarda o valor de eax na stack(contador)
	movl (%ebx,%ecx,4), %eax		#move o valor da nota para eax
	cmpl  %esi, %eax				#compara eax com o valor minimo
	jg greater						#se for maior salta
	popl %eax
	incl %ecx						#incrementar ecx
	jmp while
	
greater:
	movl %eax, (%edx,%edi,4)		#passa o valor da nota para o array
	popl %eax						#repoem o eax para o contador
	incl %edi						#aumenta uma posicao no apontador
	incl %eax						#aumenta mais uma nota
	incl %ecx
	jmp while
	
	
fim:

#prologue	

	popl %edi
	popl %ebx
	popl %esi
	movl %ebp, %esp			 
	popl %ebp				 
	ret	
