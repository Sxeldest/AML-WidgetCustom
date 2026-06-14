; =========================================================
; Game Engine Function: _Z27RpBuildMeshGenerateTriStripP11RpBuildMeshPv
; Address            : 0x21AC10 - 0x21AE58
; =========================================================

21AC10:  PUSH            {R4-R7,LR}
21AC12:  ADD             R7, SP, #0xC
21AC14:  PUSH.W          {R8-R11}
21AC18:  SUB             SP, SP, #0xC
21AC1A:  MOV             R5, R0
21AC1C:  LDR             R0, =(RwEngineInstance_ptr - 0x21AC26)
21AC1E:  MOV             R6, R1
21AC20:  LDR             R1, [R5,#4]
21AC22:  ADD             R0, PC; RwEngineInstance_ptr
21AC24:  LDR             R0, [R0]; RwEngineInstance
21AC26:  LDR             R0, [R0]
21AC28:  LDR.W           R2, [R0,#0x12C]
21AC2C:  LSLS            R0, R1, #2
21AC2E:  BLX             R2
21AC30:  MOV             R10, R0
21AC32:  LDR             R0, [R5,#4]
21AC34:  CBZ             R0, loc_21AC4E
21AC36:  MOVS            R0, #0
21AC38:  MOVS            R2, #0
21AC3A:  LDR             R1, [R5,#8]
21AC3C:  ADD             R1, R0
21AC3E:  STR.W           R1, [R10,R2,LSL#2]
21AC42:  ADDS            R0, #0xC
21AC44:  LDR             R1, [R5,#4]
21AC46:  ADDS            R2, #1
21AC48:  CMP             R2, R1
21AC4A:  BCC             loc_21AC3A
21AC4C:  B               loc_21AC50
21AC4E:  MOVS            R1, #0; size_t
21AC50:  LDR             R3, =(sub_21AE78+1 - 0x21AC5A)
21AC52:  MOV             R0, R10; void *
21AC54:  MOVS            R2, #4; size_t
21AC56:  ADD             R3, PC; sub_21AE78 ; int (*)(const void *, const void *)
21AC58:  BLX             qsort
21AC5C:  LDR             R0, [R5,#4]
21AC5E:  CMP             R0, #2
21AC60:  BCC             loc_21AC82
21AC62:  LDR.W           R1, [R10]
21AC66:  MOVS            R4, #1
21AC68:  LDR             R2, [R1,#8]
21AC6A:  MOVS            R1, #1
21AC6C:  LDR.W           R3, [R10,R1,LSL#2]
21AC70:  ADDS            R1, #1
21AC72:  LDR             R3, [R3,#8]
21AC74:  CMP             R2, R3
21AC76:  IT NE
21AC78:  ADDNE           R4, #1
21AC7A:  CMP             R1, R0
21AC7C:  MOV             R2, R3
21AC7E:  BCC             loc_21AC6C
21AC80:  B               loc_21AC84
21AC82:  MOVS            R4, #1
21AC84:  LDR             R0, =(RwEngineInstance_ptr - 0x21AC8A)
21AC86:  ADD             R0, PC; RwEngineInstance_ptr
21AC88:  LDR             R0, [R0]; RwEngineInstance
21AC8A:  LDR             R0, [R0]
21AC8C:  LDR.W           R1, [R0,#0x12C]
21AC90:  LSLS            R0, R4, #2
21AC92:  BLX             R1
21AC94:  STR             R0, [SP,#0x28+var_20]
21AC96:  MOV.W           R9, #1
21AC9A:  STR             R5, [SP,#0x28+var_24]
21AC9C:  LDR             R0, [R5,#4]
21AC9E:  CMP             R0, #2
21ACA0:  BCC             loc_21ACF2
21ACA2:  MOV             R11, R6
21ACA4:  MOVS            R5, #0
21ACA6:  MOVS            R1, #0
21ACA8:  MOV.W           R8, #0
21ACAC:  ADD.W           R3, R10, R5,LSL#2
21ACB0:  LDR.W           R2, [R10,R5,LSL#2]
21ACB4:  ADDS            R6, R5, #1
21ACB6:  LDR             R3, [R3,#4]
21ACB8:  LDR             R2, [R2,#8]
21ACBA:  LDR             R3, [R3,#8]
21ACBC:  CMP             R2, R3
21ACBE:  BEQ             loc_21ACE4
21ACC0:  ADD.W           R0, R10, R1,LSL#2
21ACC4:  SUBS            R1, R5, R1
21ACC6:  ADDS            R1, #1
21ACC8:  BL              sub_21AF88
21ACCC:  LDR             R1, [SP,#0x28+var_20]
21ACCE:  STR.W           R0, [R1,R8,LSL#2]
21ACD2:  MOV             R1, R11
21ACD4:  LDRD.W          R2, R1, [R1,#4]
21ACD8:  BLX             R2
21ACDA:  LDR             R0, [SP,#0x28+var_24]
21ACDC:  ADD.W           R8, R8, #1
21ACE0:  MOV             R1, R6
21ACE2:  LDR             R0, [R0,#4]
21ACE4:  ADDS            R2, R5, #2
21ACE6:  MOV             R5, R6
21ACE8:  CMP             R2, R0
21ACEA:  BCC             loc_21ACAC
21ACEC:  ADDS            R2, R6, #1
21ACEE:  MOV             R6, R11
21ACF0:  B               loc_21ACFA
21ACF2:  MOV.W           R8, #0
21ACF6:  MOVS            R1, #0
21ACF8:  MOVS            R2, #1
21ACFA:  ADD.W           R0, R10, R1,LSL#2
21ACFE:  SUBS            R1, R2, R1
21AD00:  BL              sub_21AF88
21AD04:  LDR             R1, [SP,#0x28+var_20]
21AD06:  STR.W           R0, [R1,R8,LSL#2]
21AD0A:  LDR             R2, [R6,#4]
21AD0C:  STR             R6, [SP,#0x28+var_28]
21AD0E:  LDR             R1, [R6,#8]
21AD10:  BLX             R2
21AD12:  LDR             R0, =(RwEngineInstance_ptr - 0x21AD1C)
21AD14:  LSLS            R2, R4, #4
21AD16:  LDR             R6, [SP,#0x28+var_24]
21AD18:  ADD             R0, PC; RwEngineInstance_ptr
21AD1A:  LDR             R0, [R0]; RwEngineInstance
21AD1C:  LDR             R1, [R6,#4]
21AD1E:  LDR             R0, [R0]
21AD20:  LDR.W           R3, [R0,#0x12C]
21AD24:  ADD.W           R0, R1, R1,LSL#1
21AD28:  ADD.W           R0, R2, R0,LSL#2
21AD2C:  ADDS            R0, #0x14
21AD2E:  BLX             R3
21AD30:  MOV             R11, R0
21AD32:  MOVS            R0, #0
21AD34:  STR.W           R9, [R11]
21AD38:  ADD.W           R5, R11, #0x14
21AD3C:  STRH.W          R4, [R11,#4]
21AD40:  ADD.W           R9, R5, R4,LSL#4
21AD44:  STRH.W          R0, [R11,#6]
21AD48:  MOVS            R3, #0
21AD4A:  STR.W           R0, [R11,#8]
21AD4E:  STR.W           R0, [R11,#0xC]
21AD52:  LDR             R0, [R6,#4]
21AD54:  CMP             R0, #2
21AD56:  BCC             loc_21ADB6
21AD58:  MOV.W           R8, #0
21AD5C:  MOVS            R3, #0
21AD5E:  ADD.W           R2, R10, R8,LSL#2
21AD62:  LDR.W           R1, [R10,R8,LSL#2]
21AD66:  LDR             R2, [R2,#4]
21AD68:  LDR             R1, [R1,#8]
21AD6A:  LDR             R2, [R2,#8]
21AD6C:  CMP             R1, R2
21AD6E:  BEQ             loc_21ADA6
21AD70:  STR.W           R9, [R5]
21AD74:  MOV             R6, R3
21AD76:  LDR.W           R0, [R10,R8,LSL#2]
21AD7A:  MOV             R1, R5
21AD7C:  LDR             R0, [R0,#8]
21AD7E:  STR             R0, [R5,#8]
21AD80:  LDR             R0, [SP,#0x28+var_20]
21AD82:  LDR             R2, [SP,#0x28+var_28]
21AD84:  LDR.W           R0, [R0,R6,LSL#2]
21AD88:  BL              sub_21B208
21AD8C:  LDR             R0, [R5,#4]
21AD8E:  ADDS            R6, #1
21AD90:  LDR.W           R1, [R11,#8]
21AD94:  ADDS            R5, #0x10
21AD96:  MOV             R3, R6
21AD98:  ADD             R1, R0
21AD9A:  STR.W           R1, [R11,#8]
21AD9E:  ADD.W           R9, R9, R0,LSL#1
21ADA2:  LDR             R0, [SP,#0x28+var_24]
21ADA4:  LDR             R0, [R0,#4]
21ADA6:  ADD.W           R1, R8, #1
21ADAA:  ADD.W           R2, R8, #2
21ADAE:  CMP             R2, R0
21ADB0:  MOV             R8, R1
21ADB2:  BCC             loc_21AD5E
21ADB4:  B               loc_21ADB8
21ADB6:  MOVS            R1, #0
21ADB8:  STR.W           R9, [R5]
21ADBC:  LDR.W           R0, [R10,R1,LSL#2]
21ADC0:  MOV             R1, R5
21ADC2:  LDR             R0, [R0,#8]
21ADC4:  STR             R0, [R5,#8]
21ADC6:  LDR             R0, [SP,#0x28+var_20]
21ADC8:  LDR             R2, [SP,#0x28+var_28]
21ADCA:  LDR.W           R0, [R0,R3,LSL#2]
21ADCE:  BL              sub_21B208
21ADD2:  LDR             R0, =(RwEngineInstance_ptr - 0x21ADDA)
21ADD4:  LDR             R1, [R5,#4]
21ADD6:  ADD             R0, PC; RwEngineInstance_ptr
21ADD8:  LDR.W           R2, [R11,#8]
21ADDC:  LDR             R0, [R0]; RwEngineInstance
21ADDE:  ADD             R2, R1
21ADE0:  STR.W           R2, [R11,#8]
21ADE4:  ADD.W           R1, R9, R1,LSL#1
21ADE8:  SUB.W           R1, R1, R11
21ADEC:  LDR             R0, [R0]
21ADEE:  LDR.W           R2, [R0,#0x134]
21ADF2:  MOV             R0, R11
21ADF4:  BLX             R2
21ADF6:  MOV             R8, R0
21ADF8:  CBZ             R4, loc_21AE3E
21ADFA:  ADD.W           R0, R8, #0x14
21ADFE:  MOV             R2, R4
21AE00:  ADD.W           R1, R0, R4,LSL#4
21AE04:  LDR             R3, [R0,#4]
21AE06:  SUBS            R2, #1
21AE08:  STR             R1, [R0]
21AE0A:  ADD.W           R0, R0, #0x10
21AE0E:  ADD.W           R1, R1, R3,LSL#1
21AE12:  BNE             loc_21AE04
21AE14:  LDR             R0, =(RwEngineInstance_ptr - 0x21AE1C)
21AE16:  CMP             R4, #0
21AE18:  ADD             R0, PC; RwEngineInstance_ptr
21AE1A:  LDR             R0, [R0]; RwEngineInstance
21AE1C:  LDR             R0, [R0]
21AE1E:  LDR.W           R1, [R0,#0x130]
21AE22:  BEQ             loc_21AE4A
21AE24:  LDR             R0, =(RwEngineInstance_ptr - 0x21AE2C)
21AE26:  LDR             R5, [SP,#0x28+var_20]
21AE28:  ADD             R0, PC; RwEngineInstance_ptr
21AE2A:  LDR             R6, [R0]; RwEngineInstance
21AE2C:  LDR.W           R0, [R5],#4
21AE30:  BLX             R1
21AE32:  LDR             R0, [R6]
21AE34:  SUBS            R4, #1
21AE36:  LDR.W           R1, [R0,#0x130]
21AE3A:  BNE             loc_21AE2C
21AE3C:  B               loc_21AE4A
21AE3E:  LDR             R0, =(RwEngineInstance_ptr - 0x21AE44)
21AE40:  ADD             R0, PC; RwEngineInstance_ptr
21AE42:  LDR             R0, [R0]; RwEngineInstance
21AE44:  LDR             R0, [R0]
21AE46:  LDR.W           R1, [R0,#0x130]
21AE4A:  LDR             R0, [SP,#0x28+var_20]
21AE4C:  BLX             R1
21AE4E:  MOV             R0, R8
21AE50:  ADD             SP, SP, #0xC
21AE52:  POP.W           {R8-R11}
21AE56:  POP             {R4-R7,PC}
