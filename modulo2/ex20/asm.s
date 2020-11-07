.section .data

.global num

.section .text
.global check_num 	

check_num:

# prologue
pushl %ebp 		
movl %esp, %ebp 	

#body of the function

	movl num, %eax
	movl $0, %ecx
	cmpl %ecx, %eax
	jg positive
	je zero
	jl negative
	
zero:
	movb $3, %al
	jmp fim

positive:
	movl $2, %ecx
	cdq
	idivl %ecx
	cmpl $0, %edx
	je positive_even
	movb $4, %al
	jmp fim
	
negative:
	movl $2, %ecx
	cdq
	idivl %ecx
	cmpl $0, %edx
	je negative_even
	movb $2, %al
	jmp fim

positive_even:
	movb $3, %al
	jmp fim
	
negative_even:
	movb $1, %al
	
fim:
	
# epilogue
movl %ebp, %esp	 	
popl %ebp 			
ret
