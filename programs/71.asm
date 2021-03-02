IDEAL
MODEL small
STACK 100h
DATASEG
arr db 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
var1 db 1
var2 db 1
sum dw ?
CODESEG
start:
	add al, [arr]
	add al, [arr + 1]
	add al, [arr + 2]
	add al, [arr + 3]
	add al, [arr + 4]
	add al, [arr + 5]
	mov ax, [word ptr var1]
	add [sum], ax
	mov ax, [word ptr var2]
	add [sum], ax
	mov al, 0
	add al, 2
	mov [var2], 33
exit:
	mov ax, 4c00h
	int 21h
END start
