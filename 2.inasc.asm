.model small
.stack 100h
.data
tb1 db 'Nhap ki tu thu 1 : $'
tb2 db 10, 13, 'Nhap ki tu thu 2 : $'
tb3 db 10, 13, 'Thu tu bang ma la : $'
.Code
main proc
mov ax,@data
mov ds,ax
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
mov cl,al
mov ah,9
lea dx,tb3
int 21h
cmp bl,cl
ja nhay
lap:
mov ah,2
mov dl,bl
int 21h
mov dl,cl
int 21h
jmp thoat
nhay:
xchg bl,cl
jmp lap
thoat:
mov ah,4ch
int 21h
main endp
End main