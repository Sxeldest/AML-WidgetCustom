; =========================================================
; Game Engine Function: _Z22jinit_c_master_controlP20jpeg_compress_structh
; Address            : 0x4799D0 - 0x479C08
; =========================================================

4799D0:  PUSH            {R4-R7,LR}
4799D2:  ADD             R7, SP, #0xC
4799D4:  PUSH.W          {R8-R11}
4799D8:  SUB             SP, SP, #4
4799DA:  MOV             R4, R0
4799DC:  MOV             R8, R1
4799DE:  LDR             R0, [R4,#4]
4799E0:  MOVS            R1, #1
4799E2:  MOVS            R2, #0x20 ; ' '
4799E4:  MOVS            R5, #0x20 ; ' '
4799E6:  LDR             R3, [R0]
4799E8:  MOV             R0, R4
4799EA:  BLX             R3
4799EC:  LDR             R2, =(sub_479E80+1 - 0x4799FA)
4799EE:  MOV             R9, R0
4799F0:  LDR             R0, =(sub_479C20+1 - 0x479A00)
4799F2:  MOVS            R3, #0
4799F4:  LDR             R1, =(sub_479EA6+1 - 0x479A06)
4799F6:  ADD             R2, PC; sub_479E80
4799F8:  STR.W           R9, [R4,#0x13C]
4799FC:  ADD             R0, PC; sub_479C20
4799FE:  STRB.W          R3, [R9,#0xD]
479A02:  ADD             R1, PC; sub_479EA6
479A04:  STRD.W          R0, R2, [R9]
479A08:  STR.W           R1, [R9,#8]
479A0C:  LDR             R0, [R4,#0x20]
479A0E:  CMP             R0, #0
479A10:  ITT NE
479A12:  LDRNE           R1, [R4,#0x1C]
479A14:  CMPNE           R1, #0
479A16:  BEQ             loc_479A24
479A18:  LDR             R1, [R4,#0x3C]
479A1A:  CMP             R1, #1
479A1C:  ITT GE
479A1E:  LDRGE           R1, [R4,#0x24]
479A20:  CMPGE           R1, #0
479A22:  BGT             loc_479A32
479A24:  LDR             R0, [R4]
479A26:  STR             R5, [R0,#0x14]
479A28:  LDR             R0, [R4]
479A2A:  LDR             R1, [R0]
479A2C:  MOV             R0, R4
479A2E:  BLX             R1
479A30:  LDR             R0, [R4,#0x20]
479A32:  MOVW            R1, #0xFFDC
479A36:  CMP             R0, R1
479A38:  BGT             loc_479A44
479A3A:  LDR             R0, [R4,#0x1C]
479A3C:  MOVW            R2, #0xFFDD
479A40:  CMP             R0, R2
479A42:  BLT             loc_479A56
479A44:  LDR             R0, [R4]
479A46:  MOVS            R2, #0x29 ; ')'
479A48:  STR             R2, [R0,#0x14]
479A4A:  LDR             R0, [R4]
479A4C:  STR             R1, [R0,#0x18]
479A4E:  LDR             R0, [R4]
479A50:  LDR             R1, [R0]
479A52:  MOV             R0, R4
479A54:  BLX             R1
479A56:  LDR             R0, [R4,#0x38]
479A58:  CMP             R0, #8
479A5A:  BEQ             loc_479A70
479A5C:  LDR             R0, [R4]
479A5E:  MOVS            R1, #0xF
479A60:  STR             R1, [R0,#0x14]
479A62:  LDR             R0, [R4]
479A64:  LDR             R1, [R4,#0x38]
479A66:  STR             R1, [R0,#0x18]
479A68:  LDR             R0, [R4]
479A6A:  LDR             R1, [R0]
479A6C:  MOV             R0, R4
479A6E:  BLX             R1
479A70:  LDR.W           R12, [R4,#0x3C]
479A74:  CMP.W           R12, #5
479A78:  BLT             loc_479A98
479A7A:  LDR             R0, [R4]
479A7C:  MOVS            R1, #0x1A
479A7E:  STR             R1, [R0,#0x14]
479A80:  LDR             R0, [R4]
479A82:  LDR             R1, [R4,#0x3C]
479A84:  STR             R1, [R0,#0x18]
479A86:  MOVS            R1, #4
479A88:  LDR             R0, [R4]
479A8A:  STR             R1, [R0,#0x1C]
479A8C:  LDR             R0, [R4]
479A8E:  LDR             R1, [R0]
479A90:  MOV             R0, R4
479A92:  BLX             R1
479A94:  LDR.W           R12, [R4,#0x3C]
479A98:  MOVS            R1, #1
479A9A:  CMP.W           R12, #1
479A9E:  STRD.W          R1, R1, [R4,#0xD8]
479AA2:  BLT             loc_479B82
479AA4:  LDR             R0, [R4,#0x44]
479AA6:  MOVS            R5, #0
479AA8:  MOVS            R1, #1
479AAA:  MOV.W           R10, #0x12
479AAE:  ADD.W           R6, R0, #8
479AB2:  MOVS            R2, #1
479AB4:  LDR             R3, [R6]
479AB6:  SUBS            R0, R3, #1
479AB8:  CMP             R0, #3
479ABA:  BHI             loc_479AC6
479ABC:  LDR             R0, [R6,#4]
479ABE:  SUBS            R0, #1
479AC0:  CMP             R0, #4
479AC2:  MOV             R0, R1
479AC4:  BCC             loc_479ADE
479AC6:  LDR             R0, [R4]
479AC8:  STR.W           R10, [R0,#0x14]
479ACC:  LDR             R0, [R4]
479ACE:  LDR             R1, [R0]
479AD0:  MOV             R0, R4
479AD2:  BLX             R1
479AD4:  LDR.W           R12, [R4,#0x3C]
479AD8:  LDRD.W          R2, R0, [R4,#0xD8]
479ADC:  LDR             R3, [R6]
479ADE:  CMP             R2, R3
479AE0:  ADD.W           R5, R5, #1
479AE4:  IT LE
479AE6:  MOVLE           R2, R3
479AE8:  STR.W           R2, [R4,#0xD8]
479AEC:  LDR             R1, [R6,#4]
479AEE:  ADDS            R6, #0x54 ; 'T'
479AF0:  CMP             R0, R1
479AF2:  IT GT
479AF4:  MOVGT           R1, R0
479AF6:  CMP             R5, R12
479AF8:  STR.W           R1, [R4,#0xDC]
479AFC:  BLT             loc_479AB4
479AFE:  CMP.W           R12, #1
479B02:  BLT             loc_479B82
479B04:  LDR             R0, [R4,#0x44]
479B06:  MOVS            R6, #0
479B08:  MOV.W           R10, #8
479B0C:  MOV.W           R11, #1
479B10:  ADD.W           R5, R0, #0x30 ; '0'
479B14:  STR.W           R10, [R5,#-0xC]
479B18:  STR.W           R6, [R5,#-0x2C]
479B1C:  LDR.W           R0, [R5,#-0x28]
479B20:  LDR             R1, [R4,#0x1C]
479B22:  LDR.W           R2, [R4,#0xD8]
479B26:  MULS            R0, R1; int
479B28:  LSLS            R1, R2, #3; int
479B2A:  BLX             j__Z13jdiv_round_upll; jdiv_round_up(long,long)
479B2E:  LDR.W           R1, [R5,#-0x24]
479B32:  STR.W           R0, [R5,#-0x14]
479B36:  LDR             R0, [R4,#0x20]
479B38:  LDR.W           R2, [R4,#0xDC]
479B3C:  MULS            R0, R1; int
479B3E:  LSLS            R1, R2, #3; int
479B40:  BLX             j__Z13jdiv_round_upll; jdiv_round_up(long,long)
479B44:  LDR.W           R2, [R5,#-0x28]
479B48:  STR.W           R0, [R5,#-0x10]
479B4C:  LDR             R0, [R4,#0x1C]
479B4E:  LDR.W           R1, [R4,#0xD8]; int
479B52:  MULS            R0, R2; int
479B54:  BLX             j__Z13jdiv_round_upll; jdiv_round_up(long,long)
479B58:  LDR.W           R2, [R5,#-0x24]
479B5C:  STR.W           R0, [R5,#-8]
479B60:  LDR             R0, [R4,#0x20]
479B62:  LDR.W           R1, [R4,#0xDC]; int
479B66:  MULS            R0, R2; int
479B68:  BLX             j__Z13jdiv_round_upll; jdiv_round_up(long,long)
479B6C:  STR.W           R0, [R5,#-4]
479B70:  ADDS            R6, #1
479B72:  STRB.W          R11, [R5]
479B76:  ADDS            R5, #0x54 ; 'T'
479B78:  LDR             R0, [R4,#0x3C]
479B7A:  CMP             R6, R0
479B7C:  BLT             loc_479B14
479B7E:  LDR.W           R1, [R4,#0xDC]
479B82:  LDR             R0, [R4,#0x20]; int
479B84:  LSLS            R1, R1, #3; int
479B86:  BLX             j__Z13jdiv_round_upll; jdiv_round_up(long,long)
479B8A:  LDR.W           R1, [R4,#0xAC]
479B8E:  STR.W           R0, [R4,#0xE0]
479B92:  CBZ             R1, loc_479BC8
479B94:  LDR             R0, [R4]
479B96:  MOVS            R1, #0x30 ; '0'
479B98:  STR             R1, [R0,#0x14]
479B9A:  LDR             R0, [R4]
479B9C:  LDR             R1, [R0]
479B9E:  MOV             R0, R4
479BA0:  BLX             R1
479BA2:  LDRB.W          R0, [R4,#0xD4]
479BA6:  CMP             R0, #0
479BA8:  ITT NE
479BAA:  MOVNE           R0, #1
479BAC:  STRBNE.W        R0, [R4,#0xB2]
479BB0:  CMP.W           R8, #0
479BB4:  BEQ             loc_479BDA
479BB6:  LDRB.W          R0, [R4,#0xB2]
479BBA:  MOVS            R1, #2
479BBC:  CMP             R0, #0
479BBE:  IT NE
479BC0:  MOVNE           R1, #1
479BC2:  STR.W           R1, [R9,#0x10]
479BC6:  B               loc_479BE0
479BC8:  MOVS            R0, #1
479BCA:  STR.W           R0, [R4,#0xA8]
479BCE:  MOVS            R0, #0
479BD0:  STRB.W          R0, [R4,#0xD4]
479BD4:  CMP.W           R8, #0
479BD8:  BNE             loc_479BB6
479BDA:  MOVS            R0, #0
479BDC:  STR.W           R0, [R9,#0x10]
479BE0:  MOVS            R0, #0
479BE2:  STR.W           R0, [R9,#0x14]
479BE6:  STR.W           R0, [R9,#0x1C]
479BEA:  LDRB.W          R0, [R4,#0xB2]
479BEE:  LDR.W           R1, [R4,#0xA8]
479BF2:  CMP             R0, #0
479BF4:  IT NE
479BF6:  MOVNE           R0, #1
479BF8:  LSL.W           R0, R1, R0
479BFC:  STR.W           R0, [R9,#0x18]
479C00:  ADD             SP, SP, #4
479C02:  POP.W           {R8-R11}
479C06:  POP             {R4-R7,PC}
