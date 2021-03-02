MODEL small
STACK 100h
DATASEG
CODESEG

start:
	mov al, 54h
	mov ah, 54h
	sub al, ah
	
exit:
	mov ax, 4c00h
	int 21h
END start
