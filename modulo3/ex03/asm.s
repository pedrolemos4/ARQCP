.section .text
.global str_copy_porto2   #void str_copy_porto2(void)
str_copy_porto2:

#prologue
	pushl %ebp				 #save previous stack frame pointer
	movl %esp, %ebp			 #the stack frame pointe for our functiom

#body of the function
	movl ptr1, %edx 		 #cópia do endereço de ptr1 para o registo edx
	movl ptr2, %eax		   	 #cópia do endereço de ptr2 para o registo eax	

str_loop:
	movb (%edx), %cl		 #cópia do char apontado por %edx para %cl
	cmpb $0, %cl		 	 #verificação se está no fim da string
	je str_loop_end      	 #jump se está no fim
	cmpb $'v',%cl			 #verificação se o char é um v
	je char_is_v			 #jump se é um v
	cmpb $'V', %cl			 #verificação se o char é um V	
	je char_is_V			 #jump se é um V
	movb %cl, (%eax) 		 #cópia do char em %cl para ptr2 (apontada pelo endereço em %eax)
	incl %edx				 #avança para o char seguinte em ptr1
	incl %eax				 #avança para o char seguinte em ptr2
	jmp str_loop 			 #próxima iteração

char_is_v:
	movb $'b',%cl 			 #cópia do char b para %cl
	movb %cl, (%eax)		 #cópia do char em %cl para ptr2 (apontada pelo endereço em %eax)	
	incl %edx			     #avança para o char seguinte em ptr1
	incl %eax			     #avança para o char seguinte em ptr2
	jmp str_loop			 #próxima iteração	
	
char_is_V:
	movb $'B',%cl		     #cópia do char B para %cl
	movb %cl, (%eax)		 #cópia do char em %cl para ptr2 (apontada pelo endereço em %eax)		
	incl %edx				 #avança para o char seguinte em ptr1
	incl %eax				 #avança para o char seguinte em ptr2		
	jmp str_loop			 #próxima iteração

str_loop_end:
	movb $0,(%eax)			 #cópia do char 0 para a última posição de ptr2
	
	#prologue	
	movl %ebp, %esp			 #restore the stack pointer
	popl %ebp				 #restore the stack frame pointer
	ret						 #return from the function
	
