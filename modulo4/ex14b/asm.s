.section .text
.global join_bits
   
join_bits:

#prologue
	pushl %ebp				 
	movl %esp, %ebp
	subl $4, %esp					#variavel local
	pushl %ebx
	pushl %esi

#body of the function	
	
	movl 8(%ebp), %eax				#a
	movl 12(%ebp), %ebx				#b
	movl 16(%ebp), %ecx				#pos
	movl $0, %edx					
	movl $1, %esi					#mascara
	
	
while:								#cria a mascara para a
	cmpl %edx,%ecx
	je next
	shl %esi
	incl %esi
	incl %edx
	jmp while
	
next:
	andl %esi, %eax			#numeros antes de pos sao os de a
	notl %esi				#inverte a mascara
	andl %esi, %ebx
	orl %ebx, %eax
	
#prologue	
	
	popl %esi
	popl %ebx
	movl %ebp, %esp			 
	popl %ebp				 
	ret	
