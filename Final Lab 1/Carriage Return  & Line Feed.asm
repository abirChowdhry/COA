
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
 
.code
main proc
       
   mov ah,1
   int 21h
   MOV BL,AL
   
   CMP BL,'A'
   JE Carriage
   
   CMP BL,'B'
   JE Line
   JMP exit
   
   Carriage:
   mov ah,2
   mov dl,0dh
   int 21h
   mov dl,bl
   int 21h
   JMP exit
   
   
   Line:
   mov ah,2
   mov dl,0Ah
   int 21h
   mov dl,bl
   int 21h
      
   exit:
   mov ah,4ch
   int 21h
   main endp
end main

ret




