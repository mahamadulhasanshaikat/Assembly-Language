;STRING PRINTING

.MODEL SMALL
.STACK 100H 

.DATA

UNIVERSITY DB 'DAFFODIL INTERNATIONAL UNIVERSITY$'
CAMPUS DB 'PERMANENT CAMPUS$'
    
.CODE
    
MAIN PROC
    
    MOV AX, @DATA ;DATA SEGMENT INITIALIZATION
    MOV DS, AX
    
    
    LEA DX, UNIVERSITY ;LOAD EFFECTIVE ADDRESS
    MOV AH,9       ;OUTPUT FUNCTION FOR MESSAGE
    INT 21H
                                        
                                                               
    MOV AH, 2  ;OUTPUT FUNCTION
    MOV DL, 10 ;New Line in Deceimal
    INT 21H                  
    MOV DL, 0DH ;Carriage Return in Hexa
    INT 21H                             
    
 
    LEA DX, CAMPUS   ;LOAD EFFECTIVE ADDRESS
    MOV AH,9       ;OUTPUT FUNCTION FOR MESSAGE
    INT 21H
                         
END MAIN