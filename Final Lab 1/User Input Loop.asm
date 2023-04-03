
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
 msg db 'Enter: $'
 msg2 db 'Do you want you enter again? $'
 msg3 db 'Try again $'
 
.code
main proc
    
   mov ax,@data
   mov ds,ax
   
   Loop_:
   
   mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
      
   lea dx,msg
   mov ah,9
   int 21h
   
   mov ah,1
   int 21h
   mov dl,al
   
   mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   
   mov ah,2
   int 21h
   
   lea dx,msg2
   mov ah,9
   int 21h
   
   mov ah,1
   int 21h
   mov dl,al 
   
   cmp dl,'Y'
   je Loop_
   
   cmp dl,'y'
   je Loop_
   
   cmp dl,46h
   Ja exit
   
   illegal:
   mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   
   lea dx,msg3
   mov ah,9
   int 21h
   jmp try_again
   
   try_again:
   mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   
   lea dx,msg2
   mov ah,9
   int 21h
   
   mov ah,1
   int 21h
   mov dl,al
   
   cmp dl,'Y'
   je Loop_
   
   cmp dl,'y'
   je Loop_
   
   exit:
   mov ah,4ch
   int 21h
   main endp
end main

ret




