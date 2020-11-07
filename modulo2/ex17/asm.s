.section .data
res:
	.int 0
.global res

.section .text
.global sum
.global subtract
.global multiplication
.global division
.global modulus
.global powerof2
.global powerof3

sum:
# prologue
pushl %ebp
movl %esp, %ebp

#body of the function
movl op1 , %eax
cdq
movl op2 , %ecx
cdq
addl %ecx, %eax

# epilogue
movl %ebp, %esp
popl %ebp
ret

subtract:
# prologue
pushl %ebp
movl %esp, %ebp

#body of the function	
movl op1 , %eax
movl op2 , %ecx
subl %ecx, %eax	
cdq


# epilogue
movl %ebp, %esp
popl %ebp
ret

multiplication:
# prologue
pushl %ebp
movl %esp, %ebp

movl op1,%eax
movl op2,%ecx
imul %ecx
cdq

# epilogue
movl %ebp, %esp
popl %ebp
ret

division:
# prologue
pushl %ebp
movl %esp, %ebp

movl op1, %eax
cdq
cmpl $0,op2
je op2_is_0
movl op2 ,%ecx
idivl %ecx
jmp end

op2_is_0:
	movl $0, %eax
	jmp end
	
end:
# epilogue
movl %ebp, %esp
popl %ebp
ret

modulus:
# prologue
pushl %ebp
movl %esp, %ebp

movl op1, %eax
cdq
cmpl $0, op2
je op2_Is_0
movl op2, %ecx
idivl %ecx
movl %edx,%eax
jmp end

op2_Is_0:
	movl $0, %eax
	jmp End

End:
# epilogue
movl %ebp, %esp
popl %ebp
ret

powerof2:

# prologue
pushl %ebp
movl %esp, %ebp

movl op1, %eax
imull %eax

# epilogue
movl %ebp, %esp
popl %ebp
ret

powerof3:
# prologue
pushl %ebp
movl %esp, %ebp

movl op1, %eax
imull %eax
movl op1, %ecx
imull %ecx

# epilogue
movl %ebp, %esp
popl %ebp
ret
