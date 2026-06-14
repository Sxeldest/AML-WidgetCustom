; =========================================================
; Game Engine Function: sub_F2FE6
; Address            : 0xF2FE6 - 0xF3008
; =========================================================

F2FE6:  PUSH            {R7,LR}
F2FE8:  MOV             R7, SP
F2FEA:  LDR             R3, [R0,#0xC]
F2FEC:  LDRD.W          LR, R12, [R0,#4]
F2FF0:  LDR             R2, [R2]
F2FF2:  ADD.W           R0, LR, R3,ASR#1
F2FF6:  LDR             R1, [R1]
F2FF8:  LSLS            R3, R3, #0x1F
F2FFA:  ITT NE
F2FFC:  LDRNE           R3, [R0]
F2FFE:  LDRNE.W         R12, [R3,R12]
F3002:  POP.W           {R7,LR}
F3006:  BX              R12
