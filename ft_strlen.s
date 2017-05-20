section .text
	global _ft_strlen

_ft_strlen :
	cld
	mov rax, 0
	mov rcx, -1
	repnz scasb		;repnz boucle jusqua ZF=1(lorsque rax et rdi st =)
					;scasb compare rax et [rdi] et inc rdi
	inc rcx
	not rcx
	mov rax, rcx
	ret

