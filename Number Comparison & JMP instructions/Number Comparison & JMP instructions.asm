;Number Comparison & JMP instructions
.MODEL SMALL
.STACK 200H 
.DATA


NOTE1 DB 'ENTER THE NUMBER:$'
NOTE2 DB ' SMALLER OR EQUAL$'
NOTE3 DB ' GREATER$'

.CODE

MAIN PROC 
    
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, NOTE1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48
    
    CMP BL,6 ;Compare
    JG LEVEL ;JMP variations:JG,JNG,JGE,JE,JNE 
    
    LEA DX, NOTE2 
    MOV AH,9
    INT 21H 
    JMP EXIT
    
    LEVEL:
    LEA DX, NOTE3 
    MOV AH,9
    INT 21H
                                      
END MAIN