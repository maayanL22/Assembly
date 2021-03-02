IDEAL
MODEL small
STACK 100h
DATASEG
message db 'end$'
CODESEG
proc SimpleISR far
	push ax
	push bx
	push dx
	mov ah, 1
	int 21h
	mov ah, 0
	push ax
	mov ah, 1
	int 21h
	mov ah, 0
	push ax
	pop bx
	pop ax
	cmp ax, bx
	je same
	jl printb
	jg printa
same:
	mov dx, offset equal
	mov ah, 9
	int 21h
	jmp finish
printb:
	mov dl, 'b'
	mov ah, 2
	int 21h
	mov dl, 'x'
	mov ah, 2
	int 21h
	jmp finish
printa:
	mov dl, 'a'
	mov ah, 2
	int 21h
	mov dl, 'x'
	mov ah, 2
	int 21h
	jmp finish
finish:
	pop dx
	pop bx
	pop ax
	iret
equal db 'SAME$'
endp SimpleISR
start :
	mov ax, @data
	mov ds, ax
	; Plant SimpleISR into IVT, int 0FFh
	mov al, 0F0h
	mov ah, 25h
	mov dx, offset SimpleISR
	push seg SimpleISR
	pop ds
	int 21h
	; Call SimpleISR
	int 0F0h
	mov ah, 1
	int 21h
exit: 
	mov ax, 4c00h
	int 21h
END start
