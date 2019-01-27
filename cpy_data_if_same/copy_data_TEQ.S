		AREA COPY,CODE,READONLY
		ENTRY
		MOV R6,#4    ;R6 = 4
		LDR R1,=MAT1 ;MAT1 address store to R1
		LDR R2,=MAT2 ;MAT2 address store to R2
		LDR R3,=MAT3 ;MAT3 address store to R3
L1	
		LDR R0,[R1],#4 ;R1 register's current address had value store to R0 ,=> after that #4(means fullword) move that address to next value
		LDR R7,[R2],#4 ;R2 register's current address had value store to R7 ,=> after that #4(means fullword) move that address to next value
		
		TEQ R0,R7  ;TEQ(test equal) it check the value in R0 and R7 ,then Z will set in CPSR register
		BNE    	LOOP ;if z set means it will go inside LOOP
		
		STR R0,[R3],#4 ;R0 value store to R3
		SUBS R6,#1  ;R6 = R6 - 1
		BNE L1      ;if R6 = 0 means it wi exit from that loop 
LOOP
L		B  		L		;infinity loop
MAT1	DCD 0X11111111,0X22222222,0X33333633,0X44444444
MAT2    DCD 0X11111111,0X22222222,0X33333333,0X44444444
		AREA RESET ,DATA,READWRITE
MAT3	DCD 0
		END
