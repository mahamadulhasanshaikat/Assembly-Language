;STRING PRINING
.MODEL SMALL 
.STACK 100H

.DATA

UNIVERSITY DB 'SOUTHEAST UNIVRSITY$'
CAMPUS DB 'PERMANENT CAMPUS$'
MHS DB 'MD MAHMADUL HASAN SHAIKAT$'

.CODE

MAIN PROC
    
    MOV AX,@DATA ;DATA SEGMENT INITIALIZATION
    MOV DS,AX
    
    LEA DX, UNIVERSITY ;LOAD EFFECTIVE ADDRESS
    MOV AH, 9          ;OUTPUT FUNCTION FOR MESSAGE
    INT 21H
    
    MOV AH,2           ;OUTPUT FUNCTION
    MOV DL,10          ;NEW LINE IN DECEIMAL
    INT 21H
    MOV DL,0DH         ;CARRIAGE RETURN IN HEXA
    INT 21H
    
    LEA DX,CAMPUS      ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H            ;OUTPUT FUNCTION FOR ADDRESS
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,0DH
    INT 21H
    
    LEA DX, MHS
    MOV AH,9
    INT 21H
    
    
END MAIN
