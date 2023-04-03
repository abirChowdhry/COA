              
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

  .model small
  .stack 100h
  .data
  msg db 'Enter the value: $'
  msg2 db 'o$'
  msg3 db 'e$'
  
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
    
    cmp dl,'1'
    je o_
         
    cmp dl,'3'
    je o_
    
    cmp dl,'2'
    je e_
    
    cmp dl,'4'
    je e_
    
    e_:
    MOV AH,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
 
    LEA DX,msg3
    MOV AH,9
    INT 21H
    JMP END
    
    o_:
    MOV AH,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
 
    LEA DX,msg2
    MOV AH,9
    INT 21H
    
    END:
    mov ah,4ch
    end 21h
    main endp
 end main

ret




