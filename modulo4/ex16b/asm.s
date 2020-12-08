.section .text
.global changes
   
changes:

#prologue
	pushl %ebp				 
	movl %esp, %ebp

	pushl %ebx
	pushl %esi

#body of the function	
	
	movl 8(%ebp), %ecx									#*ptr
	movl %ecx, %eax
	movl $0b11111111000000000000000000000000, %edx		#mascara para o 1 byte
	movl $0b00000000111100000000000000000000, %esi		#mask p 4 bits mais sig do 1 byte
	andl %edx, %ecx										#first byte
	andl %eax,%esi										#4 bits mais sig
	shr $20, %esi										#4 bits para ver se é > 7
	cmpl $7,%esi
	jg greater
	jmp fim
	
greater:
	not %esi										#inverte os bits										
	sal $20, %esi
	cmpl $0, %ecx
	je firstByte0
	andl %ecx, %esi
	jmp next
	
firstByte0:
	notl %edx
	orl %edx, %esi
	
next:
	sal $12, %eax
	sar $12, %eax
	or %esi,%eax

	
fim:
	movl %eax, 8(%ebp)
	
#prologue	
	
	popl %esi
	popl %ebx
	
	movl %ebp, %esp			 
	popl %ebp				 
	ret	
