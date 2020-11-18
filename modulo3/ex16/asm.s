.section .text
.global swap

swap:

# prologue

pushl %ebp 		
movl %esp, %ebp 
pushl %esi
pushl %edi

# body 

	movl ptr1, %esi
	movl ptr2, %edi
	movl $0, %eax
	movl $0, %ecx
	movl $0, %edx

while:
	movb (%esi,%edx,1), %al
	movb (%edi, %edx,1), %cl
	cmpl %edx,num
	je fim
	movb %al, (%edi,%edx,1)
	movb %cl, (%esi,%edx,1)
	incl %edx
	jmp while
	
fim:
	
# epilogue

popl %edi
popl %esi
movl %ebp, %esp	 	
popl %ebp 			
ret

