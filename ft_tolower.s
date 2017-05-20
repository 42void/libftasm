section .text
	global _ft_tolower

_ft_tolower :
	mov		rax, rdi
	cmp		rdi, 65
	jl		_leave
	cmp		rdi, 90
	jg		_leave
	add 	rdi, 32
	mov		rax, rdi
	ret

_leave :
	ret
