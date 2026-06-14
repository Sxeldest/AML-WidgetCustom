; =========================================================
; Game Engine Function: sub_47FE84
; Address            : 0x47FE84 - 0x47FF66
; =========================================================

47FE84:  PUSH            {R4-R7,LR}
47FE86:  ADD             R7, SP, #0xC
47FE88:  PUSH.W          {R8-R11}
47FE8C:  SUB             SP, SP, #0xC
47FE8E:  MOV             R9, R0
47FE90:  MOV             R8, R2
47FE92:  LDR.W           R5, [R9,#0x1A0]
47FE96:  MOV             R6, R1
47FE98:  LDR.W           R0, [R9,#0x114]
47FE9C:  LDRD.W          R12, R10, [R7,#arg_0]
47FEA0:  LDR             R2, [R5,#0x2C]
47FEA2:  LDR.W           LR, [R7,#arg_8]
47FEA6:  CMP             R2, R0
47FEA8:  BLT             loc_47FF0A
47FEAA:  STR             R5, [SP,#0x28+var_20]
47FEAC:  LDR.W           R0, [R9,#0x24]
47FEB0:  CMP             R0, #1
47FEB2:  BLT             loc_47FEF8
47FEB4:  LDR             R0, [SP,#0x28+var_20]
47FEB6:  MOV.W           R10, #0xD
47FEBA:  LDR.W           R4, [R9,#0xC4]
47FEBE:  ADD.W           R11, R0, #0x1C
47FEC2:  LDR.W           R0, [R11,#0x18]
47FEC6:  SUB.W           R3, R11, #0x10
47FECA:  LDR.W           R1, [R8]
47FECE:  LDR.W           R5, [R11]
47FED2:  MULS            R0, R1
47FED4:  LDR.W           R1, [R6],#4
47FED8:  ADD.W           R2, R1, R0,LSL#2
47FEDC:  MOV             R0, R9
47FEDE:  MOV             R1, R4
47FEE0:  BLX             R5
47FEE2:  LDR.W           R1, [R9,#0x24]
47FEE6:  SUB.W           R0, R10, #0xC
47FEEA:  ADD.W           R11, R11, #4
47FEEE:  ADD.W           R10, R10, #1
47FEF2:  ADDS            R4, #0x54 ; 'T'
47FEF4:  CMP             R0, R1
47FEF6:  BLT             loc_47FEC2
47FEF8:  LDR             R5, [SP,#0x28+var_20]
47FEFA:  MOVS            R2, #0
47FEFC:  LDR.W           LR, [R7,#arg_8]
47FF00:  STR             R2, [R5,#0x2C]
47FF02:  LDR.W           R0, [R9,#0x114]
47FF06:  LDRD.W          R12, R10, [R7,#arg_0]
47FF0A:  LDR             R3, [R5,#0x30]
47FF0C:  SUBS            R4, R0, R2
47FF0E:  LDR.W           R1, [R10]
47FF12:  CMP             R4, R3
47FF14:  IT HI
47FF16:  MOVHI           R4, R3
47FF18:  LDR.W           R3, [R9,#0x1A4]
47FF1C:  SUB.W           R0, LR, R1
47FF20:  CMP             R4, R0
47FF22:  LDR             R6, [R3,#4]
47FF24:  ADD.W           R3, R12, R1,LSL#2
47FF28:  ADD.W           R1, R5, #0xC
47FF2C:  IT HI
47FF2E:  MOVHI           R4, R0
47FF30:  MOV             R0, R9
47FF32:  STR             R4, [SP,#0x28+var_28]
47FF34:  BLX             R6
47FF36:  LDR.W           R0, [R10]
47FF3A:  ADD             R0, R4
47FF3C:  STR.W           R0, [R10]
47FF40:  LDRD.W          R0, R1, [R5,#0x2C]
47FF44:  SUBS            R1, R1, R4
47FF46:  ADD             R0, R4
47FF48:  STRD.W          R0, R1, [R5,#0x2C]
47FF4C:  LDR.W           R1, [R9,#0x114]
47FF50:  CMP             R0, R1
47FF52:  ITTT GE
47FF54:  LDRGE.W         R0, [R8]
47FF58:  ADDGE           R0, #1
47FF5A:  STRGE.W         R0, [R8]
47FF5E:  ADD             SP, SP, #0xC
47FF60:  POP.W           {R8-R11}
47FF64:  POP             {R4-R7,PC}
