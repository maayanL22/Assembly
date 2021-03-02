MODEL small
STACK 100h
DATASEG
CODESEG

start:
	mov al, F0h
	mov ah, 10h
	add al, ah
	
exit:
	mov ax, 4c00h
	int 21h
END start
