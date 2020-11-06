.section .data

.global A
.global B

.section .text
.global isMultiple

isMultiple:
    # prologue
    pushl %ebp 
    movl %esp, %ebp 
    
    #body
    
    movl A, %eax
    movl B, %ecx  
    movl $1,%edx
    cmpl %edx, %ecx
    jl next_1
    cdq				 #extends the signal to %edx
    idivl %ecx		 #devides %eax/%ecx and the remainder is stored in %edx
    movl $0, %ecx
    cmpl %edx, %ecx  #compares the reminder of a/b with 0
    je next_2		 # if the reminder is equal goes to next_2
    movb $0, %al	 # else, it means its not a multiple and moves 0 to al
	jmp fim
	
next_1:
	movb $0, %al
	jmp fim
next_2:
	movb $1, %al
    
fim:

    # epilogue
    movl %ebp, %esp 
    popl %ebp 
    ret
