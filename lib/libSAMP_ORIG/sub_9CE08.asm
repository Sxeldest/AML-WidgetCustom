; =========================================================
; Game Engine Function: sub_9CE08
; Address            : 0x9CE08 - 0x9CF78
; =========================================================

9CE08:  PUSH            {R4-R7,LR}
9CE0A:  ADD             R7, SP, #0xC
9CE0C:  PUSH.W          {R8-R11}
9CE10:  SUB             SP, SP, #4
9CE12:  VPUSH           {D8}
9CE16:  SUB             SP, SP, #8
9CE18:  VMOV            S16, R2
9CE1C:  MOV             R8, R1
9CE1E:  LDR             R1, [R0,#0x58]
9CE20:  MOV             R4, R0
9CE22:  VCMP.F32        S16, #0.0
9CE26:  VMRS            APSR_nzcv, FPSCR
9CE2A:  BEQ             loc_9CF10
9CE2C:  LDR.W           R9, [R7,#arg_0]
9CE30:  MOV             R6, R3
9CE32:  CMP             R9, R3
9CE34:  BLT             loc_9CF10
9CE36:  SUB.W           R2, R9, R6
9CE3A:  LDR             R0, [R4,#0x5C]
9CE3C:  ADD             R1, R2
9CE3E:  ADDS            R5, R1, #1
9CE40:  CMP             R0, R5
9CE42:  BGE             loc_9CE66
9CE44:  LSLS            R0, R5, #3
9CE46:  BL              sub_885E4
9CE4A:  LDR             R1, [R4,#0x60]; src
9CE4C:  MOV             R10, R0
9CE4E:  CBZ             R1, loc_9CE60
9CE50:  LDR             R0, [R4,#0x58]
9CE52:  LSLS            R2, R0, #3; n
9CE54:  MOV             R0, R10; dest
9CE56:  BLX             j_memcpy
9CE5A:  LDR             R0, [R4,#0x60]
9CE5C:  BL              sub_88614
9CE60:  MOV             R0, R5
9CE62:  STRD.W          R5, R10, [R4,#0x5C]
9CE66:  LDR             R1, [R4,#0x58]
9CE68:  MOV             R10, #0x2AAAAAAB
9CE70:  SMMUL.W         R2, R6, R10
9CE74:  LDR             R3, [R4,#0x28]
9CE76:  VLDR            S4, [R8]
9CE7A:  VLDR            S6, [R8,#4]
9CE7E:  CMP             R1, R0
9CE80:  MOV.W           R5, R2,LSR#1
9CE84:  ADD.W           R2, R5, R2,LSR#31
9CE88:  ADD.W           R2, R2, R2,LSL#1
9CE8C:  SUB.W           R2, R6, R2,LSL#2
9CE90:  ADD.W           R2, R3, R2,LSL#3
9CE94:  VLDR            S0, [R2,#0x28]
9CE98:  VLDR            S2, [R2,#0x2C]
9CE9C:  VMLA.F32        S4, S0, S16
9CEA0:  VMLA.F32        S6, S2, S16
9CEA4:  VSTR            S4, [SP,#0x30+var_30]
9CEA8:  VSTR            S6, [SP,#0x30+var_2C]
9CEAC:  BNE             loc_9CEEE
9CEAE:  CMP             R0, #0
9CEB0:  ADD.W           R5, R0, #1
9CEB4:  ITTE NE
9CEB6:  ADDNE.W         R1, R0, R0,LSR#31
9CEBA:  ADDNE.W         R1, R0, R1,ASR#1
9CEBE:  MOVEQ           R1, #8
9CEC0:  CMP             R1, R5
9CEC2:  IT GT
9CEC4:  MOVGT           R5, R1
9CEC6:  CMP             R0, R5
9CEC8:  MOV             R1, R0
9CECA:  BGE             loc_9CEEE
9CECC:  LSLS            R0, R5, #3
9CECE:  BL              sub_885E4
9CED2:  LDR             R1, [R4,#0x60]; src
9CED4:  MOV             R11, R0
9CED6:  CBZ             R1, loc_9CEE8
9CED8:  LDR             R0, [R4,#0x58]
9CEDA:  LSLS            R2, R0, #3; n
9CEDC:  MOV             R0, R11; dest
9CEDE:  BLX             j_memcpy
9CEE2:  LDR             R0, [R4,#0x60]
9CEE4:  BL              sub_88614
9CEE8:  LDR             R1, [R4,#0x58]
9CEEA:  STRD.W          R5, R11, [R4,#0x5C]
9CEEE:  LDR             R0, [R4,#0x60]
9CEF0:  CMP             R9, R6
9CEF2:  LDRD.W          R2, R3, [SP,#0x30+var_30]
9CEF6:  STR.W           R2, [R0,R1,LSL#3]
9CEFA:  ADD.W           R0, R0, R1,LSL#3
9CEFE:  STR             R3, [R0,#4]
9CF00:  LDR             R0, [R4,#0x58]
9CF02:  ADD.W           R1, R0, #1
9CF06:  STR             R1, [R4,#0x58]
9CF08:  BEQ             loc_9CF6A
9CF0A:  LDR             R0, [R4,#0x5C]
9CF0C:  ADDS            R6, #1
9CF0E:  B               loc_9CE70
9CF10:  LDR             R0, [R4,#0x5C]
9CF12:  CMP             R1, R0
9CF14:  BNE             loc_9CF54
9CF16:  CMP             R1, #0
9CF18:  ADD.W           R6, R1, #1
9CF1C:  ITTE NE
9CF1E:  ADDNE.W         R0, R1, R1,LSR#31
9CF22:  ADDNE.W         R0, R1, R0,ASR#1
9CF26:  MOVEQ           R0, #8
9CF28:  CMP             R0, R6
9CF2A:  IT GT
9CF2C:  MOVGT           R6, R0
9CF2E:  CMP             R1, R6
9CF30:  BGE             loc_9CF54
9CF32:  LSLS            R0, R6, #3
9CF34:  BL              sub_885E4
9CF38:  LDR             R1, [R4,#0x60]; src
9CF3A:  MOV             R5, R0
9CF3C:  CBZ             R1, loc_9CF4E
9CF3E:  LDR             R0, [R4,#0x58]
9CF40:  LSLS            R2, R0, #3; n
9CF42:  MOV             R0, R5; dest
9CF44:  BLX             j_memcpy
9CF48:  LDR             R0, [R4,#0x60]
9CF4A:  BL              sub_88614
9CF4E:  LDR             R1, [R4,#0x58]
9CF50:  STRD.W          R6, R5, [R4,#0x5C]
9CF54:  LDR             R0, [R4,#0x60]
9CF56:  LDRD.W          R2, R3, [R8]
9CF5A:  STR.W           R2, [R0,R1,LSL#3]
9CF5E:  ADD.W           R0, R0, R1,LSL#3
9CF62:  STR             R3, [R0,#4]
9CF64:  LDR             R0, [R4,#0x58]
9CF66:  ADDS            R0, #1
9CF68:  STR             R0, [R4,#0x58]
9CF6A:  ADD             SP, SP, #8
9CF6C:  VPOP            {D8}
9CF70:  ADD             SP, SP, #4
9CF72:  POP.W           {R8-R11}
9CF76:  POP             {R4-R7,PC}
