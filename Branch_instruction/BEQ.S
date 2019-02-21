		AREA BRANCH_INS,CODE,READONLY
			
		ENTRY
		
		MOV R0,#100  ;r0 = 0x00000064
		MOV R1,#100  ;r1 = 0x00000064
LOOP
		SUBS R0,R1   ;r0 = r0-r1
		 
		BEQ LOOP     ;it will exit when the negative bit is set in CPSR register
		
		END