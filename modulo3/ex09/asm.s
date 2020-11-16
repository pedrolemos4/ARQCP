.section .text
.global vec_search			#short* vec_search

vec_search:
	#prologue
	pushl %ebp				 	#save previous stack frame pointer
	movl %esp, %ebp			 	#the stack frame pointe for our function
	
	#body of the function
	movl num, %ecx			 	#cópia do valor de num para o registo %cx
	cmpl $0, %ecx			 	#verificação se %cx tem valor 0
	je impossible			 	#jump se %cx é 0
	
	movl ptrvec,%edx	 		#cópia do endereço de ptrvec para o registo %esi
	movw x, %ax				 	#cópia do valor de x para %ax
	
	vec_loop:
		cmpw %ax,(%edx)			#verificação se o short int apontado pelo endereço em %edx é igual ao valor de %ax
		je found_x				#jump se são iguais
		addl $2,%edx			#avança para o short int seguinte de prtvec (apontado pelo endereço em %edx)
		loop vec_loop			#avança para a iteração seguinte do loop, se %ecx for maior que 0
		movl $0,%eax			#cópia de 0 para %eax
		jmp end					#salta para o fim da função
	
	found_x:
		movl %edx, %eax			#cópia do endereço em que %edx se encontra para %eax
		jmp end					#salta para o fim da função
		
	impossible:
		movl $0, %eax			#cópia do valor 0 para %eax
		
	end:
		#epilogue
		movl %ebp, %esp			 #restore the stack pointer
		popl %ebp				 #restore the stack frame pointer
		ret						 #return from the function

		
		
