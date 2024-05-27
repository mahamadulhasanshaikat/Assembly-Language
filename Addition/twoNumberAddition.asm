;ADDITION OF TWO NUMBERS
;One is stored in variable 
;and another one to be taken by keyboard 

.MODEL SMALL
.STACK 100H  

.DATA

NUM1 DB 4
  
.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS, AX
              
    MOV AH,1
    INT 21H
    ADD NUM1,AL
    
    MOV AH,2
    MOV DL, NUM1
    INT 21H             
    
END MAIN