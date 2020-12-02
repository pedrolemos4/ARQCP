.section .text
.global count_even					#int count_even(short *vec, int n);
count_even:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointe for our function
	
	pushl %ebx
	pushl %esi
	
	
	movl 8(%ebp),%esi
	movl 12(%ebp),%ecx
	cmpl $0, %ecx
    je impossible
    
	movl $0, %ebx
	
	vec_loop:
		movw (%esi),%ax
		pushl %ebx
		movw $2,%bx
		cwd
		idivw %bx
		popl %ebx
		cmpw $0, %dx
		je par
		addl $2,%esi
		loop vec_loop
		jmp result
	
	par:
		incl %ebx
		addl $2, %esi
		loop vec_loop
	
	result:
		movl %ebx, %eax
		jmp end
		
	impossible:
		movl $0,%eax
		jmp end
	
	end:
		popl %esi
		popl %ebx
	
		#epilogue
		movl %ebp, %esp			 		#restore the stack pointer
		popl %ebp				 		#restore the stack frame pointer
		ret						 		#return from the function
