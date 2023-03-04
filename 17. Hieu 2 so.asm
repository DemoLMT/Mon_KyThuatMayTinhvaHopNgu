.model Small
.stack 100h
.Data
tb1 db 'Nhap a = $'
tb2 db 10, 13, 'Nhap b = $'
tb3 db 10, 13, 'Hieu 2 so da nhap la $'
.code
main proc
mov ax,@Data
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
jae thoat
xchg bl,cl
mov ah,2
mov dl,'-'
int 21h
thoat:
sub bl,cl
add bl,30h
mov ah,2
mov dl,bl
int 21h
mov ah,4Ch
int 21h
main endp
End main