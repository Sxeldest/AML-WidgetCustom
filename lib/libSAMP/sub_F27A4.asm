; =========================================================
; Game Engine Function: sub_F27A4
; Address            : 0xF27A4 - 0xF27EE
; =========================================================

F27A4:  PUSH            {R4-R7,LR}
F27A6:  ADD             R7, SP, #0xC
F27A8:  PUSH.W          {R8}
F27AC:  MOV             R5, R1
F27AE:  LDRB            R1, [R0,#0x14]
F27B0:  DMB.W           ISH
F27B4:  LSLS            R1, R1, #0x1F
F27B6:  BNE             loc_F27E8
F27B8:  LDRD.W          R6, R4, [R0,#8]
F27BC:  CMP             R6, R4
F27BE:  BEQ             loc_F27E8
F27C0:  MOV             R8, R2
F27C2:  LDR             R0, [R6]
F27C4:  LDRB            R1, [R0,#8]
F27C6:  DMB.W           ISH
F27CA:  LSLS            R1, R1, #0x1F
F27CC:  BEQ             loc_F27E2
F27CE:  LDRB            R1, [R0,#9]
F27D0:  DMB.W           ISH
F27D4:  LSLS            R1, R1, #0x1F
F27D6:  BNE             loc_F27E2
F27D8:  LDR             R1, [R0]
F27DA:  MOV             R2, R8
F27DC:  LDR             R3, [R1,#0x10]
F27DE:  MOV             R1, R5
F27E0:  BLX             R3
F27E2:  ADDS            R6, #8
F27E4:  CMP             R6, R4
F27E6:  BNE             loc_F27C2
F27E8:  POP.W           {R8}
F27EC:  POP             {R4-R7,PC}
