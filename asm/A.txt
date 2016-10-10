mov ax, 0600h
mov bx, 0700h
mov cx, 0000h
mov dx, 184fh
int 10h

mov ch, 00
mov cl, 00
call set_cursor

mov cl, 14
mov dx, 5
call set_color

mov ah, 09h
lea dx, str1
int 21h

mov ch, 01
mov cl, 00
call set_cursor

mov cl, 9
mov dx, 3
call set_color

mov ah, 09h
lea dx, str2
int 21h

call terminator

set_cursor:

mov ax, 0200h
mov bx, 0000h
mov dh, ch
mov dl, cl
int 10h
ret

set_color:
mov ah, 09h
mov bl, cl
mov cx, dx
int 10h
ret

terminator:

mov ah, 4ch
int 21h

str1 db'hello$'
str2 db'world$'
