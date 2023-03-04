.model small
.stack 100h
.data
x1 db 'Nhap a = $'
x2 db 10, 13, 'Nhap b = $'
x3 db 10, 13, 'TBC cua a va b la: $'
x4 db '.5$'
x5 db '.0$'
.Code
main proc
mov ax,@data
mov ds,ax
Mov ah,9
lea dx,x1
int 21h
mov ah,1
int 21h
mov bl,al
mov ah,9
lea dx,x2
int 21h
mov ah,1
int 21h
add bl,al
sub bl,60h
mov cl,bl
shr cl,1
add cl,30h
mov ah,9
lea dx,x3
int 21h
mov ah,2
mov dl,cl
int 21h
test bl,1
jne sole
mov ah,9
lea dx,x5
int 21h
jmp thoat
sole:
mov ah,9
lea dx,x4
int 21h
thoat:
mov ah,4ch
int 21h
main Endp
End main