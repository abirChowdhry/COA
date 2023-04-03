
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
   mov bl,al

   cmp bl,'1'
   je sum
   
   cmp bl,'2'
   je subtraction
   
   cmp bl,'3'
   je input
   
   jmp others
   
   sum:
   mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   
   mov cl,2
   mov dl,3
   add dl,cl
   
   mov ah,2
   int 21h
   jmp exit 
   
   subtraction:
   mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   
   mov cl,3
   mov dl,4
   add dl,cl
   
   mov ah,2
   int 21h
   jmp exit
   
   input:
   mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   
   mov dl,bl
   mov ah,2
   int 21h
   jmp exit
   
   others:
   mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   
   mov dl,'A'
   mov ah,2
   int 21h  
   
   exit:
   mov ah,4ch
   int 21h
   main endp
end main

ret




