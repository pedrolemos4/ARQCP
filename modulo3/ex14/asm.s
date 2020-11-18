.section .text
.global exists
.global vec_diff

exists:

# prologue

pushl %ebp 		
movl %esp, %ebp 
pushl %esi

#body of the function
	
	movl ptrvec, %esi
	movl $0, %edx
	movl $0, %eax
	movl $0, %ecx
	
while1:
	movw (%esi, %edx, 2), %cx
	cmpl num, %edx
	je fim
	cmpw x, %cx
	je repetido
	incl %edx
	jmp while1
	
repetido:
	incl %eax
	incl %edx
	jmp while1
	
fim:
	cmpl $1, %eax
	jg muda
	movl $0, %eax
	jmp end
	
muda:
	movl $1, %eax
	
end:
	
# epilogue

popl %esi
movl %ebp, %esp	 	
popl %ebp 			
ret

#######################################

vec_diff:

# prologue

pushl %ebp 		
movl %esp, %ebp 
pushl %esi

#body of the function
	
	movl ptrvec, %esi
	movl $0, %ecx
	movl $0, %eax
	movl $0, %edx

while2:
	movw (%esi, %edx, 2), %cx
	cmpl num, %edx
	je fim2
	movw %cx, x
	pushl %eax
	pushl %edx
	call exists
	popl %edx
	cmpl $1, %eax
	popl %eax
	je repetido2
	incl %eax
	incl %edx
	jmp while2
	
repetido2:	
	incl %edx
	jmp while2
	
fim2:
	
# epilogue

popl %esi
movl %ebp, %esp	 	
popl %ebp 			
ret
