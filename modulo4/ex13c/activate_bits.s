.section .text
.global activate_bits					#int activate_bits(int a, int left, int right);

activate_bits:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointe for our function
	
	subl $8, %esp
	
	pushl %ebx
	pushl %esi
	movl $0, %ebx
	movl $0, %esi
	movl 8(%ebp), %eax					#primeira variável em %eax
	#movl 12(%ebp),%ecx					#segunda variável em %edx
	cmpl $31,12(%ebp)
	je left_is_31
	jmp continue
	
	left_is_31:
		cmpl $0,16(%ebp)
		je right_is_0
		jmp continue
		
	right_is_0:
		jmp end
	
	continue:
		movl 12(%ebp),%ecx					#segunda variável em %edx
		incl %ecx
	
		mask1_loop:
			shl %ebx
			incl %ebx
			loop mask1_loop
	
		notl %ebx
	
		movl 16(%ebp),%ecx
	
		mask2_loop:
			shl %esi
			incl %esi
			loop mask2_loop
	
		orl %ebx,%esi
		orl %esi,%eax
	
		
	end:
		popl %esi
		popl %ebx
	
		#epilogue
		movl %ebp, %esp			 		#restore the stack pointer
		popl %ebp				 		#restore the stack frame pointer
		ret						 		#return from the function
