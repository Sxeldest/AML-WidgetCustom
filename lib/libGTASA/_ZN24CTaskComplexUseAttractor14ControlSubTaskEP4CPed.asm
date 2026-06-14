; =========================================================
; Game Engine Function: _ZN24CTaskComplexUseAttractor14ControlSubTaskEP4CPed
; Address            : 0x4EE3F8 - 0x4EE430
; =========================================================

4EE3F8:  PUSH            {R4,R6,R7,LR}
4EE3FA:  ADD             R7, SP, #8
4EE3FC:  MOV             R4, R0
4EE3FE:  LDR             R0, [R4,#0xC]
4EE400:  CMP             R0, #0
4EE402:  ITT NE
4EE404:  LDRNE           R0, [R0,#8]
4EE406:  CMPNE           R0, #0
4EE408:  BEQ             loc_4EE42C
4EE40A:  LDRB.W          R2, [R0,#0x3A]
4EE40E:  AND.W           R2, R2, #7
4EE412:  CMP             R2, #4
4EE414:  BNE             loc_4EE42C
4EE416:  LDRB.W          R0, [R0,#0x145]
4EE41A:  LSLS            R0, R0, #0x1D
4EE41C:  BPL             loc_4EE42C
4EE41E:  LDR             R0, [R4,#8]
4EE420:  MOVS            R3, #0
4EE422:  LDR             R2, [R0]
4EE424:  LDR.W           R12, [R2,#0x1C]
4EE428:  MOVS            R2, #0
4EE42A:  BLX             R12
4EE42C:  LDR             R0, [R4,#8]
4EE42E:  POP             {R4,R6,R7,PC}
