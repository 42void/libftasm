extern _malloc

section .text
 	global _ft_strnew

_ft_strnew :
	push	rdi			;on push la len sur la stack (sinon ca merde avec le malloc)
	inc 	rdi			;on inc de 1 pour le \0
	call	_malloc		;malloc(rdi) 
	pop		r10			;on met la len dans r10
	push 	rax			;on push la chaine malloc sur la stack
	cmp 	rax, 0		;on verifie que le malloc a fonctionne
	je 		_leave


_ft_loop :
 	cmp 	r10, 0
 	je 		_ret
 	mov 	byte [rax], 0
 	dec 	r10
 	inc 	rax
 	jmp 	_ft_loop

_ret :
	mov 	byte [rax], 0
	pop 	rax
	ret
 
_leave :
	mov rax, 0
	ret
