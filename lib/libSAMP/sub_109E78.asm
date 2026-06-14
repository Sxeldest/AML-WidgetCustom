; =========================================================
; Game Engine Function: sub_109E78
; Address            : 0x109E78 - 0x109F04
; =========================================================

109E78:  PUSH            {R4,R5,R7,LR}
109E7A:  ADD             R7, SP, #8
109E7C:  MOV             R4, R0
109E7E:  LDR             R0, [R0,#0xC]
109E80:  CBZ             R0, loc_109EE8
109E82:  BL              sub_10837C
109E86:  SUBS            R0, #2
109E88:  CMP             R0, #6
109E8A:  BCS             loc_109E98
109E8C:  UXTB            R0, R0
109E8E:  MOVS            R1, #0x35 ; '5'
109E90:  LSR.W           R0, R1, R0
109E94:  LSLS            R0, R0, #0x1F
109E96:  BNE             loc_109EE8
109E98:  LDR             R0, [R4,#0xC]
109E9A:  LDR.W           R1, [R0,#0x4D0]
109E9E:  MOVS            R0, #0
109EA0:  CBZ             R1, locret_109EEA
109EA2:  LDR             R2, =(off_23496C - 0x109EA8)
109EA4:  ADD             R2, PC; off_23496C
109EA6:  LDR             R2, [R2]; dword_23DEF4
109EA8:  LDR             R2, [R2]
109EAA:  CBZ             R2, locret_109EEA
109EAC:  LDR.W           R0, [R2,#0x3B0]
109EB0:  LDR             R4, [R0,#4]
109EB2:  CBZ             R4, loc_109EE8
109EB4:  MOVW            R0, #0xEA60
109EB8:  ADDS            R2, R4, R0
109EBA:  LDRD.W          R0, R2, [R2]
109EBE:  CMP             R0, R2
109EC0:  BEQ             loc_109EDA
109EC2:  MOV.W           R3, #0x1F40
109EC6:  LDR             R5, [R0]
109EC8:  ADD.W           R5, R4, R5,LSL#2
109ECC:  LDR             R5, [R5,R3]
109ECE:  CMP             R5, R1
109ED0:  BEQ             loc_109EDA
109ED2:  ADDS            R0, #4
109ED4:  CMP             R0, R2
109ED6:  BNE             loc_109EC6
109ED8:  B               loc_109EE8
109EDA:  CMP             R0, R2
109EDC:  ITTT NE
109EDE:  LDRHNE          R5, [R0]
109EE0:  MOVWNE          R0, #0xFFFF
109EE4:  CMPNE           R5, R0
109EE6:  BNE             loc_109EEC
109EE8:  MOVS            R0, #0
109EEA:  POP             {R4,R5,R7,PC}
109EEC:  LSRS            R0, R5, #4
109EEE:  CMP             R0, #0x7C ; '|'
109EF0:  BHI             loc_109EE8
109EF2:  MOV             R0, R4
109EF4:  MOV             R1, R5
109EF6:  BL              sub_F2396
109EFA:  CMP             R0, #0
109EFC:  BEQ             loc_109EE8
109EFE:  LDR.W           R0, [R4,R5,LSL#2]
109F02:  POP             {R4,R5,R7,PC}
