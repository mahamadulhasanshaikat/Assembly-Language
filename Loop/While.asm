;While Loop Implementation 
;Take input untile press Enter
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
   MOV DX,0
   MOV AH,1
   INT 21H
   
   WHILE:
   CMP AL,0DH
   JE STOP_WHILE
   INC DX
   INT 21H
   JMP WHILE
   
   
   STOP_WHILE:

END MAIN