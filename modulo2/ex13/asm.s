.section .text
.global getArea
getArea:

# prologue
pushl %ebp 		# save previous stack frame pointer
movl %esp, %ebp 	# the stack frame pointer for sum function

#body of the function

movl base, %eax
movl height, %ecx
imul %ecx
cdq

movl $2, %ecx
idiv %ecx





# epilogue
	movl %ebp, %esp
    popl %ebp
    ret
