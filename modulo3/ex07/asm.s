.section .text
.global encrypt

encrypt:

# prologue
pushl %ebp 		
movl %esp, %ebp 	
pushl %esi					#stores value of %esi in the stack
#body of the function
	
	movl $0, %eax
	movl $0, %edx
	movl ptr1, %esi
	
while:
	movb $0, %ch
	movb (%esi,%edx,1), %ch
	cmpb $0, %ch
	jz fim
	cmpb $' ', %ch
	je espacoOuA
	cmpb $'a', %ch
	je espacoOuA
	addb $2, %ch
	movb %ch, (%esi,%edx,1)
	incl %eax
	incl %edx
	jmp while
	
espacoOuA:
	incl %edx
	jmp while

fim:
	
# epilogue
popl %esi 					#restore %edi
movl %ebp, %esp	 	
popl %ebp 			
ret


.global	decrypt

decrypt:
	# prologue
	pushl %ebp 		
	movl %esp, %ebp 	
	pushl %esi
	
	#body of the function
	movl $0, %eax
	movl $0, %edx
	movl ptr1, %esi
	
	myloop:
		movb $0, %ch
		movb (%esi,%edx,1), %ch
		cmpb $0, %ch
		jz end
		cmpb $' ', %ch
		je a_ou_espaco
		cmpb $'a', %ch
		je a_ou_espaco
		subb $2, %ch
		movb %ch, (%esi,%edx,1)
		incl %eax
		incl %edx
		jmp myloop
	
	a_ou_espaco:
		incl %edx
		jmp myloop

	end:
	
	# epilogue
	popl %esi 					#restore %edi
	movl %ebp, %esp	 	
	popl %ebp 			
	ret

	
