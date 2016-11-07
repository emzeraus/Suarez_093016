mov ax, 0600h
mov bx, 0700h
mov cx, 0000h
mov dx, 184fh
int 10h

mov ch, 0000h
call set_cursor

mov ah, 09h
lea dx, msg1
int 21h

mov ah, 01h
int 21h

sub al, 30h

cmp al, 0
je hi

cmp al, 5
jg hello

cmp al, 5
jle goodbye

cmp al, 5
jge again

call terminator

hi:
mov ch, 01
call set_cursor
mov ah, 09h
lea dx, msg2
int 21h
ret

hello:
mov ch, 01
call set_cursor
mov ah, 09h
lea dx, msg3
int 21h
ret

goodbye:
mov ch, 01
call set_cursor
mov ah, 09h
lea dx, msg4
int 21h
ret

set_cursor:
mov ah, 02h
mov bh, 00h
mov dh, ch
mov dl, 00
int 10h
ret

terminator:
mov ah, 4ch
int 21h

msg1 db 'enter a #: $'
msg2 db 'You entered 0 $'
msg3 db 'You entered > 5 $'
msg4 db 'You enter <=5 & >=1 $'
