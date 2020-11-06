.section .data
#C:
#	.long 0
#D:
#	.long 0
#B:
	#.int 0
#A:
#	.byte 0
.global C
.global D
.global B
.global A

.section .text
.global sum_and_subtract  #long long sum_and_substract()
sum_and_subtract:

# prologue
pushl %ebp 		# save previous stack frame pointer
movl %esp, %ebp 	# the stack frame pointer for sum function

# body of the function
# mov $0, %eax

movb A, %cl
movsbl %cl, %ecx
movw B, %dx
movswl %dx, %edx
addl %ecx, %edx
movl C, %eax
addl %edx,%eax
subl D, %eax
cdq

##movl C, 

# movl C, %eax
# mov $0, %ecx
# movb A, %cl
# addb %cl,%al

# mov $0, %ecx
 
# movl D, %ecx
# subl %ecx, %eax 

# mov $0, %ecx
# movw B, %cx
# addw %cx, %ax 

# epilogue
movl %ebp, %esp	 	# restore the previous stack pointer ("clear" the stack)
popl %ebp 			# restore the previous stack frame pointer
ret
