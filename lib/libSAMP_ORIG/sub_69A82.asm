; =========================================================
; Game Engine Function: sub_69A82
; Address            : 0x69A82 - 0x69AAC
; =========================================================

69A82:  PUSH            {R4-R7,LR}
69A84:  ADD             R7, SP, #0xC
69A86:  PUSH.W          {R11}
69A8A:  SUB             SP, SP, #8
69A8C:  MOV             R5, R2
69A8E:  MOV             R4, R1
69A90:  MOV             R6, R0
69A92:  BL              sub_68E3C
69A96:  CBZ             R0, loc_69AA4
69A98:  LDR             R1, [R6,#4]
69A9A:  MOV             R3, R4
69A9C:  LDR             R2, [R6,#0x44]
69A9E:  STR             R5, [SP,#0x18+var_18]
69AA0:  BL              sub_69070
69AA4:  ADD             SP, SP, #8
69AA6:  POP.W           {R11}
69AAA:  POP             {R4-R7,PC}
