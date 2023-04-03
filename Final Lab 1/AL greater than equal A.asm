
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data

.code
main proc
MOV AH,1
INT 21H
CMP AL,'A'
JGE True
JMP False

True:
MOV CL,'5'
MOV DL,CL
MOV AH,2
INT 21H
JMP exit

False:
MOV CL,'6'
MOV DL,CL
MOV AH,2
INT 21H
  
exit:
mov ah,4ch
int 21h
main endp
end main
   
ret




