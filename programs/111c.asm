IDEAL
MODEL small
STACK 100h
DATASEG
CODESEG
start:
	xor cx, cx
	xor dl, dl
	mov cx, 10
getDig:
	mov ah, 1
	int 21h
	cmp al, 31h
	jb exit
	cmp al, 39h
	ja exit
	add dl, al
	loop getDig
exit:
	mov ax, 4c00h
	int 21h
END start