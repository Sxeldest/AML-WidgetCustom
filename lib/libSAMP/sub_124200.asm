; =========================================================
; Game Engine Function: sub_124200
; Address            : 0x124200 - 0x124240
; =========================================================

124200:  PUSH            {R7,LR}
124202:  MOV             R7, SP
124204:  LDR             R0, =(byte_263C30 - 0x12420A)
124206:  ADD             R0, PC; byte_263C30
124208:  LDRB            R0, [R0]
12420A:  DMB.W           ISH
12420E:  LSLS            R0, R0, #0x1F
124210:  IT NE
124212:  POPNE           {R7,PC}
124214:  LDR             R0, =(byte_263C30 - 0x12421A)
124216:  ADD             R0, PC; byte_263C30 ; __guard *
124218:  BLX             j___cxa_guard_acquire
12421C:  CBZ             R0, locret_12423E
12421E:  LDR             R1, =(unk_263C18 - 0x12422A)
124220:  MOVS            R3, #0
124222:  LDR             R0, =(sub_10CC6C+1 - 0x12422C)
124224:  LDR             R2, =(off_22A540 - 0x12422E)
124226:  ADD             R1, PC; unk_263C18 ; obj
124228:  ADD             R0, PC; sub_10CC6C ; lpfunc
12422A:  ADD             R2, PC; off_22A540 ; lpdso_handle
12422C:  STR             R3, [R1,#(dword_263C28 - 0x263C18)]
12422E:  BLX             __cxa_atexit
124232:  LDR             R0, =(byte_263C30 - 0x124238)
124234:  ADD             R0, PC; byte_263C30
124236:  POP.W           {R7,LR}
12423A:  B.W             sub_2242B0
12423E:  POP             {R7,PC}
