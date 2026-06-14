; =========================================================
; Game Engine Function: _ZN21CPedGroupIntelligence18ReportFinishedTaskEPK4CPedRK5CTask
; Address            : 0x4B3A08 - 0x4B3B28
; =========================================================

4B3A08:  PUSH            {R4-R7,LR}
4B3A0A:  ADD             R7, SP, #0xC
4B3A0C:  PUSH.W          {R8-R10}
4B3A10:  MOV             R8, R0
4B3A12:  ADD.W           R4, R8, #0x150
4B3A16:  MOV             R9, R2
4B3A18:  MOV             R10, R1
4B3A1A:  MOV.W           R5, #0xFFFFFFFF
4B3A1E:  LDR.W           R0, [R4,#-4]
4B3A22:  CMP             R0, R10
4B3A24:  BNE             loc_4B3A42
4B3A26:  LDR             R0, [R4]
4B3A28:  CBZ             R0, loc_4B3A42
4B3A2A:  LDR.W           R0, [R9]
4B3A2E:  LDR             R1, [R0,#0x14]
4B3A30:  MOV             R0, R9
4B3A32:  BLX             R1
4B3A34:  MOV             R6, R0
4B3A36:  LDR             R0, [R4]
4B3A38:  LDR             R1, [R0]
4B3A3A:  LDR             R1, [R1,#0x14]
4B3A3C:  BLX             R1
4B3A3E:  CMP             R6, R0
4B3A40:  BEQ             loc_4B3AB4
4B3A42:  ADDS            R5, #1
4B3A44:  ADDS            R4, #0x14
4B3A46:  CMP             R5, #7
4B3A48:  BLT             loc_4B3A1E
4B3A4A:  ADD.W           R4, R8, #0x10
4B3A4E:  MOV.W           R5, #0xFFFFFFFF
4B3A52:  LDR.W           R0, [R4,#-4]
4B3A56:  CMP             R0, R10
4B3A58:  BNE             loc_4B3A76
4B3A5A:  LDR             R0, [R4]
4B3A5C:  CBZ             R0, loc_4B3A76
4B3A5E:  LDR.W           R0, [R9]
4B3A62:  LDR             R1, [R0,#0x14]
4B3A64:  MOV             R0, R9
4B3A66:  BLX             R1
4B3A68:  MOV             R6, R0
4B3A6A:  LDR             R0, [R4]
4B3A6C:  LDR             R1, [R0]
4B3A6E:  LDR             R1, [R1,#0x14]
4B3A70:  BLX             R1
4B3A72:  CMP             R6, R0
4B3A74:  BEQ             loc_4B3AB4
4B3A76:  ADDS            R5, #1
4B3A78:  ADDS            R4, #0x14
4B3A7A:  CMP             R5, #7
4B3A7C:  BLT             loc_4B3A52
4B3A7E:  ADD.W           R4, R8, #0xB0
4B3A82:  MOV.W           R5, #0xFFFFFFFF
4B3A86:  LDR.W           R0, [R4,#-4]
4B3A8A:  CMP             R0, R10
4B3A8C:  BNE             loc_4B3AAA
4B3A8E:  LDR             R0, [R4]
4B3A90:  CBZ             R0, loc_4B3AAA
4B3A92:  LDR.W           R0, [R9]
4B3A96:  LDR             R1, [R0,#0x14]
4B3A98:  MOV             R0, R9
4B3A9A:  BLX             R1
4B3A9C:  MOV             R6, R0
4B3A9E:  LDR             R0, [R4]
4B3AA0:  LDR             R1, [R0]
4B3AA2:  LDR             R1, [R1,#0x14]
4B3AA4:  BLX             R1
4B3AA6:  CMP             R6, R0
4B3AA8:  BEQ             loc_4B3AC4
4B3AAA:  ADDS            R5, #1
4B3AAC:  ADDS            R4, #0x14
4B3AAE:  CMP             R5, #7
4B3AB0:  BLT             loc_4B3A86
4B3AB2:  B               loc_4B3AD4
4B3AB4:  LDR             R0, [R4]
4B3AB6:  CMP             R0, #0
4B3AB8:  ITTT NE
4B3ABA:  LDRNE           R1, [R0]
4B3ABC:  LDRNE           R1, [R1,#4]
4B3ABE:  BLXNE           R1
4B3AC0:  MOVS            R0, #1
4B3AC2:  B               loc_4B3B1E
4B3AC4:  LDR             R0, [R4]
4B3AC6:  CMP             R0, #0
4B3AC8:  ITTT NE
4B3ACA:  LDRNE           R1, [R0]
4B3ACC:  LDRNE           R1, [R1,#4]
4B3ACE:  BLXNE           R1
4B3AD0:  MOVS            R0, #0
4B3AD2:  STR             R0, [R4]
4B3AD4:  ADD.W           R4, R8, #0x1F0
4B3AD8:  MOV.W           R5, #0xFFFFFFFF
4B3ADC:  LDR.W           R0, [R4,#-4]
4B3AE0:  CMP             R0, R10
4B3AE2:  BNE             loc_4B3B00
4B3AE4:  LDR             R0, [R4]
4B3AE6:  CBZ             R0, loc_4B3B00
4B3AE8:  LDR.W           R0, [R9]
4B3AEC:  LDR             R1, [R0,#0x14]
4B3AEE:  MOV             R0, R9
4B3AF0:  BLX             R1
4B3AF2:  MOV             R6, R0
4B3AF4:  LDR             R0, [R4]
4B3AF6:  LDR             R1, [R0]
4B3AF8:  LDR             R1, [R1,#0x14]
4B3AFA:  BLX             R1
4B3AFC:  CMP             R6, R0
4B3AFE:  BEQ             loc_4B3B10
4B3B00:  ADDS            R5, #1
4B3B02:  ADDS            R4, #0x14
4B3B04:  CMP             R5, #7
4B3B06:  BLT             loc_4B3ADC
4B3B08:  MOVS            R0, #0
4B3B0A:  POP.W           {R8-R10}
4B3B0E:  POP             {R4-R7,PC}
4B3B10:  LDR             R0, [R4]
4B3B12:  CMP             R0, #0
4B3B14:  ITTT NE
4B3B16:  LDRNE           R1, [R0]
4B3B18:  LDRNE           R1, [R1,#4]
4B3B1A:  BLXNE           R1
4B3B1C:  MOVS            R0, #0
4B3B1E:  MOVS            R1, #0
4B3B20:  STR             R1, [R4]
4B3B22:  POP.W           {R8-R10}
4B3B26:  POP             {R4-R7,PC}
