extern _ft_isalpha, _ft_isdigit

section .text
	global _ft_isalnum

_ft_isalnum :
	mov		rax, 1
	call _ft_isalpha
	cmp		rax, 0
	je		_next
	ret

_next :
	call _ft_isdigit
	cmp		rax, 0
	je		_leave
	ret

_leave :
	mov		rax, 0
	ret
	
	
