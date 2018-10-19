; Program that writes out "Hello World!"

; Constants
	cr equ 13				;return
	lf equ 10				;Linechange

section .data					;Data segment

	msg:	db 'Hello World!',cr,lf		;define byte "Hello World!"
	msg_L	equ $-msg			;length of message

section .text					;Code segment

global _start:					;tells linker entry point
_start:
	mov eax,4				;system call number sys_write
	mov ebx,1				;file descriptor standard output
	mov ecx,msg				;message to write
	mov edx,msg_L				;message length
	int 80h					;call kernel

	mov eax, 1				;system call number sys_exit
	mov ebx, 0				;system error
	int 80h					;call kernel
