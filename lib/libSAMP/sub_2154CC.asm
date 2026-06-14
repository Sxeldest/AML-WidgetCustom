; =========================================================
; Game Engine Function: sub_2154CC
; Address            : 0x2154CC - 0x2154F2
; =========================================================

2154CC:  PUSH            {R4,R5,R7,LR}
2154CE:  ADD             R7, SP, #8
2154D0:  MOV             R5, R0
2154D2:  LDR             R0, [R0]
2154D4:  MOV             R4, R1
2154D6:  LDR             R2, [R0,#0x10]
2154D8:  MOV             R0, R5
2154DA:  BLX             R2
2154DC:  LDRB            R0, [R5,#5]
2154DE:  CMP             R0, #1
2154E0:  IT EQ
2154E2:  POPEQ           {R4,R5,R7,PC}
2154E4:  LDR             R0, [R5]
2154E6:  MOV             R1, R4
2154E8:  LDR             R2, [R0,#0x14]
2154EA:  MOV             R0, R5
2154EC:  POP.W           {R4,R5,R7,LR}
2154F0:  BX              R2
