
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
 msg db 'Input: $'
 
.code
main proc
    
   mov ax,@data
   mov ds,ax
     
   lea dx,msg
   mov ah,9
   int 21h
   
   again:
   mov ah,1
   int 21h
   mov bl,al
   cmp bl,13
   je exit
   jmp again
   
   exit:
   mov ah,4ch
   int 21h
   main endp
end main

ret



