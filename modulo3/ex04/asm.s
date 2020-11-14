.section .data

#.global num

.section .text
.global vec_add_one

vec_add_one:

# prologue
pushl %ebp 		
movl %esp, %ebp 	

#body of the function
	
	movl $0, %ecx
	movl ptrvec, %edx
while:
	movl (%edx,%ecx,4), %eax
	cmpl num, %ecx
	je fim
	addl $1, %eax
	movl %eax, (%edx,%ecx,4)
	incl %ecx
	jmp while
	
fim:
	
# epilogue
movl %ebp, %esp	 	
popl %ebp 			
ret
