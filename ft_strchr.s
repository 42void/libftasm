section .text
	global _ft_strchr

_ft_strchr :
	;xor 	rax, rax
	movzx	rax, byte [rdi] ;cp un reg de taille  inf dans un de taille sup en remplissant les bits sup par des 0
	cmp		rax, rsi
	je 		_ret
	cmp 	[rdi], byte 0
	je 		_null
	inc 	rdi
	jmp 	_ft_strchr

_ret :
	mov 	rax, rdi
	ret

_null :
	mov 	rax, 0
	ret


