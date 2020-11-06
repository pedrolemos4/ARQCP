.section .text

.global compute
compute:

# prologue
pushl %ebp 		# save previous stack frame pointer
movl %esp, %ebp 	# the stack frame pointer for sum function

#body of the function
movl A, %eax
movl B, %ecx
imul %ecx
cdq

movl C, %ecx
addl %ecx,%eax

movl D, %ecx
idiv %ecx

# epilogue
	movl %ebp, %esp
    popl %ebp
    ret
