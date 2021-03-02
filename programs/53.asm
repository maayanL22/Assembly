MODEL small
STACK 100h
DATASEG
CODESEG

start:
	mov al, 64h ; 100 decimal
	mov ah, 28h ; 40 decimal
	add al, ah
	
exit:
	mov ax, 4c00h
	int 21h
END start
