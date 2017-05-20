section .text
	global _ft_isprint

_ft_isprint :
	mov		rax, 1
	cmp		rdi, 32
	jl		_leave
	cmp		rdi, 126
	jge		_leave
	ret

_leave :
	mov		rax, 0
	ret
