; =========================================================
; Game Engine Function: sub_8CCBC
; Address            : 0x8CCBC - 0x8D056
; =========================================================

8CCBC:  PUSH            {R4-R7,LR}
8CCBE:  ADD             R7, SP, #0xC
8CCC0:  PUSH.W          {R8-R11}
8CCC4:  SUB             SP, SP, #8
8CCC6:  LDR             R0, =(dword_1ACF68 - 0x8CCD8)
8CCC8:  MOVW            R1, #0x19B8
8CCCC:  MOVW            R2, #0x1570
8CCD0:  MOV.W           R12, #0
8CCD4:  ADD             R0, PC; dword_1ACF68
8CCD6:  LDR             R0, [R0]
8CCD8:  ADD.W           R11, R0, R2
8CCDC:  LDR             R1, [R0,R1]
8CCDE:  CBZ             R1, loc_8CCE8
8CCE0:  LDRB            R2, [R1,#9]
8CCE2:  LSLS            R2, R2, #0x1E
8CCE4:  IT PL
8CCE6:  MOVPL           R12, R1
8CCE8:  LDRD.W          R10, R5, [R11]
8CCEC:  LDRB.W          R1, [R0,#0xAF]
8CCF0:  MOV             R8, R5
8CCF2:  MOV             R9, R10
8CCF4:  CBZ             R1, loc_8CD2A
8CCF6:  VMOV.F32        S4, #4.0
8CCFA:  VMOV            S0, R5
8CCFE:  VMOV            S2, R10
8CD02:  VCMP.F32        S0, S4
8CD06:  VMRS            APSR_nzcv, FPSCR
8CD0A:  VMOV.F32        S6, S4
8CD0E:  VCMP.F32        S2, S4
8CD12:  IT GE
8CD14:  VMOVGE.F32      S6, S0
8CD18:  VMRS            APSR_nzcv, FPSCR
8CD1C:  IT GE
8CD1E:  VMOVGE.F32      S4, S2
8CD22:  VMOV            R8, S6
8CD26:  VMOV            R9, S4
8CD2A:  LDR.W           R1, [R11,#0x3FC]
8CD2E:  CMP             R1, #1
8CD30:  BLT             loc_8CDDA
8CD32:  LDR.W           R2, [R11,#0x404]
8CD36:  MOV             LR, #0x1000042
8CD3E:  SUBS            R2, #4
8CD40:  B               loc_8CD4A
8CD42:  SUBS            R1, #1
8CD44:  ADDS            R3, R1, #1
8CD46:  CMP             R3, #1
8CD48:  BLS             loc_8CDDA
8CD4A:  LDR.W           R4, [R2,R1,LSL#2]
8CD4E:  LDRB.W          R6, [R4,#0x7A]
8CD52:  CMP             R6, #0
8CD54:  BEQ             loc_8CD42
8CD56:  LDRB.W          R6, [R4,#0x81]
8CD5A:  CMP             R6, #0
8CD5C:  BNE             loc_8CD42
8CD5E:  LDR             R6, [R4,#8]
8CD60:  LSLS            R3, R6, #0x16
8CD62:  BMI             loc_8CD42
8CD64:  ANDS.W          R3, R6, LR
8CD68:  VLDR            S2, [R4,#0x1D0]
8CD6C:  MOV             R3, R10
8CD6E:  MOV             R6, R5
8CD70:  IT EQ
8CD72:  MOVEQ           R3, R9
8CD74:  VMOV            S0, R3
8CD78:  VSUB.F32        S4, S2, S0
8CD7C:  VLDR            S2, [R0,#0xE0]
8CD80:  IT EQ
8CD82:  MOVEQ           R6, R8
8CD84:  VCMP.F32        S2, S4
8CD88:  VMRS            APSR_nzcv, FPSCR
8CD8C:  BLT             loc_8CD42
8CD8E:  VMOV            S4, R6
8CD92:  VLDR            S6, [R4,#0x1D4]
8CD96:  VSUB.F32        S8, S6, S4
8CD9A:  VLDR            S6, [R0,#0xE4]
8CD9E:  VCMP.F32        S6, S8
8CDA2:  VMRS            APSR_nzcv, FPSCR
8CDA6:  BLT             loc_8CD42
8CDA8:  VLDR            S8, [R4,#0x1D8]
8CDAC:  VADD.F32        S0, S8, S0
8CDB0:  VCMP.F32        S2, S0
8CDB4:  VMRS            APSR_nzcv, FPSCR
8CDB8:  ITTTT MI
8CDBA:  VLDRMI          S0, [R4,#0x1DC]
8CDBE:  VADDMI.F32      S0, S0, S4
8CDC2:  VCMPMI.F32      S6, S0
8CDC6:  VMRSMI          APSR_nzcv, FPSCR
8CDCA:  BPL             loc_8CD42
8CDCC:  CMP.W           R12, #0
8CDD0:  IT EQ
8CDD2:  MOVEQ           R12, R4
8CDD4:  STR.W           R12, [R11,#0x440]
8CDD8:  B               loc_8CDE4
8CDDA:  CMP.W           R12, #0
8CDDE:  STR.W           R12, [R11,#0x440]
8CDE2:  BEQ             loc_8CDEA
8CDE4:  LDR.W           R1, [R12,#0x2FC]
8CDE8:  B               loc_8CDF0
8CDEA:  MOV.W           R12, #0
8CDEE:  MOVS            R1, #0
8CDF0:  LDR.W           LR, [R11,#0x52C]
8CDF4:  STR.W           R1, [R11,#0x444]
8CDF8:  CMP.W           LR, #1
8CDFC:  BLT             loc_8CE52
8CDFE:  LDR.W           R2, [R11,#0x534]
8CE02:  ADD.W           R3, LR, LR,LSL#3
8CE06:  ADD.W           R4, LR, #1
8CE0A:  ADD.W           R2, R2, R3,LSL#2
8CE0E:  SUB.W           R3, R2, #0x20 ; ' '
8CE12:  B               loc_8CE1C
8CE14:  SUBS            R4, #1
8CE16:  SUBS            R3, #0x24 ; '$'
8CE18:  CMP             R4, #1
8CE1A:  BLS             loc_8CE52
8CE1C:  LDR             R2, [R3]
8CE1E:  CMP             R2, #0
8CE20:  BEQ             loc_8CE14
8CE22:  LDRB            R5, [R2,#0xB]
8CE24:  LSLS            R5, R5, #0x1C
8CE26:  BPL             loc_8CE14
8CE28:  CMP             R1, #0
8CE2A:  ITT NE
8CE2C:  LDRNE.W         R3, [R1,#0x2FC]
8CE30:  CMPNE           R3, R2
8CE32:  BNE             loc_8CE38
8CE34:  MOVS            R1, #1
8CE36:  B               loc_8CE54
8CE38:  CMP             R1, R2
8CE3A:  BEQ             loc_8CE34
8CE3C:  LDR.W           R1, [R1,#0x2F8]
8CE40:  CMP             R1, #0
8CE42:  BNE             loc_8CE38
8CE44:  MOV.W           R12, #0
8CE48:  STR.W           R12, [R11,#0x440]
8CE4C:  STR.W           R12, [R11,#0x444]
8CE50:  B               loc_8CE34
8CE52:  MOVS            R1, #0
8CE54:  STR             R1, [SP,#0x24+var_24]
8CE56:  LDR             R1, [R0,#8]
8CE58:  STR             R1, [SP,#0x24+var_20]
8CE5A:  LSLS            R1, R1, #0x1B
8CE5C:  BMI             loc_8CE6E
8CE5E:  LDRB.W          R1, [R0,#0x3D8]
8CE62:  CBZ             R1, loc_8CE92
8CE64:  CMP.W           R12, #0
8CE68:  BEQ             loc_8CE80
8CE6A:  MOVS            R1, #1
8CE6C:  B               loc_8CE8E
8CE6E:  LDRB.W          R1, [R0,#0x3D8]
8CE72:  MOV.W           R12, #0
8CE76:  STR.W           R12, [R11,#0x440]
8CE7A:  STR.W           R12, [R11,#0x444]
8CE7E:  CBZ             R1, loc_8CE92
8CE80:  MOV             R1, LR
8CE82:  MOV.W           R12, #0
8CE86:  CMP.W           LR, #0
8CE8A:  IT NE
8CE8C:  MOVNE           R1, #1
8CE8E:  STRB.W          R1, [R0,#0x3E7]
8CE92:  LDRB.W          R10, [R0,#0xE8]
8CE96:  MOVS            R5, #0
8CE98:  LDRB.W          R1, [R0,#0x3D9]
8CE9C:  CMP.W           R10, #0
8CEA0:  IT EQ
8CEA2:  MOVEQ.W         R5, #0xFFFFFFFF
8CEA6:  CBZ             R1, loc_8CEB4
8CEA8:  ORRS.W          R1, R12, LR
8CEAC:  IT NE
8CEAE:  MOVNE           R1, #1
8CEB0:  STRB.W          R1, [R0,#0x3E8]
8CEB4:  LDRB.W          R8, [R0,#0xE9]
8CEB8:  CMP.W           R8, #0
8CEBC:  BEQ             loc_8CEE0
8CEBE:  CMP.W           R10, #0
8CEC2:  BEQ             loc_8CEDE
8CEC4:  ADD.W           R1, R0, R5,LSL#3
8CEC8:  VLDR            D17, [R0,#0x3B8]
8CECC:  VLDR            D16, [R1,#0x3B0]
8CED0:  VCMP.F64        D17, D16
8CED4:  VMRS            APSR_nzcv, FPSCR
8CED8:  IT MI
8CEDA:  MOVMI           R5, #1
8CEDC:  B               loc_8CEE0
8CEDE:  MOVS            R5, #1
8CEE0:  LDRB.W          R1, [R0,#0x3DA]
8CEE4:  CBZ             R1, loc_8CEF2
8CEE6:  ORRS.W          R1, R12, LR
8CEEA:  IT NE
8CEEC:  MOVNE           R1, #1
8CEEE:  STRB.W          R1, [R0,#0x3E9]
8CEF2:  LDRB.W          R9, [R0,#0xEA]
8CEF6:  CMP.W           R9, #0
8CEFA:  BEQ             loc_8CF1C
8CEFC:  ADDS            R1, R5, #1
8CEFE:  BEQ             loc_8CF1A
8CF00:  ADD.W           R1, R0, R5,LSL#3
8CF04:  VLDR            D17, [R0,#0x3C0]
8CF08:  VLDR            D16, [R1,#0x3B0]
8CF0C:  VCMP.F64        D17, D16
8CF10:  VMRS            APSR_nzcv, FPSCR
8CF14:  IT MI
8CF16:  MOVMI           R5, #2
8CF18:  B               loc_8CF1C
8CF1A:  MOVS            R5, #2
8CF1C:  LDRB.W          R1, [R0,#0x3DB]
8CF20:  CBZ             R1, loc_8CF2E
8CF22:  ORRS.W          R1, R12, LR
8CF26:  IT NE
8CF28:  MOVNE           R1, #1
8CF2A:  STRB.W          R1, [R0,#0x3EA]
8CF2E:  LDRB.W          R6, [R0,#0xEB]
8CF32:  CBZ             R6, loc_8CF54
8CF34:  ADDS            R1, R5, #1
8CF36:  BEQ             loc_8CF52
8CF38:  ADD.W           R1, R0, R5,LSL#3
8CF3C:  VLDR            D17, [R0,#0x3C8]
8CF40:  VLDR            D16, [R1,#0x3B0]
8CF44:  VCMP.F64        D17, D16
8CF48:  VMRS            APSR_nzcv, FPSCR
8CF4C:  IT MI
8CF4E:  MOVMI           R5, #3
8CF50:  B               loc_8CF54
8CF52:  MOVS            R5, #3
8CF54:  LDRB.W          R1, [R0,#0x3DC]
8CF58:  CBZ             R1, loc_8CF66
8CF5A:  ORRS.W          R1, R12, LR
8CF5E:  IT NE
8CF60:  MOVNE           R1, #1
8CF62:  STRB.W          R1, [R0,#0x3EB]
8CF66:  LDRB.W          R4, [R0,#0xEC]
8CF6A:  MOVW            R1, #0x2F34
8CF6E:  CBZ             R4, loc_8CF8E
8CF70:  ADDS            R2, R5, #1
8CF72:  BEQ             loc_8CF96
8CF74:  ADD.W           R2, R0, R5,LSL#3
8CF78:  VLDR            D17, [R0,#0x3D0]
8CF7C:  VLDR            D16, [R2,#0x3B0]
8CF80:  VCMP.F64        D17, D16
8CF84:  VMRS            APSR_nzcv, FPSCR
8CF88:  IT MI
8CF8A:  MOVMI           R5, #4
8CF8C:  B               loc_8CF98
8CF8E:  ADDS            R2, R5, #1
8CF90:  BNE             loc_8CF98
8CF92:  MOVS            R2, #1
8CF94:  B               loc_8CFA4
8CF96:  MOVS            R5, #4
8CF98:  ADDS            R2, R0, R5
8CF9A:  LDRB.W          R2, [R2,#0x3E7]
8CF9E:  CMP             R2, #0
8CFA0:  IT NE
8CFA2:  MOVNE           R2, #1
8CFA4:  ADDS            R5, R0, R1
8CFA6:  LDRB.W          R1, [R11,#0x7A8]
8CFAA:  CMP             R1, #0
8CFAC:  ITTE NE
8CFAE:  LDRBNE.W        R1, [R11,#0x7AC]
8CFB2:  UBFXNE.W        R1, R1, #4, #1
8CFB6:  MOVEQ           R1, #0
8CFB8:  ORRS            R1, R2
8CFBA:  ITTT EQ
8CFBC:  MOVEQ.W         R12, #0
8CFC0:  STREQ.W         R12, [R11,#0x440]
8CFC4:  STREQ.W         R12, [R11,#0x444]
8CFC8:  LDR             R3, [R5]
8CFCA:  ADDS            R1, R3, #1
8CFCC:  BEQ             loc_8CFD6
8CFCE:  CMP             R3, #0
8CFD0:  IT NE
8CFD2:  MOVNE           R3, #1
8CFD4:  B               loc_8CFFE
8CFD6:  CBZ             R2, loc_8CFF2
8CFD8:  CMP.W           R12, #0
8CFDC:  MOV.W           R3, #1
8CFE0:  ITTTT EQ
8CFE2:  ORREQ.W         R1, R8, R10
8CFE6:  ORREQ.W         R1, R1, R9
8CFEA:  ORREQ           R1, R6
8CFEC:  ORRSEQ.W        R1, R1, R4
8CFF0:  BNE             loc_8CFFE
8CFF2:  CMP.W           LR, #0
8CFF6:  IT NE
8CFF8:  MOVNE.W         LR, #1
8CFFC:  MOV             R3, LR
8CFFE:  LDR             R1, [R5,#4]
8D000:  STRB.W          R3, [R0,#0x354]
8D004:  ADDS            R2, R1, #1
8D006:  BEQ             loc_8D014
8D008:  CMP             R1, #0
8D00A:  IT NE
8D00C:  MOVNE           R1, #1
8D00E:  B               loc_8D022
8D010:  DCD dword_1ACF68 - 0x8CCD8
8D014:  LDR.W           R1, [R11,#0x460]
8D018:  CMP             R1, #0
8D01A:  IT NE
8D01C:  MOVNE           R1, #1
8D01E:  LDR             R2, [SP,#0x24+var_24]
8D020:  ORRS            R1, R2
8D022:  LDR             R2, [R5,#8]
8D024:  MOVS            R3, #0
8D026:  LDRB.W          R6, [R0,#0x359]
8D02A:  SUBS            R2, #1
8D02C:  CMN.W           R2, #2
8D030:  IT CC
8D032:  MOVCC           R3, #1
8D034:  LDR             R2, [SP,#0x24+var_20]
8D036:  STRB.W          R3, [R0,#0x356]
8D03A:  AND.W           R2, R2, #9
8D03E:  CMP             R2, #1
8D040:  IT NE
8D042:  MOVNE           R2, R1
8D044:  CMP             R6, #0
8D046:  IT EQ
8D048:  MOVEQ           R2, R1
8D04A:  STRB.W          R2, [R0,#0x355]
8D04E:  ADD             SP, SP, #8
8D050:  POP.W           {R8-R11}
8D054:  POP             {R4-R7,PC}
