		AREA RESET,CODE,READONLY
		ENTRY
		LDR R1,=MAT ;Assigning MAT address to R1 
		MOV R0,#3   ;R0 = 3
		MOV R3,#8   ;R3 = 8
		
LOOP    LDR R2,[R1],#4

        ;if big means C will set, if small means N will set, if equal means z will set
		CMP R2,R3  
		
		;BHS - Branch if higher for unsigned number,when N bit set it will execute the loop
		BHS J   
		MOV R3,R2 ;if N bit set, R3 = R2 value will update 
J				
        SUBS R0,#1 ;R0 = R0-1
		BNE 	LOOP	;it will exit the loop when zero set in CPSR
L		B	    L       ;infinity loop
    
MAT  	DCD 0X00000002,0X00000001,0X00000003
		END