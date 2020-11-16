.section .text
.global test_even
.global vec_sum_even

test_even:

# prologue
pushl %ebp 		
movl %esp, %ebp 	

#body of the function
	
	movl even, %eax
	movl $2, %ecx
	cdq
	idivl %ecx
	cmpl $0, %edx
	je par
	movl $0, %eax
	jmp fim
	
par:
	movl $1, %eax

fim:
	
# epilogue

movl %ebp, %esp	 	
popl %ebp 			
ret

#########################################

vec_sum_even:

# prologue
pushl %ebp 		
movl %esp, %ebp 	
pushl %esi
pushl %edi

#body of the function
	
	movl $0, %eax
	movl $0, %edx
	movl ptrvec, %esi
	
while1:
	movl $0, %ecx
	movl (%esi,%edx, 4), %ecx
	cmpl num, %edx
	jz fim1
	pushl %eax
	pushl %edx
	movl %ecx, %eax
	movl %ecx, %edi
	movl $2, %ecx
	cdq
	idivl %ecx
	cmpl $0, %edx
	je par1
	popl %edx
	popl %eax
	incl %edx
	jmp while1
	
par1:
	movl %edi, %ecx
	popl %edx
	popl %eax
	addl %ecx, %eax
	incl %edx
	jmp while1

fim1:
	
# epilogue

popl %edi
popl %esi
movl %ebp, %esp	 	
popl %ebp 			
ret
