.section .data
.global s
.global p
.global t

.section .text
.global swapBytes    # short swapBytes()
.global concatBytes
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

concatBytes:

# prologue
pushl %ebp 		# save previous stack frame pointer
movl %esp, %ebp 	# the stack frame pointer for sum function

# body of the function
	movb p, %al
	movb t, %ah
	addb %ah, %al

# epilogue
movl %ebp, %esp	 	# restore the previous stack pointer ("clear" the stack)
popl %ebp 			# restore the previous stack frame pointer
ret
