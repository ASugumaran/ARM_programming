		AREA BRANCH_INS,CODE,READONLY
			
		ENTRY
		
		MOV R0,#10 ;r0 = 0x0000000a
		MOV R1,#1  ;r1 = 0x00000001
LOOP 
		SUBS R0,R1 ;r0 = r0-r1
		
		BAL LOOP   ;Branch always call LOOP continuously
		
		END