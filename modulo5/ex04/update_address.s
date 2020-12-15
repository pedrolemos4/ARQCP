.section .text
.global update_address
   
update_address:

#prologue
	pushl %ebp				 
	movl %esp, %ebp
	pushl %esi
	
#body of the function	
	
	movl 8(%ebp), %esi						#Student *s
	movl 12(%ebp), %edx						#char *new_address
	movl $0, %ecx
	
	addl $124, %esi						#valor necessario para chegar a address
	
while:
	movb (%edx), %ch					#1 char para ch
	movb %ch, (%esi)
	cmpb $0, %ch
	je fim
	incl %edx
	incl %esi
	jmp while

fim:
	
	
#prologue	

	popl %esi
	movl %ebp, %esp			 
	popl %ebp				 
	ret	
