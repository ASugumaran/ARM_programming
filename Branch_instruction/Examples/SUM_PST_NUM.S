		AREA RESET,CODE,READONLY
		ENTRY
		LDR R1,=MAT ;Assigning MAT address to R1 
		MOV R0,#5   ;R0 = 5
		MOV R3,#0   ;R3 = 0
		
LOOP    LDR R2,[R1],#4 ;R1 register had a value that store in R2 register

		CMP R2,#0      ;Comparing R2's value and 0, Checking that is positive value or not
		BMI J          ;When it will exit the loop only if the N bit is set 
		ADD R3,R3,#1   ;R3 = R3 + 1
J
        SUBS R0,#1      ;R0 = R0-1
		BNE 	LOOP	;it will exit the loop when (Z)zero set in CPSR
L		B	    L       ;infinity loop
    
	   ;GIVEN MATRIX 
MAT  	DCD 0X00000001,0X00000002,0X00000003,0X00000004,0X80000005
		END