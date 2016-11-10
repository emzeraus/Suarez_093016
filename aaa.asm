mov ax, 0600h
mov bx, 0700h
mov cx, 0000h
mov dx, 184fh
int 10h

;--11th
mov ch, 00
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str11
int 21h

;--12th
mov ch, 01
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str12
int 21h

;--13th
mov ch, 02
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str13
int 21h

;--14th
mov ch, 03
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str14
int 21h

;--15th
mov ch, 04
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str15
int 21h

;--16th
mov ch, 05
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str16
int 21h

;--17th
mov ch, 06
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str17
int 21h

;--18th
mov ch, 07
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str18
int 21h

;--19th
mov ch, 08
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str19
int 21h

;--20th
mov ch, 09
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str20
int 21h

;--21th
mov ch, 10
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str21
int 21h

;--22th
mov ch, 11
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str22
int 21h

;--23th
mov ch, 12
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str23
int 21h

;--24th
mov ch, 13
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str24
int 21h

;--25th
mov ch, 14
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str25
int 21h

;--26th
mov ch, 15
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str26
int 21h

;--27th
mov ch, 16
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str27
int 21h

;--28th
mov ch, 17
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str28
int 21h

;--29th
mov ch, 18
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str29
int 21h

;--30th
mov ch, 19
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str30
int 21h

;--31
mov ch, 20
mov cl, 10
call set_cursor
mov cl, 14
mov dx, 8
call set_color
mov ah, 09h
lea dx, str31
int 21h

;--32
mov ch, 21
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str32
int 21h

;--33
mov ch, 22
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str33
int 21h

;--34th
mov ch, 23
mov cl, 00
call set_cursor
mov cl, 18
mov dx, 4
call set_color
mov ah, 09h
lea dx, str34
int 21h

call terminate

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

terminate:
mov ah, 4ch
int 21h

str11 db'**********************************************&'
str12 db'*******************§§*************************&'
str13 db'*************§****§§§§************************&'
str14 db'**§***§**********§§§§§§*****************§*****&'
str15 db'_________§§_____§§§§§§§§**********************&'
str16 db'_______________§§§§§§§§§§******§**************&'
str17 db'§___§_________§§§§§§§§§§§§*********§**********&'
str18 db'_________________§§§§§§***********************&'
str19 db'__________§_____§§§§§§§§**********************&'
str20 db'_______________§§§§§§§§§§*****§***************&'
str21 db'______________§§§§§§§§§§§§********************&'
str22 db'_§_____§_____§§§§§§§§§§§§§§§******************&'
str23 db'___________§§§§§§§§§§§§§§§§§§§******§****§****&'
str24 db'________§§§§§§§§§§§§§§§§§§§§§§§§______________&'
str25 db'__§___________§§§§§§§§§§§§____________________&'
str26 db'____________§§§§§§§§§§§§§§§§_____§____________&'
str27 db'_________§§§§§§§§§§§§§§§§§§§§§§_________§_____&'
str28 db'______§§§§§§§§§§§§§§§§§§§§§§§§§§§_____________&'
str29 db'___§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§______§___&'
str30 db'__§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§_______&'
str31 db'§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§_____&'
str32 db'________________§§§§§§§§______________________&'
str33 db'___§______§_____§§§§§§§§______________________&'
str34 db'________________§§§§§§§§____§_________§_______&'