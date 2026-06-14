; =========================================================
; Game Engine Function: sub_38CBE0
; Address            : 0x38CBE0 - 0x38D0BE
; =========================================================

38CBE0:  PUSH            {R4-R7,LR}
38CBE2:  ADD             R7, SP, #0xC
38CBE4:  PUSH.W          {R8-R11}
38CBE8:  SUB             SP, SP, #4
38CBEA:  VPUSH           {D8-D15}
38CBEE:  SUB             SP, SP, #0x28
38CBF0:  MOV             R9, R0
38CBF2:  LDRB.W          R0, [R9]
38CBF6:  TST.W           R0, #8
38CBFA:  BEQ             loc_38CC24
38CBFC:  LDR.W           R2, =(dword_932098 - 0x38CC04)
38CC00:  ADD             R2, PC; dword_932098
38CC02:  LDR             R2, [R2]
38CC04:  LDR             R2, [R2,#0xC]
38CC06:  CBZ             R2, loc_38CC24
38CC08:  LSLS            R0, R0, #0x1B
38CC0A:  BMI.W           loc_38CD8C
38CC0E:  MOV             R0, R9
38CC10:  ADD             SP, SP, #0x28 ; '('
38CC12:  VPOP            {D8-D15}
38CC16:  ADD             SP, SP, #4
38CC18:  POP.W           {R8-R11}
38CC1C:  POP.W           {R4-R7,LR}
38CC20:  B.W             sub_38D930
38CC24:  VLDR            S16, =0.0
38CC28:  MOV             R6, R1
38CC2A:  LDR.W           R2, [R6],#4
38CC2E:  VMOV.F32        S0, S16
38CC32:  LDR.W           R8, [R9,#0x10]
38CC36:  LDR             R0, [R6]; this
38CC38:  CBZ             R2, loc_38CC60
38CC3A:  VLDR            S0, =0.0
38CC3E:  ADDS            R1, #8
38CC40:  MOV             R2, R0
38CC42:  LDR             R3, [R2,#0x10]
38CC44:  CBZ             R3, loc_38CC58
38CC46:  LDR             R2, [R2,#0x14]
38CC48:  LDRB.W          R3, [R2,#0x2E]
38CC4C:  LSLS            R3, R3, #0x1B
38CC4E:  ITT MI
38CC50:  VLDRMI          S2, [R2,#0x18]
38CC54:  VADDMI.F32      S0, S0, S2
38CC58:  LDR.W           R2, [R1],#4
38CC5C:  CMP             R2, #0
38CC5E:  BNE             loc_38CC42
38CC60:  VMOV.F32        S18, #1.0
38CC64:  ADD.W           R10, SP, #0x88+var_6C
38CC68:  VMOV.F32        S28, S16
38CC6C:  ADD.W           R11, SP, #0x88+var_7C
38CC70:  VMOV.F32        S30, S16
38CC74:  MOVS            R1, #0
38CC76:  VMOV.F32        S17, S16
38CC7A:  MOVS            R2, #0
38CC7C:  VMOV.F32        S20, S16
38CC80:  MOVS            R3, #0
38CC82:  VMOV.F32        S22, S16
38CC86:  STR.W           R9, [SP,#0x88+var_80]
38CC8A:  VMOV.F32        S26, S16
38CC8E:  VSUB.F32        S0, S18, S0
38CC92:  VMOV.F32        S24, S16
38CC96:  VMOV            R5, S0
38CC9A:  MOV             R9, R6
38CC9C:  LDR             R6, [R0,#0x10]
38CC9E:  CMP             R6, #0
38CCA0:  BEQ             loc_38CD22
38CCA2:  MOV             R1, R10; CVector *
38CCA4:  MOV             R2, R11; CQuaternion *
38CCA6:  MOV             R3, R5; float
38CCA8:  BLX             j__ZN14CAnimBlendNode6UpdateER7CVectorR11CQuaternionf; CAnimBlendNode::Update(CVector &,CQuaternion &,float)
38CCAC:  LDR.W           R4, [R9]
38CCB0:  LDR             R0, [R4,#0x10]
38CCB2:  LDRB            R0, [R0,#4]
38CCB4:  LSLS            R0, R0, #0x1E
38CCB6:  BPL             loc_38CCDA
38CCB8:  LDR             R0, [R4,#0x14]
38CCBA:  VLDR            S4, [SP,#0x88+var_64]
38CCBE:  VLDR            S0, [SP,#0x88+var_6C]
38CCC2:  VLDR            S2, [SP,#0x88+var_68]
38CCC6:  VADD.F32        S26, S26, S4
38CCCA:  VLDR            S4, [R0,#0x18]
38CCCE:  VADD.F32        S20, S20, S0
38CCD2:  VADD.F32        S22, S22, S2
38CCD6:  VADD.F32        S24, S24, S4
38CCDA:  VLDR            S2, [SP,#0x88+var_7C]
38CCDE:  VLDR            S4, [SP,#0x88+var_78]
38CCE2:  VMUL.F32        S10, S17, S2
38CCE6:  VLDR            S6, [SP,#0x88+var_74]
38CCEA:  VMUL.F32        S8, S30, S4
38CCEE:  VLDR            S0, [SP,#0x88+var_70]
38CCF2:  VMUL.F32        S12, S28, S6
38CCF6:  VADD.F32        S8, S10, S8
38CCFA:  VMUL.F32        S10, S16, S0
38CCFE:  VADD.F32        S8, S8, S12
38CD02:  VADD.F32        S8, S8, S10
38CD06:  VCMPE.F32       S8, #0.0
38CD0A:  VMRS            APSR_nzcv, FPSCR
38CD0E:  BGE             loc_38CD26
38CD10:  VSUB.F32        S28, S28, S6
38CD14:  VSUB.F32        S30, S30, S4
38CD18:  VSUB.F32        S17, S17, S2
38CD1C:  VSUB.F32        S16, S16, S0
38CD20:  B               loc_38CD36
38CD22:  MOV             R4, R0
38CD24:  B               loc_38CD42
38CD26:  VADD.F32        S28, S28, S6
38CD2A:  VADD.F32        S30, S30, S4
38CD2E:  VADD.F32        S17, S17, S2
38CD32:  VADD.F32        S16, S16, S0
38CD36:  VMOV            R1, S28
38CD3A:  VMOV            R2, S30
38CD3E:  VMOV            R3, S17
38CD42:  MOV             R6, R9
38CD44:  ADDS            R4, #0x18
38CD46:  LDR.W           R0, [R6,#4]!
38CD4A:  STR.W           R4, [R9]
38CD4E:  CMP             R0, #0
38CD50:  BNE             loc_38CC9A
38CD52:  LDR             R6, [SP,#0x88+var_80]
38CD54:  LDRB            R0, [R6]
38CD56:  TST.W           R0, #2
38CD5A:  BNE.W           loc_38CF96
38CD5E:  VMUL.F32        S0, S17, S17
38CD62:  VMUL.F32        S2, S30, S30
38CD66:  VMUL.F32        S4, S28, S28
38CD6A:  VADD.F32        S0, S2, S0
38CD6E:  VMUL.F32        S2, S16, S16
38CD72:  VADD.F32        S0, S4, S0
38CD76:  VADD.F32        S0, S2, S0
38CD7A:  VCMP.F32        S0, #0.0
38CD7E:  VMRS            APSR_nzcv, FPSCR
38CD82:  BNE.W           loc_38CF64
38CD86:  MOV.W           R0, #0x3F800000
38CD8A:  B               loc_38CF8C
38CD8C:  VLDR            S16, =0.0
38CD90:  MOV             R8, R1
38CD92:  LDR.W           R0, [R9,#0x10]
38CD96:  VMOV.F32        S0, S16
38CD9A:  STR             R0, [SP,#0x88+var_84]
38CD9C:  LDR.W           R2, [R8],#4
38CDA0:  LDR.W           R0, [R8]; this
38CDA4:  CMP             R2, #0
38CDA6:  BEQ             loc_38CDD2
38CDA8:  VLDR            S0, =0.0
38CDAC:  ADD.W           R2, R1, #8
38CDB0:  MOV             R3, R0
38CDB2:  LDR             R6, [R3,#0x10]
38CDB4:  CBZ             R6, loc_38CDCA
38CDB6:  LDR             R3, [R3,#0x14]
38CDB8:  LDRH            R6, [R3,#0x2E]
38CDBA:  AND.W           R6, R6, #0x410
38CDBE:  CMP             R6, #0x10
38CDC0:  ITT EQ
38CDC2:  VLDREQ          S2, [R3,#0x18]
38CDC6:  VADDEQ.F32      S0, S0, S2
38CDCA:  LDR.W           R3, [R2],#4
38CDCE:  CMP             R3, #0
38CDD0:  BNE             loc_38CDB2
38CDD2:  VMOV.F32        S2, #1.0
38CDD6:  ADD.W           R6, R1, #8
38CDDA:  VMOV.F32        S20, S16
38CDDE:  ADD             R4, SP, #0x88+var_6C
38CDE0:  VMOV.F32        S18, S16
38CDE4:  VSUB.F32        S0, S2, S0
38CDE8:  VMOV            R5, S0
38CDEC:  LDR             R1, [R0,#0x10]
38CDEE:  CBZ             R1, loc_38CE22
38CDF0:  LDRB            R1, [R1,#4]
38CDF2:  LSLS            R1, R1, #0x1E
38CDF4:  ITTT MI
38CDF6:  LDRMI           R1, [R0,#0x14]
38CDF8:  LDRBMI.W        R1, [R1,#0x2E]
38CDFC:  MOVSMI.W        R1, R1,LSL#25
38CE00:  BPL             loc_38CE22
38CE02:  MOV             R1, R4; CVector *
38CE04:  MOV             R2, R5; float
38CE06:  BLX             j__ZN14CAnimBlendNode21GetCurrentTranslationER7CVectorf; CAnimBlendNode::GetCurrentTranslation(CVector &,float)
38CE0A:  VLDR            S0, [SP,#0x88+var_6C]
38CE0E:  VLDR            S2, [SP,#0x88+var_68]
38CE12:  VLDR            S4, [SP,#0x88+var_64]
38CE16:  VADD.F32        S16, S16, S0
38CE1A:  VADD.F32        S20, S20, S2
38CE1E:  VADD.F32        S18, S18, S4
38CE22:  LDR.W           R0, [R6],#4
38CE26:  CMP             R0, #0
38CE28:  BNE             loc_38CDEC
38CE2A:  VLDR            S26, =0.0
38CE2E:  MOVS            R4, #0
38CE30:  LDR.W           R1, [R8]
38CE34:  MOVS            R0, #0
38CE36:  VMOV.F32        S22, S26
38CE3A:  MOV.W           R10, #0
38CE3E:  VMOV.F32        S28, S26
38CE42:  MOV.W           R11, #0
38CE46:  VMOV.F32        S21, S26
38CE4A:  STR             R0, [SP,#0x88+var_80]
38CE4C:  VMOV.F32        S23, S26
38CE50:  VMOV.F32        S25, S26
38CE54:  VMOV.F32        S30, S26
38CE58:  VMOV.F32        S17, S26
38CE5C:  VMOV.F32        S19, S26
38CE60:  VMOV.F32        S27, S26
38CE64:  VMOV.F32        S29, S26
38CE68:  VMOV.F32        S31, S26
38CE6C:  VMOV.F32        S24, S26
38CE70:  LDR             R0, [R1,#0x10]
38CE72:  MOV             R6, R8
38CE74:  CMP             R0, #0
38CE76:  BEQ             loc_38CF1A
38CE78:  MOV             R0, R1; this
38CE7A:  ADD             R1, SP, #0x88+var_6C; CVector *
38CE7C:  ADD             R2, SP, #0x88+var_7C; CQuaternion *
38CE7E:  MOV             R3, R5; float
38CE80:  BLX             j__ZN14CAnimBlendNode6UpdateER7CVectorR11CQuaternionf; CAnimBlendNode::Update(CVector &,CQuaternion &,float)
38CE84:  VLDR            S0, [SP,#0x88+var_7C]
38CE88:  MOV             R1, R0
38CE8A:  VLDR            S2, [SP,#0x88+var_78]
38CE8E:  VLDR            S4, [SP,#0x88+var_74]
38CE92:  VADD.F32        S24, S24, S0
38CE96:  VADD.F32        S31, S31, S2
38CE9A:  LDR             R0, [R6]; this
38CE9C:  VADD.F32        S29, S29, S4
38CEA0:  VLDR            S6, [SP,#0x88+var_70]
38CEA4:  LDR             R2, [R0,#0x10]
38CEA6:  VADD.F32        S27, S27, S6
38CEAA:  VMOV            R11, S24
38CEAE:  LDRB            R2, [R2,#4]
38CEB0:  VMOV            R10, S31
38CEB4:  VMOV            R4, S29
38CEB8:  LSLS            R2, R2, #0x1E
38CEBA:  BPL             loc_38CF1C
38CEBC:  VLDR            S0, [SP,#0x88+var_6C]
38CEC0:  VLDR            S2, [SP,#0x88+var_68]
38CEC4:  VLDR            S4, [SP,#0x88+var_64]
38CEC8:  VADD.F32        S19, S19, S0
38CECC:  LDR             R2, [R0,#0x14]
38CECE:  VADD.F32        S17, S17, S2
38CED2:  VADD.F32        S30, S30, S4
38CED6:  LDRB.W          R2, [R2,#0x2E]
38CEDA:  LSLS            R2, R2, #0x19
38CEDC:  BPL             loc_38CF1C
38CEDE:  VADD.F32        S26, S26, S4
38CEE2:  LDR             R2, [SP,#0x88+var_80]
38CEE4:  VADD.F32        S22, S22, S2
38CEE8:  CMP             R1, #1
38CEEA:  VADD.F32        S28, S28, S0
38CEEE:  ORR.W           R2, R2, R1
38CEF2:  STR             R2, [SP,#0x88+var_80]
38CEF4:  BNE             loc_38CF1C
38CEF6:  ADD             R1, SP, #0x88+var_6C; CVector *
38CEF8:  MOV             R2, R5; float
38CEFA:  BLX             j__ZN14CAnimBlendNode17GetEndTranslationER7CVectorf; CAnimBlendNode::GetEndTranslation(CVector &,float)
38CEFE:  VLDR            S0, [SP,#0x88+var_6C]
38CF02:  VLDR            S2, [SP,#0x88+var_68]
38CF06:  VLDR            S4, [SP,#0x88+var_64]
38CF0A:  VADD.F32        S25, S25, S0
38CF0E:  VADD.F32        S23, S23, S2
38CF12:  LDR             R0, [R6]
38CF14:  VADD.F32        S21, S21, S4
38CF18:  B               loc_38CF1C
38CF1A:  MOV             R0, R1
38CF1C:  MOV             R8, R6
38CF1E:  ADDS            R0, #0x18
38CF20:  LDR.W           R1, [R8,#4]!
38CF24:  STR             R0, [R6]
38CF26:  CMP             R1, #0
38CF28:  BNE             loc_38CE70
38CF2A:  LDRB.W          R0, [R9]
38CF2E:  TST.W           R0, #2
38CF32:  BNE             loc_38D02E
38CF34:  VMUL.F32        S0, S24, S24
38CF38:  VMUL.F32        S2, S31, S31
38CF3C:  VMUL.F32        S4, S29, S29
38CF40:  VADD.F32        S0, S2, S0
38CF44:  VMUL.F32        S2, S27, S27
38CF48:  VADD.F32        S0, S4, S0
38CF4C:  VADD.F32        S0, S2, S0
38CF50:  VCMP.F32        S0, #0.0
38CF54:  VMRS            APSR_nzcv, FPSCR
38CF58:  BNE             loc_38CFF4
38CF5A:  MOV.W           R0, #0x3F800000
38CF5E:  B               loc_38D020
38CF60:  DCFS 0.0
38CF64:  VSQRT.F32       S0, S0
38CF68:  VDIV.F32        S0, S18, S0
38CF6C:  VMUL.F32        S2, S16, S0
38CF70:  VMUL.F32        S4, S28, S0
38CF74:  VMUL.F32        S6, S30, S0
38CF78:  VMUL.F32        S0, S17, S0
38CF7C:  VMOV            R0, S2
38CF80:  VMOV            R1, S4
38CF84:  VMOV            R2, S6
38CF88:  VMOV            R3, S0
38CF8C:  STRD.W          R3, R2, [R8]
38CF90:  STRD.W          R1, R0, [R8,#8]
38CF94:  LDRB            R0, [R6]
38CF96:  LSLS            R0, R0, #0x1D
38CF98:  BMI             loc_38CFE6
38CF9A:  VMUL.F32        S4, S20, S24
38CF9E:  VMUL.F32        S0, S26, S24
38CFA2:  VMUL.F32        S2, S22, S24
38CFA6:  VSUB.F32        S6, S18, S24
38CFAA:  VSTR            S4, [R8,#0x10]
38CFAE:  VSTR            S2, [R8,#0x14]
38CFB2:  VSTR            S0, [R8,#0x18]
38CFB6:  VLDR            S8, [R6,#4]
38CFBA:  VMUL.F32        S8, S6, S8
38CFBE:  VADD.F32        S4, S4, S8
38CFC2:  VSTR            S4, [R8,#0x10]
38CFC6:  VLDR            S4, [R6,#8]
38CFCA:  VMUL.F32        S4, S6, S4
38CFCE:  VADD.F32        S2, S2, S4
38CFD2:  VSTR            S2, [R8,#0x14]
38CFD6:  VLDR            S2, [R6,#0xC]
38CFDA:  VMUL.F32        S2, S6, S2
38CFDE:  VADD.F32        S0, S0, S2
38CFE2:  VSTR            S0, [R8,#0x18]
38CFE6:  ADD             SP, SP, #0x28 ; '('
38CFE8:  VPOP            {D8-D15}
38CFEC:  ADD             SP, SP, #4
38CFEE:  POP.W           {R8-R11}
38CFF2:  POP             {R4-R7,PC}
38CFF4:  VSQRT.F32       S0, S0
38CFF8:  VMOV.F32        S2, #1.0
38CFFC:  VDIV.F32        S0, S2, S0
38D000:  VMUL.F32        S2, S27, S0
38D004:  VMUL.F32        S4, S29, S0
38D008:  VMUL.F32        S6, S31, S0
38D00C:  VMUL.F32        S0, S24, S0
38D010:  VMOV            R0, S2
38D014:  VMOV            R4, S4
38D018:  VMOV            R10, S6
38D01C:  VMOV            R11, S0
38D020:  LDR             R1, [SP,#0x88+var_84]
38D022:  STRD.W          R11, R10, [R1]
38D026:  STRD.W          R4, R0, [R1,#8]
38D02A:  LDRB.W          R0, [R9]
38D02E:  LSLS            R0, R0, #0x1D
38D030:  BMI             loc_38CFE6
38D032:  LDR             R0, =(dword_932098 - 0x38D040)
38D034:  VSUB.F32        S0, S22, S20
38D038:  VSUB.F32        S2, S28, S16
38D03C:  ADD             R0, PC; dword_932098
38D03E:  VSUB.F32        S4, S26, S18
38D042:  LDR             R0, [R0]
38D044:  LDR             R1, [R0,#0xC]
38D046:  VSTR            S2, [R1]
38D04A:  VSTR            S0, [R1,#4]
38D04E:  VSTR            S4, [R1,#8]
38D052:  LDR             R1, [SP,#0x88+var_80]
38D054:  LSLS            R1, R1, #0x1F
38D056:  BEQ             loc_38D07E
38D058:  LDR             R0, [R0,#0xC]
38D05A:  VLDR            S0, [R0]
38D05E:  VLDR            S2, [R0,#4]
38D062:  VLDR            S4, [R0,#8]
38D066:  VADD.F32        S0, S25, S0
38D06A:  VADD.F32        S2, S23, S2
38D06E:  VADD.F32        S4, S21, S4
38D072:  VSTR            S0, [R0]
38D076:  VSTR            S2, [R0,#4]
38D07A:  VSTR            S4, [R0,#8]
38D07E:  VSUB.F32        S0, S30, S26
38D082:  LDR             R0, [SP,#0x88+var_84]
38D084:  VSUB.F32        S4, S19, S28
38D088:  VSUB.F32        S2, S17, S22
38D08C:  VSTR            S4, [R0,#0x10]
38D090:  VSTR            S2, [R0,#0x14]
38D094:  VSTR            S0, [R0,#0x18]
38D098:  VLDR            S6, [R9,#4]
38D09C:  VADD.F32        S4, S4, S6
38D0A0:  VSTR            S4, [R0,#0x10]
38D0A4:  VLDR            S4, [R9,#8]
38D0A8:  VADD.F32        S2, S2, S4
38D0AC:  VSTR            S2, [R0,#0x14]
38D0B0:  VLDR            S2, [R9,#0xC]
38D0B4:  VADD.F32        S0, S0, S2
38D0B8:  VSTR            S0, [R0,#0x18]
38D0BC:  B               loc_38CFE6
