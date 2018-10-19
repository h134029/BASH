;Constants
	SYS_EXIT	equ 1
	SYS_READ	equ 3
	SYS_WRITE	equ 4
	STDIN		equ 0
	STDOUT		equ 1
	STDERR		equ 2

section .bss
	a resb 1 	;siffer

section .text
global _start
_start:
	mov [a], byte 0
	mov cl, 20
	mov eax, [a]

loop_fra_20:
	cmp cl, 10
	jg L2		;Hopp til L2 viss 20>10
;	mov eax, [a]
	dec eax		;dekrementer a
;	mov [a], eax

	jmp L3

L2:
;	mov eax, [a]
	inc eax		;inkrementer a
;	mov [a], eax

L3:
	dec cl

jnz loop_fra_20		;hopp til starten av loekken dersom cl ikkje er 0

	add eax, '0'
	mov [a], eax
	mov ecx, a
	mov edx, 1
	mov ebx, STDOUT
	mov eax, SYS_WRITE
	int 80h

	mov eax, 1
	int 80h
