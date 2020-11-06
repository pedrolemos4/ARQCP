.section .data
s1:
	.short 1
.global s1
s2:
	.short 1
.global s2

.section .text
.global crossSumBytes

crossSumBytes:
    # prologue
    pushl %ebp 
    movl %esp, %ebp
    
    #body
    
    movw s1, %ax
	movw s2, %cx
	addb %ch, %al
	addb %cl, %ah
    
    # epilogue
    movl %ebp, %esp
    popl %ebp 
    ret
