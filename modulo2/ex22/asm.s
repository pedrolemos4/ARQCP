.section .data

.global i
.global j

.section .text
.global f1
.global f2
.global f3
.global f4 	

f1:

# prologue
pushl %ebp 		
movl %esp, %ebp 	

#body of the function

	movl i, %eax
	movl j, %ecx
	cmpl %ecx, %eax
	je igual
	addl %ecx, %eax
	subl $1, %eax
	jmp fim
	
igual:
	subl %ecx, %eax
	addl $1, %eax
		
fim:

# epilogue
movl %ebp, %esp	 	
popl %ebp 			
ret

f2:

# prologue
pushl %ebp 		
movl %esp, %ebp 	

#body of the function

	movl i, %eax
	movl j, %ecx
	cmpl %ecx, %eax
	jg maior
	addl $1, %ecx
	jmp multi
	
maior:
	subl $1, %eax
		
multi: 
	imul %ecx, %eax

fim2:

# epilogue
movl %ebp, %esp	 	
popl %ebp 			
ret

f3:

# prologue
pushl %ebp 		
movl %esp, %ebp 	

#body of the function

	movl i, %eax
	movl j, %ecx
	cmpl %ecx, %eax
	jge igual_maior
	addl %ecx, %eax
	movl i, %edx
	addl $2,%edx
	addl %ecx, %edx
	jmp fim3
	
igual_maior:
	imul %ecx, %eax
	movl i, %edx
	addl %edx, %ecx
		
fim3:
	idiv %edx, %eax

# epilogue
movl %ebp, %esp	 	
popl %ebp 			
ret

f4:

# prologue
pushl %ebp 		
movl %esp, %ebp 	

#body of the function

	movl i, %eax
	movl j, %ecx
	movl %ecx, %esi
	addl %eax, %esi
	movl $10, %edi
	
	cmpl %esi, %edi
	jg menor
	movl %ecx, %edx
	imul %edx
	idivl %edi
	jmp fim4
	
menor:

	movl %eax, %edx
	imul %edx
	movl $4, %edi
	imul %edi

fim4:

	popl %eax
	popl %esi
	popl %edi

# epilogue
movl %ebp, %esp	 	
popl %ebp 			
ret
