#.section .data
#.global A
#.global B
#.global C
#.global D

.section .text
.global compute
compute:

# prologue
pushl %ebp 		# save previous stack frame pointer
movl %esp, %ebp 	# the stack frame pointer for sum function

#body of the function
movl A, %eax
cdq
movl B, %ecx
imull %ecx

movl C, %ecx
addl %ecx,%eax
cmpl $0, D
je D_is_0

movl D, %ecx
idivl %ecx
jmp end

D_is_0:
	movl $0, %eax
	jmp end
	
end:	
# epilogue
movl %ebp, %esp
popl %ebp
ret
