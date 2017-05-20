section .text
	global _ft_isascii

_ft_isascii :
	mov		rax, 1
	cmp		rdi, 0
	jl		_leave
	cmp		rdi, 127
	jg		_leave
	ret

_leave :
	mov		rax, 0
	ret
