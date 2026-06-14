; =========================================================
; Game Engine Function: sub_1050D4
; Address            : 0x1050D4 - 0x1050FC
; =========================================================

1050D4:  PUSH            {R4,R5,R7,LR}
1050D6:  ADD             R7, SP, #8
1050D8:  MOV             R4, R1
1050DA:  LDRD.W          R1, R2, [R0,#8]
1050DE:  MOV             R5, R0
1050E0:  MOV             R0, R4
1050E2:  BL              sub_FFB40
1050E6:  LDR             R0, [R5,#0x10]
1050E8:  MOV             R1, R4
1050EA:  BL              sub_FE074
1050EE:  LDRD.W          R1, R2, [R5,#0x14]
1050F2:  MOV             R0, R4
1050F4:  POP.W           {R4,R5,R7,LR}
1050F8:  B.W             sub_FFB40
