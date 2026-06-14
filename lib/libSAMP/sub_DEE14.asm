; =========================================================
; Game Engine Function: sub_DEE14
; Address            : 0xDEE14 - 0xDEE6E
; =========================================================

DEE14:  PUSH            {R4-R7,LR}
DEE16:  ADD             R7, SP, #0xC
DEE18:  PUSH.W          {R11}
DEE1C:  MOV             R2, R0
DEE1E:  LDR             R0, =(unk_91CE0 - 0xDEE2A)
DEE20:  MOV             R5, R1
DEE22:  LDRH.W          R1, [R1,#9]
DEE26:  ADD             R0, PC; unk_91CE0
DEE28:  LDR.W           R4, [R5],#0xB
DEE2C:  AND.W           R1, R1, #0xF
DEE30:  LDR             R6, [R7,#arg_0]
DEE32:  SUBS            R3, R4, R3
DEE34:  LDRB            R0, [R0,R1]
DEE36:  IT CC
DEE38:  MOVCC           R3, #0
DEE3A:  LSRS.W          R1, R3, R0
DEE3E:  SUB.W           R4, R3, R1
DEE42:  BEQ             loc_DEE4E
DEE44:  MOV             R0, R2
DEE46:  MOV             R2, R5
DEE48:  BL              sub_DD992
DEE4C:  MOV             R2, R0
DEE4E:  MOV             R0, R6
DEE50:  MOV             R1, R2
DEE52:  BL              sub_DEE74
DEE56:  CBZ             R4, loc_DEE68
DEE58:  MOV             R1, R4
DEE5A:  MOV             R2, R5
DEE5C:  POP.W           {R11}
DEE60:  POP.W           {R4-R7,LR}
DEE64:  B.W             sub_DD992
DEE68:  POP.W           {R11}
DEE6C:  POP             {R4-R7,PC}
