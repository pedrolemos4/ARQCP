.section .data
op1:
	.short 0
.global op1
op2:
	.short 0
.global op2

.section .text
.global crossSumBytes

crossSumBytes:
    # prologue
    pushl %ebp # save previous stack frame pointer
    movl %esp, %ebp # the stack frame pointer for sum function
    
    #body
    
    movl op1, %eax
    
    jo with_overflow2
    movl $0, %eax
    jmp next_1
    
with_overflow1:
	movl $1, %eax
    
next_1:
	movl op2, %ecx
	
	jo with_overflow2
    movl $0, %ecx
    jmp next_2
    
with_overflow2:
	movl $1, %ecx
	
next_2:
		addl %ecx, %eax
    
    # epilogue
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret
