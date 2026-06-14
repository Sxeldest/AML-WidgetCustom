; =========================================================
; Game Engine Function: sub_10D0FC
; Address            : 0x10D0FC - 0x10D124
; =========================================================

10D0FC:  PUSH            {R4-R7,LR}
10D0FE:  ADD             R7, SP, #0xC
10D100:  PUSH.W          {R11}
10D104:  MOV             R4, R2
10D106:  MOV             R5, R1
10D108:  MOV             R6, R0
10D10A:  BL              sub_10D128
10D10E:  LDR             R0, =(unk_263230 - 0x10D11A)
10D110:  MOV             R1, R6
10D112:  MOV             R2, R5
10D114:  MOV             R3, R4
10D116:  ADD             R0, PC; unk_263230
10D118:  POP.W           {R11}
10D11C:  POP.W           {R4-R7,LR}
10D120:  B.W             sub_10D1F4
