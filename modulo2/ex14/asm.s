.section .data

base:
	.int 3
.global base
height:
	.int 3
.global height

.section .text
.global getArea 	


getArea:

# prologue
pushl %ebp 		
movl %esp, %ebp 	

#body of the function

	movl base, %eax
	movl height, %ecx
	imul %ecx, %eax
	cdq
	movl $2, %ecx
	idivl %ecx
	
# epilogue
movl %ebp, %esp	 	
popl %ebp 			
ret
