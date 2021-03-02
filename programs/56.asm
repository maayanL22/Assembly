IDEAL
MODEL small
STACK 100h
DATASEG
var db ?

CODESEG
start :
	mov ax, @data
	mov ds, ax
	mov [var], 5
exit :
	mov ax, 4c00h
	int 21h
END start