IDEAL
MODEL small
STACK 100h
DATASEG
num1 dw 2
num2 dw 22
max dw ?
CODESEG
proc getMax
	push bp
	mov bp, sp
	mov bx, [bp + 4]
	mov ax, [bp + 6]
	mov dx, [bp + 8]
	cmp ax, dx
	ja firstMax
	jb secondMax
firstMax:
	mov [bx], ax
	jmp finProc
secondMax:
	mov [bx], dx
finProc:
	pop bp
	ret 6
endp getMax

start:
	xor ax, ax
	xor bx, bx
	xor dx, dx
	xor bp, bp
	mov [num1], 2
	mov [num2], 22
	push [num1]
	push [num2]
	push offset max
	call getMax
exit:
	mov ax, 4c00h
	int 21h
END start
