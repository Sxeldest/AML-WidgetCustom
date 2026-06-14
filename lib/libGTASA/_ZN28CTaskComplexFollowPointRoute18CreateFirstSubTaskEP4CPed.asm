; =========================================================
; Game Engine Function: _ZN28CTaskComplexFollowPointRoute18CreateFirstSubTaskEP4CPed
; Address            : 0x51ED88 - 0x51EFBE
; =========================================================

51ED88:  PUSH            {R4-R7,LR}
51ED8A:  ADD             R7, SP, #0xC
51ED8C:  PUSH.W          {R8-R11}
51ED90:  SUB             SP, SP, #4
51ED92:  VPUSH           {D8-D11}
51ED96:  SUB             SP, SP, #0x18
51ED98:  MOV             R5, R0
51ED9A:  MOV             R4, R1
51ED9C:  LDRB.W          R0, [R5,#0x28]
51EDA0:  TST.W           R0, #8
51EDA4:  AND.W           R1, R0, #0xFD
51EDA8:  STRB.W          R1, [R5,#0x28]
51EDAC:  ITTT NE
51EDAE:  VMOVNE.I32      Q8, #0
51EDB2:  ADDNE.W         R0, R5, #0x2C ; ','
51EDB6:  VST1NE.32       {D16-D17}, [R0]
51EDBA:  LDR             R0, [R5,#0x20]
51EDBC:  LDR             R2, [R0]
51EDBE:  CMP             R2, #0
51EDC0:  BEQ.W           loc_51EF78
51EDC4:  LDRB.W          R1, [R4,#0x485]
51EDC8:  LSLS            R1, R1, #0x1F
51EDCA:  BNE.W           loc_51EF7C
51EDCE:  LDR             R1, [R5,#0xC]
51EDD0:  CMP             R1, #0
51EDD2:  BEQ.W           loc_51EF8C
51EDD6:  LDR             R1, [R4,#0x14]
51EDD8:  ADD.W           R11, R1, #0x30 ; '0'
51EDDC:  CMP             R1, #0
51EDDE:  IT EQ
51EDE0:  ADDEQ.W         R11, R4, #4
51EDE4:  CMP             R2, #1
51EDE6:  BLT.W           loc_51EF82
51EDEA:  VLDR            S16, =3.4028e38
51EDEE:  MOV.W           R6, #0xFFFFFFFF
51EDF2:  STR             R4, [SP,#0x58+var_58]
51EDF4:  MOVS            R4, #8
51EDF6:  MOV.W           R9, #1
51EDFA:  STR             R5, [SP,#0x58+var_50]
51EDFC:  STR             R2, [SP,#0x58+var_54]
51EDFE:  B               loc_51EE08
51EE00:  ADD.W           R9, R9, #1
51EE04:  LDR             R0, [R5,#0x20]
51EE06:  ADDS            R4, #0xC
51EE08:  CMP             R2, R9
51EE0A:  MOV             R8, R9
51EE0C:  IT EQ
51EE0E:  MOVEQ.W         R8, #0
51EE12:  ADD.W           R10, R0, R4
51EE16:  ADD.W           R1, R8, R8,LSL#1
51EE1A:  VLDR            S0, [R10,#-4]
51EE1E:  ADD.W           R0, R0, R1,LSL#2
51EE22:  VLDR            S2, [R0,#4]
51EE26:  VSUB.F32        S18, S2, S0
51EE2A:  VSTR            S18, [SP,#0x58+var_4C]
51EE2E:  VLDR            S0, [R10]
51EE32:  VLDR            S2, [R0,#8]
51EE36:  VSUB.F32        S20, S2, S0
51EE3A:  VSTR            S20, [SP,#0x58+var_48]
51EE3E:  VLDR            S2, [R0,#0xC]
51EE42:  ADD             R0, SP, #0x58+var_4C; this
51EE44:  VLDR            S0, [R10,#4]
51EE48:  VSUB.F32        S22, S2, S0
51EE4C:  VSTR            S22, [SP,#0x58+var_44]
51EE50:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
51EE54:  VLDR            S2, [R10,#-4]
51EE58:  VLDR            S0, [R11]
51EE5C:  VLDR            S10, [R10]
51EE60:  VLDR            S8, [R11,#4]
51EE64:  VSUB.F32        S5, S0, S2
51EE68:  VLDR            S12, [SP,#0x58+var_4C]
51EE6C:  VSUB.F32        S3, S8, S10
51EE70:  VLDR            S1, [SP,#0x58+var_48]
51EE74:  VLDR            S6, [R10,#4]
51EE78:  VLDR            S4, [R11,#8]
51EE7C:  VLDR            S14, [SP,#0x58+var_44]
51EE80:  VSUB.F32        S7, S4, S6
51EE84:  VMUL.F32        S5, S5, S12
51EE88:  VMUL.F32        S3, S3, S1
51EE8C:  VMUL.F32        S7, S7, S14
51EE90:  VADD.F32        S3, S5, S3
51EE94:  VADD.F32        S3, S3, S7
51EE98:  VCMPE.F32       S3, #0.0
51EE9C:  VMRS            APSR_nzcv, FPSCR
51EEA0:  BLE             loc_51EF10
51EEA2:  VMUL.F32        S5, S18, S18
51EEA6:  VMUL.F32        S7, S20, S20
51EEAA:  VADD.F32        S5, S5, S7
51EEAE:  VMUL.F32        S7, S22, S22
51EEB2:  VADD.F32        S5, S7, S5
51EEB6:  VSQRT.F32       S5, S5
51EEBA:  VCMPE.F32       S3, S5
51EEBE:  VMRS            APSR_nzcv, FPSCR
51EEC2:  BGE             loc_51EF10
51EEC4:  VMUL.F32        S1, S1, S3
51EEC8:  VMUL.F32        S12, S12, S3
51EECC:  VMUL.F32        S14, S14, S3
51EED0:  VADD.F32        S10, S10, S1
51EED4:  VADD.F32        S2, S2, S12
51EED8:  VADD.F32        S6, S6, S14
51EEDC:  VSUB.F32        S8, S8, S10
51EEE0:  VSUB.F32        S0, S0, S2
51EEE4:  VSUB.F32        S2, S4, S6
51EEE8:  VMUL.F32        S4, S8, S8
51EEEC:  VMUL.F32        S0, S0, S0
51EEF0:  VMUL.F32        S2, S2, S2
51EEF4:  VADD.F32        S0, S0, S4
51EEF8:  VMUL.F32        S4, S16, S16
51EEFC:  VADD.F32        S0, S2, S0
51EF00:  VCMPE.F32       S0, S4
51EF04:  VMRS            APSR_nzcv, FPSCR
51EF08:  ITT LT
51EF0A:  VMOVLT.F32      S16, S0
51EF0E:  MOVLT           R6, R8
51EF10:  LDRD.W          R2, R5, [SP,#0x58+var_54]
51EF14:  CMP             R2, R9
51EF16:  BNE.W           loc_51EE00
51EF1A:  ADDS            R0, R6, #1
51EF1C:  BNE             loc_51EF88
51EF1E:  LDR             R4, [SP,#0x58+var_58]
51EF20:  CMP             R2, #1
51EF22:  BLT             loc_51EF8A
51EF24:  LDR             R0, [R5,#0x20]
51EF26:  MOVS            R1, #0
51EF28:  VLDR            S0, =3.4028e38
51EF2C:  MOV.W           R6, #0xFFFFFFFF
51EF30:  VLDR            D16, [R11,#4]
51EF34:  ADDS            R0, #4
51EF36:  VLDR            S2, [R11]
51EF3A:  VLDR            S4, [R0]
51EF3E:  VMUL.F32        S8, S0, S0
51EF42:  VLDR            D17, [R0,#4]
51EF46:  ADDS            R0, #0xC
51EF48:  VSUB.F32        S4, S2, S4
51EF4C:  VSUB.F32        D17, D16, D17
51EF50:  VMUL.F32        D3, D17, D17
51EF54:  VMUL.F32        S4, S4, S4
51EF58:  VADD.F32        S4, S4, S6
51EF5C:  VADD.F32        S4, S4, S7
51EF60:  VCMPE.F32       S4, S8
51EF64:  VMRS            APSR_nzcv, FPSCR
51EF68:  ITT LT
51EF6A:  VMOVLT.F32      S0, S4
51EF6E:  MOVLT           R6, R1
51EF70:  ADDS            R1, #1
51EF72:  CMP             R2, R1
51EF74:  BNE             loc_51EF3A
51EF76:  B               loc_51EF8A
51EF78:  MOVS            R2, #0xC8
51EF7A:  B               loc_51EFA6
51EF7C:  MOV.W           R2, #0x2C0
51EF80:  B               loc_51EFA6
51EF82:  MOV.W           R6, #0xFFFFFFFF
51EF86:  B               loc_51EF8A
51EF88:  LDR             R4, [SP,#0x58+var_58]
51EF8A:  STR             R6, [R5,#0x24]
51EF8C:  MOV             R0, R5; this
51EF8E:  BLX             j__ZN28CTaskComplexFollowPointRoute14GetSubTaskTypeEv; CTaskComplexFollowPointRoute::GetSubTaskType(void)
51EF92:  MOV             R2, R0; int
51EF94:  LDRB.W          R0, [R5,#0x28]
51EF98:  LSLS            R0, R0, #0x1C
51EF9A:  BPL             loc_51EFA6
51EF9C:  MOV             R0, R5; this
51EF9E:  MOV             R1, R4; CPed *
51EFA0:  BLX             j__ZN28CTaskComplexFollowPointRoute16CalcGoToTaskTypeEP4CPedi; CTaskComplexFollowPointRoute::CalcGoToTaskType(CPed *,int)
51EFA4:  MOV             R2, R0
51EFA6:  MOV             R1, R2; int
51EFA8:  MOV             R0, R5; this
51EFAA:  MOV             R2, R4; CPed *
51EFAC:  BLX             j__ZN28CTaskComplexFollowPointRoute13CreateSubTaskEiP4CPed; CTaskComplexFollowPointRoute::CreateSubTask(int,CPed *)
51EFB0:  ADD             SP, SP, #0x18
51EFB2:  VPOP            {D8-D11}
51EFB6:  ADD             SP, SP, #4
51EFB8:  POP.W           {R8-R11}
51EFBC:  POP             {R4-R7,PC}
