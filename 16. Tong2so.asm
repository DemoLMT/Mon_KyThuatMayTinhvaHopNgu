.model SMALL
.stack 100h
.data
tb1 db 'Nhap a = $'
tb2 db 10, 13, 'Nhap b = $'
tb3 db 10, 13, 'Tong 2 so da nhap la $'
.code
main proc
mov ax,@DATA
mov ds,AX
;hien thi tb1
Mov ah,9
lea dx,tb1
int 21h

mov ah,1
int 21h

mov bl,al
mov ah,9

lea dx,tb2
int 21h

mov ah,1
int 21h

add bl,al

mov ah,9
lea dx,tb3
int 21h

sub bl,30h
cmp bl,39h
jbe thoat
sub bl,10
mov ah,2
mov dl,'1'
int 21h
thoat:
mov dl,bl
mov ah,2
int 21h
mov ah,4Ch
int 21h
main Endp
End main