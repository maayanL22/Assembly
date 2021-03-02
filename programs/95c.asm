IDEAL
MODEL small
STACK 100h
DATASEG
num1 dw 2
num2 dw 22
ReturnAddress dw ?
CODESEG
proc swap
	pop [ReturnAddress] ;get the return address
	pop di
	pop bx
	xor si, si
	mov si, [di]
	mov dx, [bx]
	mov [di], dx
	mov dx, si
	mov [bx], dx 
	xor si, si
	xor dx, dx
	push [ReturnAddress]
	ret
endp swap

start:
	mov [num1], 2
	mov [num2], 22
	xor di, di
	xor bx, bx
	xor si, si
	xor dx, dx
	push offset num1
	push offset num2
	call swap
exit:
	mov ax, 4c00h
	int 21h
END start