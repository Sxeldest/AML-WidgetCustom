; =========================================================
; Game Engine Function: sub_10EB3C
; Address            : 0x10EB3C - 0x10EB5C
; =========================================================

10EB3C:  PUSH            {R4,R6,R7,LR}
10EB3E:  ADD             R7, SP, #8
10EB40:  SUB             SP, SP, #0x10
10EB42:  MOV             R4, R0
10EB44:  MOVS            R0, #0
10EB46:  STR             R0, [R4,#0x10]
10EB48:  STR             R2, [SP,#0x18+var_C]
10EB4A:  STRD.W          R3, R1, [SP,#0x18+var_14]
10EB4E:  ADD             R1, SP, #0x18+var_14
10EB50:  MOV             R0, R4
10EB52:  BL              sub_10F7EC
10EB56:  MOV             R0, R4
10EB58:  ADD             SP, SP, #0x10
10EB5A:  POP             {R4,R6,R7,PC}
