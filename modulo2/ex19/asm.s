.section .text
.global needed_time

needed_time:
# prologue
pushl %ebp
movl %esp, %ebp

#body of the function
movl $0, %eax
movw current,%cx
movw desired,%dx

myloop:
	cmpw %cx,%dx
	je already_equal
	jg desired_is_greater
	jl desired_is_less
	
desired_is_greater:
	addw $1,%cx
	addl $2,%eax
	jmp myloop
	
desired_is_less:
	subw $1,%cx
	addl $3,%eax
	jmp myloop
	
already_equal:
	jmp end

end:
	movl $60, %ecx;
	imull %ecx;
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
