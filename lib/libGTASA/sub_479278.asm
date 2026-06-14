; =========================================================
; Game Engine Function: sub_479278
; Address            : 0x479278 - 0x4792AE
; =========================================================

479278:  PUSH            {R4,R6,R7,LR}
47927A:  ADD             R7, SP, #8
47927C:  MOV             R4, R0
47927E:  LDR             R0, [R4,#0x18]
479280:  LDR             R2, [R0]
479282:  ADDS            R3, R2, #1
479284:  STR             R3, [R0]
479286:  STRB            R1, [R2]
479288:  LDR             R1, [R0,#4]
47928A:  SUBS            R1, #1
47928C:  STR             R1, [R0,#4]
47928E:  IT NE
479290:  POPNE           {R4,R6,R7,PC}
479292:  LDR             R1, [R0,#0xC]
479294:  MOV             R0, R4
479296:  BLX             R1
479298:  CBZ             R0, loc_47929C
47929A:  POP             {R4,R6,R7,PC}
47929C:  LDR             R0, [R4]
47929E:  MOVS            R1, #0x18
4792A0:  STR             R1, [R0,#0x14]
4792A2:  LDR             R0, [R4]
4792A4:  LDR             R1, [R0]
4792A6:  MOV             R0, R4
4792A8:  POP.W           {R4,R6,R7,LR}
4792AC:  BX              R1
