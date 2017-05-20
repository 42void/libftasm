extern _ft_strlen, _malloc, _ft_memcpy

section .text
	global _ft_strdup

_ft_strdup :
	push	rdi				; save s
    call	_ft_strlen		; ft_strlen(rdi)
	inc		rax				; len + 1
    mov		rdi, rax		; set rdi for malloc
	mov		r10, rax		; len to tmp
    call	_malloc			; malloc(rdi)
    mov		rdi, rax		; set rdi
	mov		rdx, r10		; len to rdx
	pop		rsi				; reload s
    call	_ft_memcpy		; ft_memcpy(rdi, rsi, rdx)
  	ret						
