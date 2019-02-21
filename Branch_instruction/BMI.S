		AREA BRANCH_INS,CODE,READONLY
			
		ENTRY
		
		MOV R0,#0X8000000A ; r0 = 0x8000000a
		MOV R1,#1          ; r1 = 0x00000001
LOOP
		SUBS R0,R1         ; r0 = r0-r1
		
		BMI LOOP           ;it will execute the loop when the negative bit is set in CPSR register
		
		END