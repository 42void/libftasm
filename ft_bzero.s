section .text
	global _ft_bzero

_ft_bzero :
	cmp		rdi, 0
	je		_leave

_loop :
	cmp		rsi, 0
	je		_leave
	mov 	byte [rdi], 0
	inc 	rdi
	dec 	rsi
	jmp 	_loop

_leave :
	ret

