IDEAL
MODEL small
STACK 100h
DATASEG

CODESEG
start:
	mov [byte ptr cs:40], 0B8h
	mov [byte ptr cs:41], 03h
	mov [byte ptr cs:42], 00h
	mov [byte ptr cs:43], 0BBh
	mov [byte ptr cs:44], 03h
	mov [byte ptr cs:45], 00h
	xor ax, ax
	xor bx, bx
	add ax, 2
	add ax, 2
	;mov bx, 3
	;mov [cs:7], B80300
	;mov ax, 3
	;mov [3], al
exit:
	mov ax, 4c00h
	int 21h
END start