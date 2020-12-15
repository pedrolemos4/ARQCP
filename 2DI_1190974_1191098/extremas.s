.section .text
.global extremas

extremas:
	#prologue
	pushl %ebp				 			#save previous stack frame pointer
	subl $16,%esp
	movl %esp, %ebp			 			#the stack frame pointer for our function
	pushl %esi
	push %ebx
	
	movl 8(%ebp), %ecx					#guarda o parametro temp
	movl $0b11111111000000000000000000000000, %eax 		#mascara para obter 1 byte + significativo
	movl $0b00000000111111110000000000000000, %ebx		#mascara para obter 2 byte + significativo
	movl $0b00000000000000001111111100000000, %esi		#mascara para obter 3 byte + significativo
	movl $0b00000000000000000000000011111111, %edx		#mascara para obter 4 byte + significativo
	
	andl %ecx, %eax					#1 byte + significativo
	andl %ecx, %ebx					#2 byte + significativo
	andl %ecx, %esi					#3 byte + significativo
	andl %ecx, %edx					#4 byte + significativo
	
	movl %eax, -4(%ebp)				#1 byte para uma variavel local
	movl %ebx, -8(%ebp)				#2 byte para uma variavel local
	movl %esi, -12(%ebp)			#3 byte para uma variavel local
	movl %edx, -16(%ebp)			#4 byte para uma variavel local
	
	movl $0, %eax					#contador do 1 byte para ver se é a maior
	movl $0, %ebx					#contador do 2 byte para ver se é a maior
	movl $0, %esi					#contador do 3 byte para ver se é a maior
	movl $0, %edx					#contador do 4 byte para ver se é a maior
	movl $0, %ecx
	pushl %eax
	pushl %ebx
	movl -4(%ebp), %eax			
	movl -8(%ebp), %ebx	
	
	cmpl %eax, %ebx			#para cada comparacao vê se é maior, se for maior,
	popl %ebx
	popl %eax
	jl next1						#incrementa 1 no eax, se nao for, salta para a proxima omparacao deixando o eax a 0
	incl %eax						#incrementa 1 no eax se for maior e salta para o nextE1 onde
	jmp nextE1						#nao incrementa o ebx e faz a proxima comparacao
	
next1:	
	incl %ebx						#incrementa 1 no contador da 2 byte porque
									#sabemos automaticamente que é maior que o 1 byte	

nextE1:	
	pushl %eax
	pushl %esi
	movl -4(%ebp), %eax			
	movl -12(%ebp), %esi
	cmpl %eax, %esi	
	jl next2						#se for menor salta para a proxima comparacao
	popl %esi
	popl %eax
	incl %eax						#se nao for incrementa o eax
	jmp nextE2						#e salta para a proxima comparacao
	
next2:	
	incl %esi						#incrementa 1 no contador da 3 byte pela razao explicada
nextE2:								#em cima

	pushl %eax
	pushl %edx
	movl -4(%ebp), %eax			
	movl -16(%ebp), %edx
	cmpl %eax, %edx
	popl %edx
	popl %eax		
	jl next3
	incl %eax
	jmp nextE3
	
next3:	
	incl %edx 
nextE3:
	pushl %ebx
	pushl %esi
	movl -8(%ebp), %ebx			
	movl -12(%ebp), %esi
	cmpl %ebx, %esi
	popl %esi
	popl %ebx
	jl next4
	incl %ebx
	jmp nextE4
	
next4:	
	incl %esi
nextE4:
	pushl %ebx
	pushl %edx
	movl -8(%ebp), %ebx			
	movl -16(%ebp), %edx
	cmpl %ebx, %edx
	jl next5
	incl %ebx
	jmp nextE5
	
next5:
	incl %edx
nextE5:
	pushl %esi
	pushl %edx
	movl -12(%ebp), %esi		
	movl -16(%ebp), %edx
	cmpl %esi, %edx
	popl %edx
	popl %edx
	jl next6
	incl %esi
	jmp nextE6
	
next6:
	incl %edx
nextE6:
	
	cmpl %eax, $3			#compara o contador com 3 porque se for o maior, o contador
	pushl %eax
	je maiorEAX				# tem que ser igual a 3, fazendo o mesmo para os outros
	
maiorEAX:
	movl -4(%ebp), %eax
	movb %eax, %ch
	popl %eax				#move o valor do byte para os 8 bits mais significativos
							#e tem de ser para ah pois a função retorna um short int
							#que so tem 16 bits
	
	cmpl %eax, $0			#compara o contador com 0, para verificiar se é o minimo
	pushl %eax
	je menorEAX				#pois se for, o contador tem que ser 0, fazendo o mesmo
							#para os outros
							
	
menorEAX:
	movl -4(%ebp), %eax
	movb %eax, %cl		#move o valor do byte para os 8 bits menos significativos
	popl %eax						#e tem de ser para al pois a função retorna um short int
							#que so tem 16 bits
	
	cmpl %ebx, $3
	pushl %ebx
	je maiorEBX
	
maiorEBX:
	movl -8(%ebp), %ebx				
	movb %ebx, %ch
	popl %ebx
	
	cmpl %ebx, $0
	pushl %ebx
	je menorEBX
	
menorEBX:
	movl -8(%ebp), %ebx
	movb %ebx, %cl	
	popl %ebx
	
	cmpl %esi, $3
	pushl %esi
	je maiorESI
	
maiorESI:
	movl -12(%ebp), %esi
	movb %esi, %ch
	popl %esi
	
	cmpl %esi, $0
	pushl %esi
	je menorESI
	
menorESI:
	movl -12(%ebp), %esi
	movb %esi, %cl
	popl %esi
	
	cmpl %edx, $3
	pushl %edx
	je maiorEDX
	
maiorEDX:
	movl -16(%ebp), %edx
	movl %edx, %ch
	popl %edx
	
	cmpl $0, %edx
	pushl %edx
	je menorEDX
	
menorEDX:
	movl -16(%ebp), %edx
	movb %edx, %cl
	popl %edx		
			
	
	movb %ch, %ah
	movb %cl, %al
	
	#epilogue
	popl %ebx
	popl %esi
	movl %ebp, %esp			 		#restore the stack pointer
	popl %ebp				 		#restore the stack frame pointer
	ret						 		#return from the function
