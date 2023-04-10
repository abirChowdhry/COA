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
   cmp cx,20
   jg Print
   jl New_Line
   
   Print2:
   mov ah,2
   int 21h
   dec cx
   cmp cx,10
   jg Print2
   jl New_Line2
   
   Print3:
   mov ah,2
   int 21h
   dec cx
   cmp cx,0
   jg Print3
   jmp exit
   
   New_Line:
   mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   jmp Print2
   
   New_Line2:
   mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   jmp Print3
   
   New_Line3:
   mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   jmp Print3

   exit:
   mov ah,4ch
   int 21h
   main endp
end main

ret




