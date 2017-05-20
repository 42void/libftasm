section .text
	global _ft_memset 

_ft_memset :
	push rdi
	cld				; clear DF (direction flag)
	mov rcx, rdx    ;on met le 3eme param (len) dans le cpteur de boucle
	mov rax, rsi    ; on met le int c dans la chaine cible rax;
	rep stosb
	pop rax			; recupere le dernier push et on le met dans le registre de retour 
	ret
