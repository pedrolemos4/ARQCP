.section .data
.global s

.section .text
.global swapBytes    # short swapBytes()
swapBytes:

# prologue
pushl %ebp 		# save previous stack frame pointer
movl %esp, %ebp 	# the stack frame pointer for sum function

# body of the function
movw s, %cx
movb %ch, %al
movb %cl, %ah

# epilogue
movl %ebp, %esp	 	# restore the previous stack pointer ("clear" the stack)
popl %ebp 			# restore the previous stack frame pointer
ret
