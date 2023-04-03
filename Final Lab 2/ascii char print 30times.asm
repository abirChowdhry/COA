
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
   
   mov ah,1
   int 21h
   mov dl,al
   mov cx,30
   
   Print:   
   mov ah,2
   int 21h
   dec cx
   jg Print

   exit:
   mov ah,4ch
   int 21h
   main endp
end main

ret




