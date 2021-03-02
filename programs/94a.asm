IDEAL
MODEL small
STACK 100h
DATASEG
numOfPrint dw 4
CODESEG
proc printX
	pop bx
	pop ax
	mov cx, ax
printLoop:
	mov dl, 'X'
	mov ah, 2h
	int 21h
	loop printLoop
	push bx
	ret
endp printX

start:
	mov [numOfPrint], 4
	xor ax, ax
	xor bx, bx
	xor cx, cx
	cmp [numOfPrint], 0
	jbe dontPrint
doPrint:
	push [numOfPrint]
	call printX
dontPrint:
exit: 
	mov ax, 4c00h
	int 21h
END start

	