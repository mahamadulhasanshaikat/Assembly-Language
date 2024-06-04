.MODEL SMALL
.STACK 100h
.CODE

MAIN PROC
       
     MOV CX,0     
      
     input:
     MOV AH,1
     INT 21h
      
     CMP AL,13d
     JE print
      
     PUSH AX 
     INC CX
     JMP input   
           
     print: 
     MOV AH, 2  
     MOV DL, 10 
     INT 21H                  
     MOV DL, 0DH 
     INT 21H                  
     
     print2:
     AND DX,0
     POP DX
     MOV AH,2
     INT 21h
     LOOP print2 

    END MAIN