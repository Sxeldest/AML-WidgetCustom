; =========================================================
; Game Engine Function: sub_12AC7E
; Address            : 0x12AC7E - 0x12ACA6
; =========================================================

12AC7E:  PUSH            {R4-R7,LR}
12AC80:  ADD             R7, SP, #0xC
12AC82:  PUSH.W          {R11}
12AC86:  LDR             R6, [R0,#4]
12AC88:  MOV             R0, R3
12AC8A:  MOV             R4, R2
12AC8C:  MOV             R5, R1
12AC8E:  BL              sub_165778
12AC92:  MOV             R3, R0
12AC94:  MOV             R0, R6
12AC96:  MOV             R1, R5
12AC98:  MOV             R2, R4
12AC9A:  POP.W           {R11}
12AC9E:  POP.W           {R4-R7,LR}
12ACA2:  B.W             sub_173720
