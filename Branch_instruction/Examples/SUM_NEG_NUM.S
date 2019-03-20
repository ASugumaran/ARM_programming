;counting how many negative number is there!
		AREA RESET,CODE,READONLY
		ENTRY
		LDR R1,=MAT ;Assigning MAT address to R1 
		MOV R0,#5   ;R0 = 5
		MOV R3,#0   ;R3 = 0
		
LOOP    LDR R2,[R1],#4 ;R1 register had a value that store in R2 register

		CMN R2,#0      ;Comparing R2's value and 0, Checking that is negative value or not
		BPL J          ;When it will execute the loop only if the N bit is set 
		ADD R3,R3,#1   ;R3 = R3 + 1
J
        SUBS R0,#1      ;R0 = R0-1
		BNE 	LOOP	;it will exit the loop when (Z)zero set in CPSR
L		B	    L       ;infinity loop
    
	   ;GIVEN MATRIX 
MAT  	DCD 0X80000FF0,0X80000FF3,0X00000FFF,0X00000000,0X800000FF
		END
