; =========================================================
; Game Engine Function: sub_10659A
; Address            : 0x10659A - 0x1065BA
; =========================================================

10659A:  PUSH            {R4,R5,R7,LR}
10659C:  ADD             R7, SP, #8
10659E:  MOV             R5, R0
1065A0:  LDR             R0, [R0,#8]
1065A2:  MOV             R4, R1
1065A4:  LDR             R1, [R0]
1065A6:  LDR             R2, [R1,#0x10]
1065A8:  MOV             R1, R4
1065AA:  BLX             R2
1065AC:  LDRD.W          R1, R2, [R5,#0xC]
1065B0:  MOV             R0, R4
1065B2:  POP.W           {R4,R5,R7,LR}
1065B6:  B.W             sub_FFB40
