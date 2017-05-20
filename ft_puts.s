section .data
	null : db "(null)", 10

section .text
 	global _ft_puts

_ft_puts :
	cmp		rdi, byte 0
	je		_ret
	push	rdi

_ft_init :
	mov r8, 0

_ft_len :
	cmp byte [rdi], 0
	je _leave
	inc r8
	inc rdi
	jmp _ft_len

_ret :
	lea rsi, [rel null]
	mov rdi, 1
	mov rdx, 7
	mov rax, 0x2000004     ;write
	syscall
	mov rax, 10
	ret

_leave :
	pop	rdi	
	mov rsi, rdi
	mov rdi, 1
	mov rdx, r8
	mov rax, 0x2000004     ;write
	syscall
	push	10
	mov rsi, rsp			;rsp adresse du dernier push
	mov rdi, 1
	mov rdx, 1
	mov rax, 0x2000004
	syscall
	pop rax
	ret
