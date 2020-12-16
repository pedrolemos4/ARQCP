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
	
	
	movl 8(%ebp),%edx					#cópia do primeiro parâmetro para %edx
	
	movl 12(%ebp),%eax					#cópia do segundo parâmetro para %eax
	
	movl %eax,(%edx)					#cópia de %eax para o apontado por %edx
			
	movb 16(%ebp), %al					#cópia do terceiro parâmetro para %al
	
	movb %al, C_OFFSET(%edx)			#cópia de %al para o apontado por %edx, tendo em conta o offset
	
	movl 20(%ebp),%eax					#cópia do quarto parâmetro para %eax
	
	movl %eax, J_OFFSET(%edx)			#cópia de %eax para o apontado por %edx, tendo em conta o offset
	
	movb 24(%ebp), %al					#cópia do quinto parâmetro para %al
	
	movb %al, D_OFFSET(%edx)			#cópia de %al para o apontado por %edx, tendo em conta o offset
	
	#epilogue
		movl %ebp, %esp			 		#restore the stack pointer
		popl %ebp				 		#restore the stack frame pointer
		ret						 		#return from the function
