; =========================================================
; Game Engine Function: sub_11FE98
; Address            : 0x11FE98 - 0x11FEC4
; =========================================================

11FE98:  PUSH            {R4,R6,R7,LR}
11FE9A:  ADD             R7, SP, #8
11FE9C:  MOV             R4, R0
11FE9E:  LDR             R0, [R1,#0x10]
11FEA0:  CBZ             R0, loc_11FEAE
11FEA2:  CMP             R1, R0
11FEA4:  BEQ             loc_11FEB4
11FEA6:  LDR             R1, [R0]
11FEA8:  LDR             R1, [R1,#8]
11FEAA:  BLX             R1
11FEAC:  B               loc_11FEB0
11FEAE:  MOVS            R0, #0
11FEB0:  STR             R0, [R4,#0x10]
11FEB2:  B               loc_11FEC0
11FEB4:  STR             R4, [R4,#0x10]
11FEB6:  LDR             R0, [R1,#0x10]
11FEB8:  LDR             R1, [R0]
11FEBA:  LDR             R2, [R1,#0xC]
11FEBC:  MOV             R1, R4
11FEBE:  BLX             R2
11FEC0:  MOV             R0, R4
11FEC2:  POP             {R4,R6,R7,PC}
