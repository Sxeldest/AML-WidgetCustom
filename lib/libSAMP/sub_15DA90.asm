; =========================================================
; Game Engine Function: sub_15DA90
; Address            : 0x15DA90 - 0x15DBC6
; =========================================================

15DA90:  PUSH            {R4-R7,LR}
15DA92:  ADD             R7, SP, #0xC
15DA94:  PUSH.W          {R8-R11}
15DA98:  SUB             SP, SP, #0xC
15DA9A:  LDR             R6, [R1,#4]
15DA9C:  MOV             R5, R2
15DA9E:  MOV             R2, R0
15DAA0:  MOV.W           R0, #0x55555555
15DAA4:  MOV             R9, R1
15DAA6:  MOV.W           R1, #0x33333333
15DAAA:  AND.W           R0, R0, R6,LSR#1
15DAAE:  LDR.W           R10, [R5,#4]
15DAB2:  SUBS            R0, R6, R0
15DAB4:  AND.W           R1, R1, R0,LSR#2
15DAB8:  BIC.W           R0, R0, #0xCCCCCCCC
15DABC:  ADD             R0, R1
15DABE:  MOV.W           R1, #0x1010101
15DAC2:  ADD.W           R0, R0, R0,LSR#4
15DAC6:  BIC.W           R0, R0, #0xF0F0F0F0
15DACA:  MULS            R0, R1
15DACC:  MOV.W           R8, R0,LSR#24
15DAD0:  CMP.W           R8, #1
15DAD4:  BHI             loc_15DADE
15DAD6:  SUBS            R0, R6, #1
15DAD8:  AND.W           R10, R10, R0
15DADC:  B               loc_15DAF0
15DADE:  CMP             R10, R6
15DAE0:  BCC             loc_15DAF0
15DAE2:  MOV             R0, R10
15DAE4:  MOV             R1, R6
15DAE6:  MOV             R4, R2
15DAE8:  BLX             sub_221798
15DAEC:  MOV             R2, R4
15DAEE:  MOV             R10, R1
15DAF0:  LDR.W           R11, [R9]
15DAF4:  LDR.W           R0, [R11,R10,LSL#2]
15DAF8:  MOV             R4, R0
15DAFA:  LDR             R0, [R0]
15DAFC:  CMP             R0, R5
15DAFE:  BNE             loc_15DAF8
15DB00:  ADD.W           R12, R9, #8
15DB04:  CMP             R4, R12
15DB06:  BEQ             loc_15DB2E
15DB08:  LDR             R0, [R4,#4]
15DB0A:  CMP.W           R8, #1
15DB0E:  BHI             loc_15DB16
15DB10:  SUBS            R1, R6, #1
15DB12:  ANDS            R0, R1
15DB14:  B               loc_15DB2A
15DB16:  CMP             R0, R6
15DB18:  BCC             loc_15DB2A
15DB1A:  MOV             R1, R6
15DB1C:  STRD.W          R12, R2, [SP,#0x28+var_24]
15DB20:  BLX             sub_221798
15DB24:  LDRD.W          R12, R2, [SP,#0x28+var_24]
15DB28:  MOV             R0, R1
15DB2A:  CMP             R0, R10
15DB2C:  BEQ             loc_15DB5E
15DB2E:  LDR             R0, [R5]
15DB30:  CBZ             R0, loc_15DB58
15DB32:  LDR             R0, [R0,#4]
15DB34:  CMP.W           R8, #1
15DB38:  BHI             loc_15DB40
15DB3A:  SUBS            R1, R6, #1
15DB3C:  ANDS            R0, R1
15DB3E:  B               loc_15DB54
15DB40:  CMP             R0, R6
15DB42:  BCC             loc_15DB54
15DB44:  MOV             R1, R6
15DB46:  STRD.W          R12, R2, [SP,#0x28+var_24]
15DB4A:  BLX             sub_221798
15DB4E:  LDRD.W          R12, R2, [SP,#0x28+var_24]
15DB52:  MOV             R0, R1
15DB54:  CMP             R0, R10
15DB56:  BEQ             loc_15DB5E
15DB58:  MOVS            R0, #0
15DB5A:  STR.W           R0, [R11,R10,LSL#2]
15DB5E:  LDR.W           R11, [R5]
15DB62:  MOVS            R3, #0
15DB64:  CMP.W           R11, #0
15DB68:  BEQ             loc_15DB7A
15DB6A:  LDR.W           R0, [R11,#4]
15DB6E:  CMP.W           R8, #1
15DB72:  BHI             loc_15DB80
15DB74:  SUBS            R1, R6, #1
15DB76:  ANDS            R0, R1
15DB78:  B               loc_15DB96
15DB7A:  MOV.W           R11, #0
15DB7E:  B               loc_15DBA6
15DB80:  CMP             R0, R6
15DB82:  BCC             loc_15DB96
15DB84:  MOV             R1, R6
15DB86:  MOV             R8, R2
15DB88:  MOV             R6, R12
15DB8A:  BLX             sub_221798
15DB8E:  MOVS            R3, #0
15DB90:  MOV             R12, R6
15DB92:  MOV             R2, R8
15DB94:  MOV             R0, R1
15DB96:  CMP             R0, R10
15DB98:  ITTT NE
15DB9A:  LDRNE.W         R1, [R9]
15DB9E:  STRNE.W         R4, [R1,R0,LSL#2]
15DBA2:  LDRNE.W         R11, [R5]
15DBA6:  MOVS            R0, #1
15DBA8:  STR.W           R11, [R4]
15DBAC:  STRB            R0, [R2,#8]
15DBAE:  LDR.W           R0, [R9,#0xC]
15DBB2:  STRD.W          R5, R12, [R2]
15DBB6:  SUBS            R0, #1
15DBB8:  STR             R3, [R5]
15DBBA:  STR.W           R0, [R9,#0xC]
15DBBE:  ADD             SP, SP, #0xC
15DBC0:  POP.W           {R8-R11}
15DBC4:  POP             {R4-R7,PC}
