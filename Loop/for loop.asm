;For Loop Implementation   
;Show the '*' 80 times
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV CX,80
    MOV AH, 2
    
    MOV DL, '*'
    
    TOP:  
    
    INT 21H
    LOOP TOP
    
    
END MAIN