section .text
	global _ft_strcat

_ft_strcat :
	push rcx
	push rbx
	mov rcx, rdi
	mov rbx, rsi

_ft_strfirst:				;on inc rdi jusquau "\0"
	cmp byte [rcx], 0
	je	_next
	inc rcx
	jmp _ft_strfirst	

_next :
	cmp byte [rbx], 0		
	je _end
	mov rax, [rbx]
	mov [rcx], al
	inc rbx
	inc rcx
	jmp _next
	
_end :
	mov byte [rcx], 0
	mov rax, rdi
	pop rcx
	pop rbx
	ret
