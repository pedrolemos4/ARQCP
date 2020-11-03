.section .data
.equ CONST, 0xf
.global op1
.global op2
op3:
	.int 0
.global op3
op4:
	.int 0
.global op4
.section .text
.global sum 	# void sum(void)
.global sum_v2  # int  sum(void)
.global sum_v3  # int  sum(void)

sum:
# prologue
pushl %ebp 		# save previous stack frame pointer
movl %esp, %ebp 	# the stack frame pointer for sum function

#body of the function
movl op1, %ecx 		#place op1 in ecx
movl op2, %eax 		#place op2 in eax
addl %ecx, %eax 	#add ecx to eax. Result is in eax

# epilogue
movl %ebp, %esp	 	# restore the previous stack pointer ("clear" the stack)
popl %ebp 			# restore the previous stack frame pointer
ret

sum_v2:
# prologue
	pushl %ebp
	movl %esp, %ebp

#body of the function
	movl $CONST, %eax
	subl op1, %eax	
	movl $CONST, %ecx
	subl op2, %ecx
	subl %ecx, %eax

#epilogue
movl %ebp, %esp
popl %ebp
ret

sum_v3:
# prologue
	pushl %ebp
	movl %esp, %ebp

#body of the function

	movl op4, %eax
	addl op3, %eax
	subl op2, %eax
	addl op1 ,%eax
	

#epilogue
movl %ebp, %esp
popl %ebp
ret
