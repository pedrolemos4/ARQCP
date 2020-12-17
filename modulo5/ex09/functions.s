.section .text
.global fun1							#short fun1(structB *s)
.global fun2							#short fun2(structB *s)
.global fun3							#short fun3(structB *s)
.global fun4 							#short fun4(structB *s)

fun1:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointer for our function
	
	movl 8(%ebp),%edx					#cópia do primeiro parâmetro para %edx
	movw (%edx),%ax						#cópia do apontado por %edx, ou seja, cópia do valor x da estrutura do tipo structA para %ax
	jmp end
	
fun2:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointer for our function
	
	movl 8(%ebp), %edx					#cópia do primeiro parâmetro para %edx
	movw 28(%edx), %ax					#cópia do apontador por %edx, tendo em conta o offset, para %ax
	jmp end
	
fun3:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointer for our function
	
	movl 8(%ebp),%eax					#cópia do primeiro parâmetro para %eax
	addl $28,%eax						#avanço do apontador para o endereço onde se encontra z
	jmp end

fun4:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	movl %esp, %ebp			 			#the stack frame pointer for our function
	
	movl 8(%ebp),%edx					#cópia do primeiro parâmetro para %eax
	addl $8,%edx						#avança %edx para o endereço onde se encontra b
	movl (%edx), %ecx					#como b é um pointer, %edx está a apontar para um endereço. Copia-se esse endereço para %ecx
	movw (%ecx),%ax						#cópia do valor apontado por %ecx para %ax
	jmp end
	
	
end:
	#epilogue
		movl %ebp, %esp			 		#restore the stack pointer
		popl %ebp				 		#restore the stack frame pointer
		ret						 		#return from the function
