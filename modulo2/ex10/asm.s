.section .data
.global op1
.global op2
.section .text
.global sum2ints 	# void sum2ints(void)


sum2ints:

# prologue
pushl %ebp 		# save previous stack frame pointer
movl %esp, %ebp 	# the stack frame pointer for sum function

#body of the function

	movl $0, %eax
	movl op1, %eax		# moves op1 into eax
	movl $0, %ecx
	movl op2, %ecx		# moves op2 into ecx
	addl %ecx, %eax		# adds ecx to eax

# epilogue
movl %ebp, %esp	 	# restore the previous stack pointer ("clear" the stack)
popl %ebp 			# restore the previous stack frame pointer
ret
