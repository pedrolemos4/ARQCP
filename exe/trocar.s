.section .text
.global trocar  #unsigned char trocar()

trocar:
# prologue
pushl %ebp
movl %esp, %ebp

#body of the function
movl $0, %eax #limpar registo %eax, que irá conter o retorno da função

movw simbolos, %dx    #colocação da variável global símbolos no registo %dx

movb %dh, %cl     #colocação do primeiro byte da variável simbolos no registo %cl
cmp $0x0040,%cl   #comparação do registo %cl (primeiro char) com o código ASCII que representa a primeira letra maiúscula
jg primeiro_char_pode_ser_letra

movb %cl, %dh
jmp continuacao_do_programa

continuacao_do_programa:
	movb %dl, %cl
	cmp $0x40, %cl
	jg segundo_char_pode_ser_letra
	jmp end


primeiro_char_pode_ser_letra:
		cmp $0x5A, %cl #comparação do registo %cl (que contém o char) com o código ASCII que representa a última letra maiúscula
		jg primeiro_char_pode_ser_letra_minuscula 
		addb $0x20, %cl  #se o programa passar nesta linha, significa que o primeiro char é uma letra maiúscula. Assim, para converter para a respetiva letra minúscula, adicionamos 20 (em hexadecimal) ao registo que contém o carater.
		addl $1, %eax   #como ocorreu mudança na variável, incrementa-se o registo %eax
		movb %cl, %dh
		jmp continuacao_do_programa
		
		
primeiro_char_pode_ser_letra_minuscula:
		cmp $0x61, %cl #comparação do registo %cl (que contém o char) com o código ASCII que representa a última letra minúscula
		jl  continuacao_do_programa
		cmp $0x7A, %cl
		jg  continuacao_do_programa
		subb $0x20, %dl  #se o programa passar nesta linha, signifa que o char é uma letra minúscula. Assim, para converter para a respetiva letra maiúscula, subtraímos 20 (em hexadecimal) ao registo que contém o carater.
		addl $1, %eax  #como ocorreu mudança na variável, incrementa-se o registo %eax
		movb %cl, %dh
		jmp continuacao_do_programa
		

segundo_char_pode_ser_letra:	
	    cmp $0x5A, %cl #comparação do registo %cl (que contém o char) com o código ASCII que representa a última letra maiúscula
		jg segundo_char_pode_ser_letra_minuscula 
		addb $0x20, %cl  #se o programa passar nesta linha, significa que o primeiro char é uma letra maiúscula. Assim, para converter para a respetiva letra minúscula, adicionamos 20 (em hexadecimal) ao registo que contém o carater.
		addl $1, %eax   #como ocorreu mudança na variável, incrementa-se o registo %eax
		jmp end
		
segundo_char_pode_ser_letra_minuscula:
		cmp $0x61, %cl #comparação do registo %cl (que contém o char) com o código ASCII que representa a última letra minúscula
		jl  end
		cmp $0x7A, %cl
		jg  end
		subb $0x20, %dl  #se o programa passar nesta linha, signifa que o char é uma letra minúscula. Assim, para converter para a respetiva letra maiúscula, subtraímos 20 (em hexadecimal) ao registo que contém o carater.
		addl $1, %eax  #como ocorreu mudança na variável, incrementa-se o registo %eax
		
		
end: 
	movb %cl, %dl
	movw %dx, simbolos
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
