.section .text
.global calc
   
calc:

#prologue
	pushl %ebp				 
	movl %esp, %ebp	
	pushl %esi
	pushl %ebx

#body of the function	
	
	subl $4, %esp			#guardar 1 espaço para uma variavel int
	
	movl 16(%ebp), %ebx		# parametro c
	movl 12(%ebp), %esi		# parametro b
	movl 8(%ebp), %ecx		# parametro a
	
	subl %ecx, (%esi)
	movl (%esi), %edx
	movl %edx, -4(%ebp)
	movl -4(%ebp), %eax
	
	imull %ebx
	subl $2, %eax
	
	
#prologue	
	
	popl %ebx
	popl %esi
	movl %ebp, %esp			 
	popl %ebp				 
	ret	
