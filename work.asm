	SECTION .data
	
A: db 1,5,7, 7,4,3, 5,0,1	;matriz A 3x3
B: db 8,2,4, 9,6,8, 0,2,4	;matriz B 3x2	
;C: db 9 times 0		;matriz C 3x2
soma: dw 0
ecx_inicial: dw 0

	SECTION .text

%include "macro.txt"

global _start
	_start:
	
	mov eax, 0
	mov ebx, 0
	mov ecx, 0
	mov edx, 0
	
	mult_mat edx
	
	mov ebx, edx
	mov eax, 1
	int 0x80
