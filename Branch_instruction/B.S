		AREA BRANCH_INS,CODE,READONLY
			
		ENTRY
		
		MOV R0,#0X0000000F ; r0= 0x0000000f
		MOV R1,#1          ; r1= 0x00000001
LOOP
		SUBS R0,R1         ;r0=r0-r1
		
		B LOOP             ;it will call LOOP continuously
		
		END