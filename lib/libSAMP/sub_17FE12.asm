; =========================================================
; Game Engine Function: sub_17FE12
; Address            : 0x17FE12 - 0x17FE74
; =========================================================

17FE12:  PUSH            {R4-R7,LR}
17FE14:  ADD             R7, SP, #0xC
17FE16:  PUSH.W          {R11}
17FE1A:  LDR.W           R1, [R0,#0x7BC]
17FE1E:  ADDW            R5, R0, #0x7BC
17FE22:  LDR.W           R2, [R0,#0x7C8]
17FE26:  CMP             R1, R2
17FE28:  BEQ             loc_17FE66
17FE2A:  MOV             R4, R0
17FE2C:  MOVS            R6, #0
17FE2E:  LDRB.W          R0, [R1,#0x38]
17FE32:  CBZ             R0, loc_17FE66
17FE34:  LDR             R0, [R1,#0x30]; void *
17FE36:  LDR             R1, [R1,#0x3C]
17FE38:  STR             R1, [R5]
17FE3A:  CBZ             R0, loc_17FE48
17FE3C:  BLX             j__ZdaPv; operator delete[](void *)
17FE40:  LDR.W           R1, [R4,#0x7BC]
17FE44:  LDR.W           R2, [R4,#0x7C8]
17FE48:  LDR.W           R0, [R4,#0x7C4]
17FE4C:  CMP             R1, R2
17FE4E:  LDR.W           R3, [R4,#0x7CC]
17FE52:  STRB.W          R6, [R0,#0x38]
17FE56:  ADD.W           R3, R3, #1
17FE5A:  LDR             R0, [R0,#0x3C]
17FE5C:  STR.W           R3, [R4,#0x7CC]
17FE60:  STR.W           R0, [R4,#0x7C4]
17FE64:  BNE             loc_17FE2E
17FE66:  MOV             R0, R5
17FE68:  POP.W           {R11}
17FE6C:  POP.W           {R4-R7,LR}
17FE70:  B.W             sub_182F62
