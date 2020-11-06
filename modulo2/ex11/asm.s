.section .text
.global test_flags
test_flags:

# prologue
pushl %ebp 		# save previous stack frame pointer
movl %esp, %ebp 	# the stack frame pointer for sum function

movl op1, %edx
movl op2, %ecx
addl %edx,%ecx

jc output_com_carry
jo with_overflow
movl $0, %eax

jmp fim

output_com_carry:
	movl $1, %eax
	
with_overflow:
	movl $1, %eax

fim:
	# epilogue
	movl %ebp, %esp
    popl %ebp
    ret
