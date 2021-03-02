IDEAL
MODEL small
Stack 100h
DATASEG
CODESEG
proc ChangeRegistersValues
	push ax
	push bx
	push cx
	push dx
	mov ax, 1
	mov bx, 2
	mov cx, 3
	mov dx, 4
	pop dx
	pop cx
	pop bx
	pop ax
	ret
endp ChangeRegistersValues
start :
	mov ax, @data
	mov ds, ax
	xor ax, ax
	xor bx, bx
	xor cx, cx
	xor dx, dx
	call ChangeRegistersValues
exit: 
	mov ax, 4c00h
	int 21h
END start
