.model small 
.stack 100h 
.data 
   test db 'abcd',13,10,'$'
.code 
main :
    mov ax,@data 
    mov ds,ax
   
   lea dx, test;
   mov ah,9;
   int 21h
; doi vi tri b cho d
   mov al,test+1;
   xchg test+3,al;
   mov test+1,al;

   lea dx,test;
   mov ah,9;
   int 21h;

   mov ah,4ch;
   int 21h;

   end main