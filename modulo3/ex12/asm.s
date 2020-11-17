.section .text
.global vec_zero

vec_zero:

# prologue

pushl %ebp 		
movl %esp, %ebp 
pushl %esi

#body of the function
	
	movl ptrvec, %esi
	movl $0, %edx
	movl $0, %eax
	
while:
	movw (%esi, %edx, 2), %cx
	cmpl num, %edx
	je fim
	cmpw $100, %cx
	jge equal_greater
	movw %cx, (%esi, %edx, 2)
	incl %edx
	jmp while
	
equal_greater:
	movw $0, %cx
	movw %cx, (%esi, %edx, 2)
	incw %ax
	incl %edx
	jmp while

fim:
	
# epilogue

popl %esi
movl %ebp, %esp	 	
popl %ebp 			
ret
