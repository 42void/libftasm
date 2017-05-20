section .text
	global _ft_isdigit

_ft_isdigit :
	cmp 	rdi, 48    	;compare le caractere '0' et rdi
	jge 	part1		;il saute a part 1 si >= a '0'
	jmp		part2		;sinon il jump a part 2

part1 :
	cmp 	rdi, 57		;compare le char '9' et rdi
	jg  	part2		;jump if greater to part 2
	mov 	rax, 1		
	ret

part2 :
	mov 	rax, 0		;
	ret					;return 0
