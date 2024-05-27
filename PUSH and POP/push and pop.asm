;PUSH and POP 
;String Reversion
.model small
.stack 100h
.code

main proc
       
     mov cx,0     
      
     input:
     mov ah,1
     int 21h
      
     cmp al,13d ;checking enter?
     je print
      
     push ax 
     inc cx
     jmp input   
           
     print: 
     MOV AH, 2  ;OUTPUT FUNCTION
     MOV DL, 10 ;New Line in Deceimal
     INT 21H                  
     MOV DL, 0DH ;Carriage Return in Hexa
     INT 21H                  
     
     print2:
     and dx,0
     pop dx
     mov ah,2
     int 21h
     loop print2     
           
end main