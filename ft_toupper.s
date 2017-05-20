section .text
	global _ft_toupper

_ft_toupper :
	mov		rax, rdi
	cmp		rdi, 97
	jl		_leave
	cmp		rdi, 122
	jg		_leave
	sub 	rdi, 32
	mov		rax, rdi
	ret

_leave :
	ret
