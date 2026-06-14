; =========================================================
; Game Engine Function: sub_69A58
; Address            : 0x69A58 - 0x69A82
; =========================================================

69A58:  PUSH            {R4-R7,LR}
69A5A:  ADD             R7, SP, #0xC
69A5C:  PUSH.W          {R11}
69A60:  SUB             SP, SP, #8
69A62:  MOV             R5, R2
69A64:  MOV             R4, R1
69A66:  MOV             R6, R0
69A68:  BL              sub_68E3C
69A6C:  CBZ             R0, loc_69A7A
69A6E:  LDR             R1, [R6,#4]
69A70:  MOV             R3, R4
69A72:  LDR             R2, [R6,#0x40]
69A74:  STR             R5, [SP,#0x18+var_18]
69A76:  BL              sub_69070
69A7A:  ADD             SP, SP, #8
69A7C:  POP.W           {R11}
69A80:  POP             {R4-R7,PC}
