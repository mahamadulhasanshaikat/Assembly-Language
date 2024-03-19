;ADDITION OF TWO NUMBERS 
.MODEL SMALL
.STACK 100H  
                                  ;2+3 = 5? = 53 ASCII
                                  ;2 = 50 ASCII
                                  ;3 = 51 ASCII 
                                  ;2 + 3 = (50 + 51) ASCII = 101 = e
                                  ;101 - 53 = 48

                                  
.CODE

MAIN PROC

    MOV AH,1
    INT 21H
       
    MOV CL, AL
     
    INT 21H       
    MOV BL, AL 
          
    ADD CL,BL  ;CL=CL+BL
             
    SUB CL,48  ;
          
    MOV AH, 2           
    MOV DL, CL ;OUTPUT
    INT 21H
    
END MAIN