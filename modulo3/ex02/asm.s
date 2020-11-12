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
continua:
		movb %cl, (%eax)
		incl %edx
		incl %eax
		jmp while
		
trocar:
		movb $'b', %cl
		jmp continua
				
fim:
	
# epilogue
movl %ebp, %esp	 	
popl %ebp 			
ret
