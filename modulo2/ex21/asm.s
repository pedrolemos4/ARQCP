.section .text
.global new_salary

new_salary:
# prologue
pushl %ebp
movl %esp, %ebp

#body of the function
movl code,%ecx
movl currentSalary,%eax

cmpl $12,%ecx
je code_is_12
jl code_is_less_than_12

addl $100,%eax
jmp end

code_is_12:
	addl $150,%eax
	jmp end

code_is_less_than_12:
	cmpl $11,%ecx
	jl code_is_less_than_11
	addl $250,%eax
	jmp end

code_is_less_than_11:
	cmpl $10,%ecx
	jl code_is_less_than_10
	addl $300, %eax
	jmp end

code_is_less_than_10:
	addl $100, %eax
	jmp end

end:
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
