; =========================================================
; Game Engine Function: sub_109E00
; Address            : 0x109E00 - 0x109E72
; =========================================================

109E00:  PUSH            {R4,R5,R7,LR}
109E02:  ADD             R7, SP, #8
109E04:  LDR             R0, [R0,#0xC]
109E06:  CBZ             R0, loc_109E56
109E08:  LDR.W           R1, [R0,#0x4D4]
109E0C:  MOVS            R0, #0
109E0E:  CBZ             R1, locret_109E70
109E10:  LDR             R2, =(off_23496C - 0x109E16)
109E12:  ADD             R2, PC; off_23496C
109E14:  LDR             R2, [R2]; dword_23DEF4
109E16:  LDR             R2, [R2]
109E18:  CBZ             R2, locret_109E70
109E1A:  LDR.W           R0, [R2,#0x3B0]
109E1E:  LDR             R4, [R0,#4]
109E20:  CBZ             R4, loc_109E56
109E22:  MOVW            R0, #0xEA60
109E26:  ADDS            R2, R4, R0
109E28:  LDRD.W          R0, R2, [R2]
109E2C:  CMP             R0, R2
109E2E:  BEQ             loc_109E48
109E30:  MOV.W           R3, #0x1F40
109E34:  LDR             R5, [R0]
109E36:  ADD.W           R5, R4, R5,LSL#2
109E3A:  LDR             R5, [R5,R3]
109E3C:  CMP             R5, R1
109E3E:  BEQ             loc_109E48
109E40:  ADDS            R0, #4
109E42:  CMP             R0, R2
109E44:  BNE             loc_109E34
109E46:  B               loc_109E56
109E48:  CMP             R0, R2
109E4A:  ITTT NE
109E4C:  LDRHNE          R5, [R0]
109E4E:  MOVWNE          R0, #0xFFFF
109E52:  CMPNE           R5, R0
109E54:  BNE             loc_109E5A
109E56:  MOVS            R0, #0
109E58:  POP             {R4,R5,R7,PC}
109E5A:  LSRS            R0, R5, #4
109E5C:  CMP             R0, #0x7C ; '|'
109E5E:  BHI             loc_109E56
109E60:  MOV             R0, R4
109E62:  MOV             R1, R5
109E64:  BL              sub_F2396
109E68:  CMP             R0, #0
109E6A:  BEQ             loc_109E56
109E6C:  LDR.W           R0, [R4,R5,LSL#2]
109E70:  POP             {R4,R5,R7,PC}
