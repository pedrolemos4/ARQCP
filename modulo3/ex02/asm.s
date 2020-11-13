.section .text
.global str_copy_porto

str_copy_porto:

# prologue
pushl %ebp 		
movl %esp, %ebp 	

#body of the function

		movl ptr1, %edx
		movl ptr2, %eax
while:
		movb (%edx), %cl
		cmpb $0, %cl
		je fim
		cmpb $'v', %cl
		je trocar
		movb %cl, (%eax)
		incl %edx
		incl %eax
		jmp while
		
trocar:
		movb $'b', %cl
		movb %cl, (%eax)
		incl %edx
		incl %eax
		jmp while
		
		#jmp continua
				
fim:
	movb $0,(%eax)
# epilogue
movl %ebp, %esp	 	
popl %ebp 			
ret
