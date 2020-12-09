.section .text
.global sum_multiples_x       		 #int sum_multiples_x(char *vec, int x);

sum_multiples_x:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointe for our function
	
	#pushl %ebx
	pushl %esi
	
	movl 8(%ebp), %esi
	movl 12(%ebp), %ecx
	
	movl $0,%eax
	cmpl $0,(%esi)
	je end
	
	andl $0x0000FF00, %ecx
	cdq
	
	vecloop:
		cmpl $0,(%esi)
		je end
		idivl %ecx
		cmpl $0,%edx
		je is_multiple
		addl $4,%esi
		jmp vecloop
		
	is_multiple:
		addl (%esi),%eax
		addl $4,%esi
		jmp vecloop
	
	end:
		#movl %ebx,%eax
		popl %esi
		
		# epilogue
		movl %ebp, %esp
		popl %ebp
		ret

		
		
		
		
		
