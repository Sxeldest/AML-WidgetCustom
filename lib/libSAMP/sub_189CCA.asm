; =========================================================
; Game Engine Function: sub_189CCA
; Address            : 0x189CCA - 0x189D32
; =========================================================

189CCA:  PUSH            {R7,LR}
189CCC:  MOV             R7, SP
189CCE:  MOVS            R1, #0
189CD0:  ADDS            R2, R0, R1
189CD2:  LDRD.W          R12, R3, [R2,#0x6C]
189CD6:  LDR.W           LR, [R2,#0x74]
189CDA:  MOVS            R2, #0
189CDC:  CMP             R3, R12
189CDE:  SUB.W           R3, R3, R12
189CE2:  IT CC
189CE4:  RSBCC.W         R2, LR, #0
189CE8:  CMP             R3, R2
189CEA:  BNE             loc_189D2C
189CEC:  ADDS            R1, #0x10
189CEE:  CMP             R1, #0x40 ; '@'
189CF0:  BNE             loc_189CD0
189CF2:  LDR             R2, [R0,#0x20]
189CF4:  MOVS            R1, #1
189CF6:  CBNZ            R2, loc_189D2E
189CF8:  LDR             R2, [R0,#0x50]
189CFA:  CBNZ            R2, loc_189D2E
189CFC:  ADD.W           R12, R0, #0x10
189D00:  MOVS            R3, #0
189D02:  LDM.W           R12, {R1,R2,R12}
189D06:  CMP             R2, R1
189D08:  SUB.W           R2, R2, R1
189D0C:  IT CC
189D0E:  RSBCC.W         R3, R12, #0
189D12:  CMP             R2, R3
189D14:  MOV.W           R1, #1
189D18:  ITT EQ
189D1A:  LDREQ           R2, [R0,#4]
189D1C:  CMPEQ           R2, #0
189D1E:  BNE             loc_189D2E
189D20:  LDR.W           R1, [R0,#0xAC]
189D24:  CMP             R1, #0
189D26:  IT NE
189D28:  MOVNE           R1, #1
189D2A:  B               loc_189D2E
189D2C:  MOVS            R1, #1
189D2E:  MOV             R0, R1
189D30:  POP             {R7,PC}
