IDEAL
MODEL small
STACK 100h
DATASEG
CODESEG
start:
mov ax, 5
jmp compare
sub1:
	sub ax, 1
compare:
	cmp ax, 0
	jg sub1

quit :
	mov ax, 4c00h
	int 21h
END startpb