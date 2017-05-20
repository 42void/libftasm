section .text
	global _ft_memcpy

_ft_memcpy :
	push rdi
	cld
	mov rcx, rdx 	;met le 3eme arg dans le reg cpteur de boucles
	rep movsb  		;cp un elem de rsi dans rdi et inc rdi et rsi
	pop rax
	ret
