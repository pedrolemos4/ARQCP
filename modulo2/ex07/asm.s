.section .data
	
.global s1
.global s2

.section .text
	.global crossSumBytes
crossSumBytes:


pushl %ebp
movl %esp, %ebp


movw s1, %cx
movw s2, %dx
movsbw %ch, %ax
movsbw %cl, %cx
movb %dl, %cl
movb %dh, %ah
movsbl %ah, %eax
movsbl %cl, %ecx
addl %ecx, %eax


movl %ebp, %esp
popl %ebp
ret
