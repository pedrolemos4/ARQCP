.section .text
.global vec_zero

vec_zero:

# prologue

pushl %ebp 		
movl %esp, %ebp 	
pushl %esi
pushl %edi

#body of the function
	
	movl ptr1, %esi
	movl ptr2, %edi
	movl $0, %edx
	movl ptr3, %eax

string1:
	movb $0, %ch
	movb (%esi,%edx,1), %ch
	cmpb $0, %ch
	je troca
	movb %ch, (%eax, %edx,1)
	incl %edx
	jmp string1
	
troca:
	movl $0, %esi
	
string2:
	movb $0, %ch
	movb (%edi,%esi,1), %ch
	cmpb $0, %ch
	je fim
	movb %ch, (%eax, %edx,1)
	incl %edx
	incl %esi
	jmp string2
	
fim:
	movb $0, (%eax,%edx,1)
	
# epilogue

popl %edi
popl %esi
movl %ebp, %esp	 	
popl %ebp 			
ret
