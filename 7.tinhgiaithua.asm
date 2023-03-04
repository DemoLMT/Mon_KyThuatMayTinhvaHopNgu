.model Small
.stack 100h
.Data
    muoi dw 10
    tb1 db 10,13,'Ket qua la: $'
.code
main proc
    mov ax,@Data
    mov ds,ax

    mov ah,1;nhap 1 ky tu vao ban phim
    int 21h
    sub al,'0';chuyen ky tu 5 ve so 5
    mov cx,0;cx=0
    mov cl,al;cl=5

    lea dx,tb1; in chuoi tb1
    mov ah,9
    int 21h

    mov ax,1
    mov bx,1

    giaithua:
        mul bx
        inc bx
        cmp bx,cx
        jle giaithua
    mov cx,0

    lappush:
    mov dx,0
    div muoi
    add dx,'0'
    push dx
    inc cx
    cmp ax,0
    jne lappush

    hienthi:
        pop dx
        mov ah,2
        int 21h
        loop hienthi
mov ah,4ch
int 21h
main endp
end main