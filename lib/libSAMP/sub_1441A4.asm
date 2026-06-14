; =========================================================
; Game Engine Function: sub_1441A4
; Address            : 0x1441A4 - 0x1441E8
; =========================================================

1441A4:  PUSH            {R4-R7,LR}
1441A6:  ADD             R7, SP, #0xC
1441A8:  PUSH.W          {R11}
1441AC:  MOV             R4, R1
1441AE:  LDRB            R1, [R0,#0x14]
1441B0:  DMB.W           ISH
1441B4:  LSLS            R1, R1, #0x1F
1441B6:  BNE             loc_1441E2
1441B8:  LDRD.W          R5, R6, [R0,#8]
1441BC:  CMP             R5, R6
1441BE:  BEQ             loc_1441E2
1441C0:  LDR             R0, [R5]
1441C2:  LDRB            R1, [R0,#8]
1441C4:  DMB.W           ISH
1441C8:  LSLS            R1, R1, #0x1F
1441CA:  BEQ             loc_1441DE
1441CC:  LDRB            R1, [R0,#9]
1441CE:  DMB.W           ISH
1441D2:  LSLS            R1, R1, #0x1F
1441D4:  BNE             loc_1441DE
1441D6:  LDR             R1, [R0]
1441D8:  LDR             R2, [R1,#0x10]
1441DA:  MOV             R1, R4
1441DC:  BLX             R2
1441DE:  ADDS            R5, #8
1441E0:  B               loc_1441BC
1441E2:  POP.W           {R11}
1441E6:  POP             {R4-R7,PC}
