
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

  .model small
  .stack 100h
  .data
  msg db 'Enter the value of DL: $'
  msg2 db 'b$'
  msg3 db 'Enter the value of CL: $'

  
  .code
  main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,9
    int 21h
    
    MOV AH,1
    INT 21H
    mov dl,al 
    
    MOV AH,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    lea dx,msg3
    mov ah,9
    int 21h
    
    MOV AH,1
    INT 21H
    mov cl,al 
    
    cmp dl,'3'
    jb cl_
    
    cl_:     
    cmp cl,'3'
    jb b_
    jmp exit
    
    b_:
    MOV AH,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
 
    LEA DX,msg2
    MOV AH,9
    INT 21H
    
    exit:
    mov ah,4ch
    int 21h
    main endp
 end main

ret






ret




