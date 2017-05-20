section .text
	global _ft_strncat

_ft_strncat :
	mov rax, rdi

_ft_strfirst :				;on inc rdi jusquau "\0"
	cmp byte [rdi], 0
	je	_loop
	inc rdi
	jmp _ft_strfirst	

_loop :
	cmp rdx, 0	
	je _end
	mov r8, [rsi]
	mov [rdi], r8
	inc rdi
	inc rsi
	dec rdx
	jmp _loop
	
_end :
	mov byte [rdi], 0
	ret
