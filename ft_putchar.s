section .text
	global _ft_putchar

_ft_putchar :
	push rdi
	mov rsi, rsp
	mov rdi, 1
	mov rdx, 1
	mov rax, 0x2000004
	syscall
	pop rax
	ret