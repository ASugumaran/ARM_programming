		AREA BRANCH_INS,CODE,READONLY
			
		ENTRY
		
		MOV R0,#0X0000000A ; r0 = 0x0000000a
		MOV R1,#1          ; r1 = 0x00000001
LOOP
		SUBS R0,R1         ; r0 = r0 - r1
		
		BLS LOOP           ;it will EXECUTE the loop when the NEGATIVE OR ZERO bit is set in CPSR register
L		B		L		   ;BRANCH ALWAYS		
		
		END