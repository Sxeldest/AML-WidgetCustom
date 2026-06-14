; =========================================================
; Game Engine Function: sub_11AF9A
; Address            : 0x11AF9A - 0x11AFB4
; =========================================================

11AF9A:  PUSH            {R4,R5,R7,LR}
11AF9C:  ADD             R7, SP, #8
11AF9E:  LDR             R4, [R0,#4]
11AFA0:  LDR             R5, [R1]
11AFA2:  MOV             R0, R4
11AFA4:  MOV             R1, R5
11AFA6:  BL              sub_11A698
11AFAA:  LDR             R1, [R4,#0xC]
11AFAC:  MOV             R0, R5
11AFAE:  POP.W           {R4,R5,R7,LR}
11AFB2:  BX              R1
