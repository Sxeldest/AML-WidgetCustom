; =========================================================
; Game Engine Function: sub_14CE2C
; Address            : 0x14CE2C - 0x14CECA
; =========================================================

14CE2C:  PUSH            {R4-R7,LR}
14CE2E:  ADD             R7, SP, #0xC
14CE30:  PUSH.W          {R11}
14CE34:  SUB             SP, SP, #0x118
14CE36:  LDRD.W          R1, R0, [R0]; src
14CE3A:  MOVS            R3, #0
14CE3C:  ASRS            R2, R0, #0x1F
14CE3E:  ADD.W           R0, R0, R2,LSR#29
14CE42:  MOVS            R2, #1
14CE44:  ADD.W           R2, R2, R0,ASR#3; size
14CE48:  MOV             R0, SP; int
14CE4A:  BL              sub_17D4F2
14CE4E:  SUB.W           R1, R7, #-var_12; int
14CE52:  MOVS            R2, #0x10
14CE54:  MOVS            R3, #1
14CE56:  BL              sub_17D786
14CE5A:  ADD             R1, SP, #0x128+var_14; int
14CE5C:  MOV             R0, SP; int
14CE5E:  MOVS            R2, #0x10
14CE60:  MOVS            R3, #1
14CE62:  BL              sub_17D786
14CE66:  LDR             R0, =(off_23496C - 0x14CE6C)
14CE68:  ADD             R0, PC; off_23496C
14CE6A:  LDR             R0, [R0]; dword_23DEF4
14CE6C:  LDR             R0, [R0]
14CE6E:  LDR.W           R0, [R0,#0x3B0]
14CE72:  LDR             R4, [R0,#4]
14CE74:  CBZ             R4, loc_14CEBC
14CE76:  LDRH.W          R5, [R7,#var_12]
14CE7A:  LSRS            R0, R5, #4
14CE7C:  CMP             R0, #0x7C ; '|'
14CE7E:  BHI             loc_14CE90
14CE80:  MOV             R0, R4
14CE82:  MOV             R1, R5
14CE84:  BL              sub_F2396
14CE88:  CBZ             R0, loc_14CE90
14CE8A:  LDR.W           R5, [R4,R5,LSL#2]
14CE8E:  B               loc_14CE92
14CE90:  MOVS            R5, #0
14CE92:  LDRH.W          R6, [SP,#0x128+var_14]
14CE96:  LSRS            R0, R6, #4
14CE98:  CMP             R0, #0x7C ; '|'
14CE9A:  BHI             loc_14CEBC
14CE9C:  MOV             R0, R4
14CE9E:  MOV             R1, R6
14CEA0:  BL              sub_F2396
14CEA4:  CBZ             R0, loc_14CEBC
14CEA6:  CBZ             R5, loc_14CEBC
14CEA8:  LDR.W           R4, [R4,R6,LSL#2]
14CEAC:  CBZ             R4, loc_14CEBC
14CEAE:  MOV             R0, R4
14CEB0:  MOV             R1, R5
14CEB2:  BL              sub_109C00
14CEB6:  MOV             R0, R4
14CEB8:  BL              sub_10A0B8
14CEBC:  MOV             R0, SP
14CEBE:  BL              sub_17D542
14CEC2:  ADD             SP, SP, #0x118
14CEC4:  POP.W           {R11}
14CEC8:  POP             {R4-R7,PC}
