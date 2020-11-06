.section .text
	.global concatBytes
concatBytes:
	# prologue
	pushl %ebp
	movl %esp, %ebp
	
	movb byte1, %al
	movb byte2, %ah
	
	movl %ebp, %esp
	popl %ebp
	ret
