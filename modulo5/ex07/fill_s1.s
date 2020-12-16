.section .data
.equ C_OFFSET, 4
.equ J_OFFSET, 8
.equ D_OFFSET, 12


.section .text
.global fill_s1    						#void fill_s1 (s1 *s, int vi, char vc, int vj, char vd);

fill_s1:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointer for our function
	
	
	movl 8(%ebp),%edx
	
	movl 12(%ebp),%eax
	
	movl %eax,(%edx)
	
	movb 16(%ebp), %al
	
	movb %al, C_OFFSET(%edx)
	
	movl 20(%ebp),%eax
	
	movl %eax, J_OFFSET(%edx)
	
	movb 24(%ebp), %al
	
	movb %al, D_OFFSET(%edx)
	
	#epilogue
		movl %ebp, %esp			 		#restore the stack pointer
		popl %ebp				 		#restore the stack frame pointer
		ret						 		#return from the function
