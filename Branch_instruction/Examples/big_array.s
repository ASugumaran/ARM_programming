		AREA RESET,CODE,READONLY
		ENTRY
		LDR R1,=MAT ;Assigning MAT address to R1 
		MOV R0,#5   ;R0 = 5
		MOV R3,#0   ;R3 = 0
		
LOOP    LDR R2,[R1],#4

        ;if big means C will set, if small means N will set, if equal means z will set
		CMP R2,R3  
		
		;BLO - Branch below for unsigned number ,if carry bit is set it will get into the loop, then N and Z need to be zero
		BLO J   
		MOV R3,R2 ;if C bit set, R3 = R2 value will update 
J				
        SUBS R0,#1 ;R0 = R0-1
		BNE 	LOOP	;it will exit the loop when zero set in CPSR
L		B	    L       ;infinity loop
    
MAT  	DCD 0X00000001,0X00000008,0X00000002,0X00000006,0X00000003
		END