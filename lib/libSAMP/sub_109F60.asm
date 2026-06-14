; =========================================================
; Game Engine Function: sub_109F60
; Address            : 0x109F60 - 0x109FBE
; =========================================================

109F60:  PUSH            {R4,R6,R7,LR}
109F62:  ADD             R7, SP, #8
109F64:  MOV             R4, R0
109F66:  LDR             R0, [R0,#0xC]
109F68:  CBZ             R0, loc_109FBA
109F6A:  LDR             R0, [R4,#8]
109F6C:  BL              sub_108354
109F70:  CBZ             R0, loc_109FBA
109F72:  LDR             R0, [R4,#0xC]
109F74:  LDRH            R1, [R0,#0x26]
109F76:  SUB.W           R0, R1, #0x248
109F7A:  CMP             R0, #0x1B
109F7C:  BHI             loc_109F8E
109F7E:  MOVS            R2, #1
109F80:  LSL.W           R0, R2, R0
109F84:  MOVS            R2, #0xDC00081
109F8A:  TST             R0, R2
109F8C:  BNE             loc_109F9C
109F8E:  MOVW            R0, #0x1B3
109F92:  CMP             R1, R0
109F94:  IT NE
109F96:  CMPNE.W         R1, #0x1C2
109F9A:  BNE             loc_109FA0
109F9C:  MOVS            R0, #1
109F9E:  POP             {R4,R6,R7,PC}
109FA0:  LDR             R3, =(unk_B3CC4 - 0x109FA8)
109FA2:  MOVS            R2, #0
109FA4:  ADD             R3, PC; unk_B3CC4
109FA6:  LDR             R0, [R3,R2]
109FA8:  CMP             R0, R1
109FAA:  BEQ             loc_109FB6
109FAC:  ADDS            R2, #4
109FAE:  MOVS            R0, #0
109FB0:  CMP             R2, #0x28 ; '('
109FB2:  BNE             loc_109FA6
109FB4:  B               locret_109F9E
109FB6:  CMP             R2, #0x28 ; '('
109FB8:  BNE             loc_109F9C
109FBA:  MOVS            R0, #0
109FBC:  POP             {R4,R6,R7,PC}
