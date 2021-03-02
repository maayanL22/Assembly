IDEAL
MODEL small
STACK 100h
DATASEG
array1 db 3 dup(3)
array2 db 5 dup(5)
array3 db 7 dup(7)

CODESEG
start :

exit :
	mov ax, 4c00h
	int 21h
END start