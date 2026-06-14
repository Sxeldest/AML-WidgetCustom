; =========================================================
; Game Engine Function: _Z17jinit_downsamplerP20jpeg_compress_struct
; Address            : 0x47AC18 - 0x47AD04
; =========================================================

47AC18:  PUSH            {R4-R7,LR}
47AC1A:  ADD             R7, SP, #0xC
47AC1C:  PUSH.W          {R8-R11}
47AC20:  SUB             SP, SP, #4
47AC22:  MOV             R4, R0
47AC24:  MOVS            R1, #1
47AC26:  LDR             R0, [R4,#4]
47AC28:  MOVS            R2, #0x1C
47AC2A:  LDR             R3, [R0]
47AC2C:  MOV             R0, R4
47AC2E:  BLX             R3
47AC30:  MOV             R5, R0
47AC32:  LDR             R0, =(sub_47AD1E+1 - 0x47AC3A)
47AC34:  LDR             R1, =(nullsub_20+1 - 0x47AC40)
47AC36:  ADD             R0, PC; sub_47AD1E
47AC38:  STR.W           R5, [R4,#0x154]
47AC3C:  ADD             R1, PC; nullsub_20
47AC3E:  STRD.W          R1, R0, [R5]
47AC42:  MOVS            R0, #0
47AC44:  STRB            R0, [R5,#8]
47AC46:  LDRB.W          R0, [R4,#0xB3]
47AC4A:  CBZ             R0, loc_47AC5A
47AC4C:  LDR             R0, [R4]
47AC4E:  MOVS            R1, #0x19
47AC50:  STR             R1, [R0,#0x14]
47AC52:  LDR             R0, [R4]
47AC54:  LDR             R1, [R0]
47AC56:  MOV             R0, R4
47AC58:  BLX             R1
47AC5A:  LDR             R0, [R4,#0x3C]
47AC5C:  CMP             R0, #1
47AC5E:  BLT             loc_47ACFC
47AC60:  LDR.W           R9, =(sub_47AD80+1 - 0x47AC74)
47AC64:  ADD.W           R8, R5, #0xC
47AC68:  LDR.W           R10, =(sub_47ADF4+1 - 0x47AC76)
47AC6C:  MOVS            R5, #0
47AC6E:  LDR             R0, [R4,#0x44]
47AC70:  ADD             R9, PC; sub_47AD80
47AC72:  ADD             R10, PC; sub_47ADF4
47AC74:  MOV.W           R11, #0x26 ; '&'
47AC78:  ADD.W           R6, R0, #0xC
47AC7C:  B               loc_47AC88
47AC7E:  LDR             R0, =(sub_47AF68+1 - 0x47AC84)
47AC80:  ADD             R0, PC; sub_47AF68
47AC82:  STR.W           R0, [R8,R5,LSL#2]
47AC86:  B               loc_47ACF2
47AC88:  LDR.W           R0, [R4,#0xD8]
47AC8C:  LDR.W           R1, [R6,#-4]
47AC90:  CMP             R1, R0
47AC92:  BNE             loc_47ACA4
47AC94:  LDR.W           R2, [R4,#0xDC]
47AC98:  LDR             R3, [R6]
47AC9A:  CMP             R3, R2
47AC9C:  BNE             loc_47ACA4
47AC9E:  STR.W           R9, [R8,R5,LSL#2]
47ACA2:  B               loc_47ACF2
47ACA4:  CMP.W           R0, R1,LSL#1
47ACA8:  BNE             loc_47ACD0
47ACAA:  LDR.W           R2, [R4,#0xDC]
47ACAE:  LDR             R3, [R6]
47ACB0:  CMP             R3, R2
47ACB2:  BNE             loc_47ACBA
47ACB4:  STR.W           R10, [R8,R5,LSL#2]
47ACB8:  B               loc_47ACF2
47ACBA:  LDR             R2, [R6]
47ACBC:  LDR.W           R3, [R4,#0xDC]
47ACC0:  CMP.W           R3, R2,LSL#1
47ACC4:  BNE             loc_47ACD0
47ACC6:  LDR             R0, =(sub_47AE9E+1 - 0x47ACCC)
47ACC8:  ADD             R0, PC; sub_47AE9E
47ACCA:  STR.W           R0, [R8,R5,LSL#2]
47ACCE:  B               loc_47ACF2
47ACD0:  BLX             __aeabi_idivmod
47ACD4:  CBNZ            R1, loc_47ACE4
47ACD6:  LDR.W           R0, [R4,#0xDC]
47ACDA:  LDR             R1, [R6]
47ACDC:  BLX             __aeabi_idivmod
47ACE0:  CMP             R1, #0
47ACE2:  BEQ             loc_47AC7E
47ACE4:  LDR             R0, [R4]
47ACE6:  STR.W           R11, [R0,#0x14]
47ACEA:  LDR             R0, [R4]
47ACEC:  LDR             R1, [R0]
47ACEE:  MOV             R0, R4
47ACF0:  BLX             R1
47ACF2:  LDR             R0, [R4,#0x3C]
47ACF4:  ADDS            R5, #1
47ACF6:  ADDS            R6, #0x54 ; 'T'
47ACF8:  CMP             R5, R0
47ACFA:  BLT             loc_47AC88
47ACFC:  ADD             SP, SP, #4
47ACFE:  POP.W           {R8-R11}
47AD02:  POP             {R4-R7,PC}
