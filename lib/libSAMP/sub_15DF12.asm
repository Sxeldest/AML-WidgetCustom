; =========================================================
; Game Engine Function: sub_15DF12
; Address            : 0x15DF12 - 0x15DF2E
; =========================================================

15DF12:  PUSH            {R4,R6,R7,LR}
15DF14:  ADD             R7, SP, #8
15DF16:  MOV             R4, R0
15DF18:  LDR             R0, [R0,#8]
15DF1A:  MOVS            R1, #0
15DF1C:  BL              sub_164CA0
15DF20:  MOV             R2, R0
15DF22:  LDR             R0, [R4,#8]
15DF24:  MOV             R3, R1
15DF26:  POP.W           {R4,R6,R7,LR}
15DF2A:  B.W             sub_164B90
