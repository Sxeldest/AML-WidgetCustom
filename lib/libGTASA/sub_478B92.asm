; =========================================================
; Game Engine Function: sub_478B92
; Address            : 0x478B92 - 0x478C5A
; =========================================================

478B92:  PUSH            {R4-R7,LR}
478B94:  ADD             R7, SP, #0xC
478B96:  PUSH.W          {R8}
478B9A:  MOV             R8, R0
478B9C:  LDR.W           R0, [R8,#0x3C]
478BA0:  CMP             R0, #1
478BA2:  BLT             loc_478BC8
478BA4:  LDR.W           R0, [R8,#0x44]
478BA8:  MOVS            R5, #0
478BAA:  MOVS            R4, #0
478BAC:  ADD.W           R6, R0, #0x10
478BB0:  LDR.W           R1, [R6],#0x54
478BB4:  MOV             R0, R8
478BB6:  BL              sub_4792B0
478BBA:  ADD             R5, R0
478BBC:  LDR.W           R0, [R8,#0x3C]
478BC0:  ADDS            R4, #1
478BC2:  CMP             R4, R0
478BC4:  BLT             loc_478BB0
478BC6:  B               loc_478BCA
478BC8:  MOVS            R5, #0
478BCA:  LDRB.W          R1, [R8,#0xB1]
478BCE:  CBZ             R1, loc_478BD6
478BD0:  MOV             R0, R8
478BD2:  MOVS            R1, #0xC9
478BD4:  B               loc_478C42
478BD6:  LDRB.W          R1, [R8,#0xD4]
478BDA:  CBNZ            R1, loc_478C3E
478BDC:  LDR.W           R1, [R8,#0x38]
478BE0:  CMP             R1, #8
478BE2:  BNE             loc_478C0A
478BE4:  CMP             R0, #1
478BE6:  BLT             loc_478C0E
478BE8:  LDR.W           R1, [R8,#0x44]
478BEC:  MOVS            R2, #0
478BEE:  MOVS            R6, #1
478BF0:  ADDS            R1, #0x14
478BF2:  LDR             R3, [R1]
478BF4:  CMP             R3, #1
478BF6:  ITT LE
478BF8:  LDRLE           R3, [R1,#4]
478BFA:  CMPLE           R3, #2
478BFC:  BLT             loc_478C00
478BFE:  MOVS            R6, #0
478C00:  ADDS            R2, #1
478C02:  ADDS            R1, #0x54 ; 'T'
478C04:  CMP             R2, R0
478C06:  BLT             loc_478BF2
478C08:  B               loc_478C10
478C0A:  MOVS            R6, #0
478C0C:  B               loc_478C38
478C0E:  MOVS            R6, #1
478C10:  CMP             R5, #0
478C12:  IT NE
478C14:  MOVSNE.W        R0, R6,LSL#24
478C18:  BEQ             loc_478C38
478C1A:  LDR.W           R0, [R8]
478C1E:  MOVS            R1, #0x4B ; 'K'
478C20:  MOVS            R6, #0
478C22:  STR             R1, [R0,#0x14]
478C24:  MOVS            R1, #0
478C26:  LDR.W           R0, [R8]
478C2A:  LDR             R2, [R0,#4]
478C2C:  MOV             R0, R8
478C2E:  BLX             R2
478C30:  LDRB.W          R0, [R8,#0xB1]
478C34:  CMP             R0, #0
478C36:  BNE             loc_478BD0
478C38:  LDRB.W          R0, [R8,#0xD4]
478C3C:  CBZ             R0, loc_478C4E
478C3E:  MOV             R0, R8
478C40:  MOVS            R1, #0xC2
478C42:  POP.W           {R8}
478C46:  POP.W           {R4-R7,LR}
478C4A:  B.W             sub_479494
478C4E:  LSLS            R0, R6, #0x18
478C50:  MOV             R0, R8
478C52:  ITE EQ
478C54:  MOVEQ           R1, #0xC1
478C56:  MOVNE           R1, #0xC0
478C58:  B               loc_478C42
