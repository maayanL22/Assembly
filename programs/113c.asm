IDEAL
MODEL small
STACK 100h
DATASEG
message db 'I like to write assembly code',10,13,'$'
message1 db 'Maayan$'
CODESEG
start :
	mov ax, @data
	mov ds, ax
	push seg message
	pop ds
	mov dx, offset message
	mov ah, 9h
	int 21h
	push seg message1
	pop ds
	mov dx, offset message1
	mov ah, 9h
	int 21h
exit :
	mov ax, 4C00h
	int 21h
END start