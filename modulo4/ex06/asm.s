.section .text
.global test_equal
   
test_equal:

#prologue
	pushl %ebp				 
	movl %esp, %ebp	
	pushl %esi
	pushl %ebx

#body of the function	
	
	movl 8(%ebp), %esi
	movl 12(%ebp), %ebx
	movl $1, %eax
	
while:
	movb (%esi), %cl
	movb (%ebx), %ch
	cmpb $'\0', %ch
	je fim
	cmpb $'\0', %cl
	je fim
	incl %esi
	incl %ebx
	cmpb %ch, %cl
	je while
	movl $0, %eax
	
fim:
	
#prologue	
	
	popl %ebx
	popl %esi
	movl %ebp, %esp			 
	popl %ebp				 
	ret	
