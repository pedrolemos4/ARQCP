.section .data

.global a
.global b

.section .text
.global isMultiple

isMultiple:
    # prologue
    pushl %ebp 
    movl %esp, %ebp 
    
    #body
    
    movl a, %eax
    movl b, %ecx  
    movl $1,%edx
    cdq
    idiv %ecx
    cmpl %ecx,%edx
	jl naoMultiplo
    je multiplo
    movb $0, %al
	jmp fim
naoMultiplo:
	movb $0,%al
	jmp fim
	
multiplo:
	movb $1, %al
    
fim:

    # epilogue
    movl %ebp, %esp 
    popl %ebp 
    ret
