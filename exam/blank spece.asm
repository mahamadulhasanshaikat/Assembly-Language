
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
   MOV AH,1
   
   DO:
   INT 21H
   CMP AL, ' '
   JNE DO
           
      
END MAIN