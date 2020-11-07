.section .data

.global num

.section .text
.global steps 	

steps:

# prologue
pushl %ebp 		
movl %esp, %ebp 	

#body of the function

	movl num, %eax
	imul $3, %eax
	addl $6, %eax
	movl $3, %ecx
	cdq
	idivl %ecx
	addl $12, %eax
	movl num, %ecx
	subl %ecx, %eax
	subl $1, %eax
	
# epilogue
movl %ebp, %esp	 	
popl %ebp 			
ret
