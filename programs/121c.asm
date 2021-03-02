IDEAL
MODEL small
STACK 100h
DATASEG
message db 'ESC key pressed',13,10,'$'
CODESEG
start :
	mov ax, @data
	mov ds, ax
WaitForData :
	mov ah, 1
	int 16h
	jz WaitForData
	mov ah, 0
	int 16h
	cmp ah, 1h
	je ESCPressed
	and ah, 80h
	jnz KeyReleased
KeyPressed:
	in al, 61h
	or al, 00000011b
	out 61h, al	
	mov al, 0b6h
	out 43h, al
	mov ax, 2394h
	out 42h, al
	mov al, ah
	out 42h, al
	jmp WaitForData
KeyReleased:
	in al, 61h
	and al, 11111100b
	out 61h, al
	jmp WaitForData
ESCPressed :
	mov dx, offset message
	mov ah, 9
	int 21h
exit :
	mov ax, 4C00h
	int 21h
END start