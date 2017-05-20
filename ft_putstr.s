section .text
 	global _ft_putstr

_ft_init :
	mov r8, 0

_ft_len :
	cmp byte [rdi], 0
	je _leave
	inc r8
	inc rdi
	jmp _ft_len

_ft_putstr :
	push	rdi
	jmp	_ft_init

_leave :
	pop	rdi	
	mov rsi, rdi
	mov rdi, 1
	mov rdx, r8
	mov rax, 0x2000004     ;write
	syscall
	ret
