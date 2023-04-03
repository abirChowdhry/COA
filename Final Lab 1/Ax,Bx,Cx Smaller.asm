
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
 
.code
main proc
       
   MOV AX,2
   MOV BX,3
   MOV CX,4
   
   CMP AX,BX
   JLE Ax_Smaller
   
   CMP BX,CX
   JLE Bx_Smaller
   
   JMP Cx_
   
   Ax_Smaller:
   MOV AX,0
   JMP exit
   
   Bx_Smaller:
   MOV BX,0
   JMP exit
   
   Cx_:
   MOV CX,0
   
   exit:
   mov ah,4ch
   int 21h
   main endp
end main

ret




