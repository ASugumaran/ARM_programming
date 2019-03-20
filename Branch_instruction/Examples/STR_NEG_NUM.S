;Store the negative number in one register
		AREA RESET,CODE,READONLY
		ENTRY
		LDR R1,=MAT_1 ;Assigning MAT1 address to R1 
		LDR R2,=MAT_2 ;Assigning MAT2 address to R2 
		MOV R0,#5    ;R0 = 5
		MOV R3,#0    ;R3 = 0
		
LOOP    LDR R4,[R1],#4 ;R1 register had a value that store in R4 register

		CMN R4,#0      ;Comparing R4's value and 0, Checking that is negative value or not
		BPL J          ;When it will execute the loop only if the N bit is set 
		STR R4,[R2],#4 ;R4 register had a value that store in R2 register
J
        SUBS R0,#1      ;R0 = R0-1
		BNE 	LOOP	;it will exit the loop when (Z)zero set in CPSR
L		B	    L       ;infinity loop
    
	   ;GIVEN MATRIX 
MAT_1	DCD 0X8FFFFFF1,0X8FFFFFF2,0X00000FFF,0X00000000,0X8FFFFFF3
	
		AREA MATRIX2,DATA,READWRITE
MAT_2   DCD 0
		END
