section .text
	global _start	;linker declaration

_start:			;linker entry point.
	mov edx, len	;message length
	mov ecx, msg	;message to write
	mov ebx, 1	;standard output
	mov eax, 4	;system write
	int 0x80	;call kernel

	mov eax, 1	; system exit
	int 0x80	; call kernel

section .data
msg db 'Hello, World', 0xa	;string message
len equ $ - msg		;message length.

