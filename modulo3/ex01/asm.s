.section .text
.global zero_count   #int zero_count
zero_count:

#prologue
	pushl %ebp
	movl %esp, %ebp

	#movl $ptr,%edx
	#movl ptr,%edx
	#movl $ptr1,%edx
	movl ptr1,%edx
	movl $0, %eax

string_loop:
	movb (%edx), %cl
	cmpb $0,%cl
	je end_string
	cmpb $'0',%cl
	je char_is_0
	#cmpb $' ', %cl
	#je char_is_space
	
	incl %edx
	jmp string_loop

char_is_0:
	incl %eax
	incl %edx
	jmp string_loop
	
end_string:
# epilogue
	#popl %esi
	movl %ebp, %esp
	popl %ebp
	ret
