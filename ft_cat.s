section .bss
buffer:		resb 64                ; reserve 64 bytes 

section .text
	global 	_ft_cat


_ft_cat :
	mov 	rdx, 64			;buffer size
	lea 	rsi, [rel buffer];charge ladresse du buffer	
	mov 	rax, 0x2000003  ;read
	syscall
	jc 		_ft_end			;on stoppe si pb avec le syscall
	cmp 	rax, 0 			;si read renvoit nb > 0 on write
 	jg 		_ft_write
	ret

_ft_write :
	push 	rdi			;on push le fd sur la stack avant modif
	mov 	rdi, 1 			;sortie standard
	mov 	rdx, rax		;on met le nb de char lus dans rdx
	mov 	rax, 0x2000004  ;write
	syscall
	pop 	rdi				;on reprends le fd dorgine
	jmp 	_ft_cat

_ft_end:
	ret
