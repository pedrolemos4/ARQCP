.section .text
.global fill_s2
   
fill_s2:

#prologue
	pushl %ebp				 
	movl %esp, %ebp
	pushl %esi
	pushl %ebx
	
#body of the function	
	
	movl 8(%ebp), %ebx				# *s
	movl 12(%ebp), %edx				# vw[3]
	movl $0, %esi
	
while:
	cmpl $3, %esi
	je next
	movw (%edx, %esi,2), %ax
	movw %ax, (%ebx)
	addl $2, %ebx					#proximo short
	incl %esi
	jmp while
	
next:
	addl $2, %ebx					#adiciona 2 por causa do alinhamento
	movl 16(%ebp), %esi				# vj
	movl %esi, (%ebx)				#move o inteiro para ebx
	addl $4, %ebx					#proximo elemento da estrutura
	movl 20(%ebp), %ecx				# vc[3]
	movl $0, %edx
	
while2:
	cmpl $3, %edx
	je next2
	movb (%ecx), %ah
	movb %ah, (%ebx)
	incl %ecx
	incl %ebx
	incl %edx
	jmp while2
	
next2:
	
	
#prologue	

	popl %ebx
	popl %esi
	movl %ebp, %esp			 
	popl %ebp				 
	ret	
