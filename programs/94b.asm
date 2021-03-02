IDEAL
MODEL small
STACK 100h
DATASEG
num1 dw 4
num2 dw 10
CODESEG
proc printCorrectNum
	pop bx ;return address
	pop ax
	pop dx
	cmp ax, dx
	je printC
	ja printA
	jb printB
printA:
	mov dl, 'A'
	mov ah, 2h
	int 21h
	jmp finProc
printB:
	mov dl, 'B'
	mov ah, 2h
	int 21h
	jmp finProc
printC:
	mov dl, 'C'
	mov ah, 2h
	int 21h
	jmp finProc
finProc:
	push bx
	ret
endp printCorrectNum

start:
	mov [num1], 4
	mov [num2], 10
	xor ax, ax
	xor bx, bx
	xor dx, dx
	push [num2]
	push [num1]
	call printCorrectNum
exit:
	mov ax, 4c00h
	int 21h
END start