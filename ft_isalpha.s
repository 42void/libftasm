section .text
	global _ft_isalpha

_ft_isalpha :
	mov	 	rax, 1		;we set 1 as return value
	cmp 	rdi, 65    	;compare char 'A' and rdi
	jl 		_leave		;si < 'A' return 0
	cmp 	rdi, 91		;compare char '[' and rdi
	jge 	_next		;if >= '[' jump to next
	ret					;else return 1

_next :
	cmp 	rdi, 97		;compare le char 'a' et rdi
	jl 		_leave		;if < 'a' return 0
	cmp 	rdi, 123	;compare char '{' et rdi
	jge		_leave		;if >= '{' return 0
	ret					;else return 1

_leave :
	mov 	rax, 0		;
	ret					;return 0
