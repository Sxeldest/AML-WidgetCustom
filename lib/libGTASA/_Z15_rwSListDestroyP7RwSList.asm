; =========================================================
; Game Engine Function: _Z15_rwSListDestroyP7RwSList
; Address            : 0x1E2BD0 - 0x1E2C0A
; =========================================================

1E2BD0:  PUSH            {R4,R6,R7,LR}
1E2BD2:  ADD             R7, SP, #8
1E2BD4:  MOV             R4, R0
1E2BD6:  LDR             R0, [R4]
1E2BD8:  CMP             R0, #0
1E2BDA:  ITT NE
1E2BDC:  LDRNE           R1, [R4,#8]
1E2BDE:  CMPNE           R1, #0
1E2BE0:  BEQ             loc_1E2BF6
1E2BE2:  LDR             R1, =(RwEngineInstance_ptr - 0x1E2BE8)
1E2BE4:  ADD             R1, PC; RwEngineInstance_ptr
1E2BE6:  LDR             R1, [R1]; RwEngineInstance
1E2BE8:  LDR             R1, [R1]
1E2BEA:  LDR.W           R1, [R1,#0x130]
1E2BEE:  BLX             R1
1E2BF0:  MOVS            R0, #0
1E2BF2:  STR             R0, [R4,#8]
1E2BF4:  STR             R0, [R4]
1E2BF6:  LDR             R0, =(RwEngineInstance_ptr - 0x1E2BFC)
1E2BF8:  ADD             R0, PC; RwEngineInstance_ptr
1E2BFA:  LDR             R0, [R0]; RwEngineInstance
1E2BFC:  LDR             R0, [R0]
1E2BFE:  LDR.W           R1, [R0,#0x130]
1E2C02:  MOV             R0, R4
1E2C04:  BLX             R1
1E2C06:  MOVS            R0, #1
1E2C08:  POP             {R4,R6,R7,PC}
