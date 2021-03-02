IDEAL
MODEL small
STACK 20h
DATASEG
CODESEG
start:
	mov ax, 1234h
	push ax
	pop ax
	push 5678h
	push ax
	pop bx
exit:
	mov ax, 4c00h
	int 21h
END start