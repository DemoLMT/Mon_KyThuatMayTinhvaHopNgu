.model small
.stack 100h
.DATA
mang db 8,7,5,4,6,3,2,1
.CODE
main proc
mov ax,@data
mov ds,ax;

lea si,mang;dua gia tri dau tien cua chuoi vao si
mov cx,9;khoi tao cx bang 9 hay co 9 ptu
mov bl,[si];dua gia tri si vao bl
inc si;tang gia tri si them 1 don vi

for:
lodsb
cmp bl,al;so sanh bl va al
jge bypass;>=  or ( jg > ) or ( jl < ) or ( je = ) nhay den bypass
mov bl,al;neu al>bl thi gan bl=al
bypass:
loop for ;lap

add bl,'0'; ep so ve kieu ky tu
mov dl,bl;dua gia tri tu bl ve dl
mov ah,2;in ra ky tu ra man hinh
int 21h

mov ah,4ch;
int 21h;

main endp
end main