		AREA BRANCH_INS,CODE,READONLY
			
		ENTRY
		
		MOV R0,#0X0FFFFFFF ;R0 =0X0FFFFFFF
		MOV R1,#0X1FFFFFFF ;R1 =0X1FFFFFFF
LOOP
		ADDS R0,R1         ;R0 = R0+R1
		
		BVC LOOP           ;It will execute the loop when overflow flag is clear in CPSR register
LOOP2   B LOOP2            ;BRANCH ALWAYS
		
		END