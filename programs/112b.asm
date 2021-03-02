IDEAL
MODEL small
STACK 100h
DATASEG
CODESEG
start :
	mov ax, @data
	mov ds, ax
	;print h
	mov dl, 'H'
	mov ah, 2
	int 21h
	;print e
	mov dl, 'E'
	mov ah, 2
	int 21h
	;print l
	mov dl, 'L'
	mov ah, 2
	int 21h
	;print l
	mov dl, 'L'
	mov ah, 2
	int 21h
	;print o
	mov dl, 'O'
	mov ah, 2
	int 21h
exit :
	mov ax, 4C00h
	int 21h
END start