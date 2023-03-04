.model small
.stack 100h
.data
tb1 db "So lon nhat la: $";
mang db 5,4,2,3,6
.code

main proc
    mov ax,@data
    mov ds,ax
;hien thi tb1
    lea dx,tb1;
    mov ah,9;
    int 21h;
;khai bao mang
    lea bx,mang; tro vao mang
    mov cx,5; tao mang co 5 p tu
    mov dl,[bx]
;lap
    for:
    inc bx; tang bx len 1 don vi
    cmp dl,[bx];
    jg bypass;
    mov dl,[bx];
    bypass:
    loop for
;hien thi ket qua
    add dl,'0';
    mov ah,2;
    int 21h;
;dung chuong trinh
 mov ah,4ch;
 int 21h

main endp
end main


