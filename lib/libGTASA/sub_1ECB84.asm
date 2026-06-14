; =========================================================
; Game Engine Function: sub_1ECB84
; Address            : 0x1ECB84 - 0x1ECE7C
; =========================================================

1ECB84:  PUSH            {R4-R7,LR}
1ECB86:  ADD             R7, SP, #0xC
1ECB88:  PUSH.W          {R8-R11}
1ECB8C:  SUB             SP, SP, #4
1ECB8E:  VPUSH           {D8-D15}
1ECB92:  SUB             SP, SP, #0x58
1ECB94:  MOV             R10, R1
1ECB96:  MOV             R6, R0
1ECB98:  ADD             R0, SP, #0xB8+var_80
1ECB9A:  ADD             R1, SP, #0xB8+var_64
1ECB9C:  MOV             R4, R3
1ECB9E:  MOV             R8, R2
1ECBA0:  BLX             j__Z22_rtCharsetAtariFontGetP13RtCharsetDescPi; _rtCharsetAtariFontGet(RtCharsetDesc *,int *)
1ECBA4:  LDR             R0, =(RwEngineInstance_ptr - 0x1ECBAE)
1ECBA6:  VLDR            S0, [R8,#0xC]
1ECBAA:  ADD             R0, PC; RwEngineInstance_ptr
1ECBAC:  VLDR            S2, [R8,#0x10]
1ECBB0:  LDR             R0, [R0]; RwEngineInstance
1ECBB2:  LDR             R0, [R0]
1ECBB4:  LDR             R5, [R0]
1ECBB6:  LDR             R0, [R5,#0x60]
1ECBB8:  VCVT.F32.S32    S18, S0
1ECBBC:  VCVT.F32.S32    S16, S2
1ECBC0:  LDR             R1, [R0,#0xC]
1ECBC2:  STR             R1, [SP,#0xB8+var_88]
1ECBC4:  LDR             R0, [R0,#0x10]
1ECBC6:  STR             R0, [SP,#0xB8+var_64]
1ECBC8:  BLX             j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
1ECBCC:  LDR             R1, [R7,#arg_10]
1ECBCE:  VLDR            S0, [R5,#0x80]
1ECBD2:  CBNZ            R1, loc_1ECBDC
1ECBD4:  LDR             R1, =(byte_6BD528 - 0x1ECBDC)
1ECBD6:  MOVS            R2, #1
1ECBD8:  ADD             R1, PC; byte_6BD528
1ECBDA:  STRB            R2, [R1]
1ECBDC:  MOV.W           R8, #0
1ECBE0:  CMP.W           R10, #0
1ECBE4:  BEQ.W           loc_1ECE6C
1ECBE8:  VMOV.F32        S2, #1.0
1ECBEC:  LDRD.W          LR, R3, [SP,#0xB8+var_80]
1ECBF0:  VMOV            S28, R0
1ECBF4:  LDR             R0, [SP,#0xB8+var_78]
1ECBF6:  LDR.W           R11, [R7,#arg_0]
1ECBFA:  MOV             R2, R3
1ECBFC:  LDR             R5, [SP,#0xB8+var_64]
1ECBFE:  MOVS            R1, #0x20 ; ' '
1ECC00:  STR             R0, [SP,#0xB8+var_9C]
1ECC02:  ADD             R3, R11
1ECC04:  LDR             R0, [SP,#0xB8+var_74]
1ECC06:  CMP             R5, R11
1ECC08:  STR             R0, [SP,#0xB8+var_A0]
1ECC0A:  MOV.W           R0, #0
1ECC0E:  IT GT
1ECC10:  MOVGT           R0, #1
1ECC12:  STR             R2, [SP,#0xB8+var_98]
1ECC14:  CMP             R3, #0
1ECC16:  MOV.W           R2, #0
1ECC1A:  IT GT
1ECC1C:  MOVGT           R2, #1
1ECC1E:  VDIV.F32        S16, S2, S16
1ECC22:  ANDS            R0, R2
1ECC24:  STR             R0, [SP,#0xB8+var_94]
1ECC26:  LDR             R0, =(byte_6BD528 - 0x1ECC2E)
1ECC28:  MOV             R2, R11
1ECC2A:  ADD             R0, PC; byte_6BD528
1ECC2C:  LDRB            R0, [R0]
1ECC2E:  CMP             R0, #0
1ECC30:  SUB.W           R0, R5, #1
1ECC34:  IT NE
1ECC36:  MOVNE           R1, #0
1ECC38:  CMP.W           R11, #0
1ECC3C:  STR             R1, [SP,#0xB8+var_84]
1ECC3E:  IT LT
1ECC40:  MOVLT           R2, #0
1ECC42:  CMP             R3, R5
1ECC44:  SUB.W           R1, R0, R2
1ECC48:  STR             R1, [SP,#0xB8+var_AC]
1ECC4A:  STR             R5, [SP,#0xB8+var_A4]
1ECC4C:  STR             R3, [SP,#0xB8+var_A8]
1ECC4E:  IT LT
1ECC50:  MOVLT           R0, R3
1ECC52:  LDR.W           R12, [SP,#0xB8+var_88]
1ECC56:  VDIV.F32        S18, S2, S18
1ECC5A:  VDIV.F32        S22, S2, S0
1ECC5E:  VMOV            S0, R0
1ECC62:  SUB.W           R0, R12, #1
1ECC66:  STR             R0, [SP,#0xB8+var_B0]
1ECC68:  AND.W           R0, R11, R11,ASR#31
1ECC6C:  VMOV            S2, R2
1ECC70:  STR             R0, [SP,#0xB8+var_B4]
1ECC72:  LDR             R0, [SP,#0xB8+var_6C]
1ECC74:  VMOV.F32        S20, #0.5
1ECC78:  STR             R0, [SP,#0xB8+var_B8]
1ECC7A:  VCVT.F32.S32    S2, S2
1ECC7E:  VCVT.F32.S32    S0, S0
1ECC82:  VMUL.F32        S24, S16, S20
1ECC86:  VMUL.F32        S26, S18, S20
1ECC8A:  VADD.F32        S30, S2, S20
1ECC8E:  VADD.F32        S17, S0, S20
1ECC92:  LDRB            R0, [R6]
1ECC94:  LDR             R1, [SP,#0xB8+var_84]
1ECC96:  CMP             R1, R0
1ECC98:  BEQ.W           loc_1ECE5E
1ECC9C:  CMP             R4, R12
1ECC9E:  MOV.W           R1, #0
1ECCA2:  ADD.W           R11, LR, R4
1ECCA6:  IT LT
1ECCA8:  MOVLT           R1, #1
1ECCAA:  CMP.W           R11, #1
1ECCAE:  BLT.W           loc_1ECE5E
1ECCB2:  LDR             R2, [SP,#0xB8+var_94]
1ECCB4:  ANDS            R1, R2
1ECCB6:  CMP             R1, #1
1ECCB8:  BNE.W           loc_1ECE5E
1ECCBC:  LDR.W           R9, [SP,#0xB8+var_B8]
1ECCC0:  SUB.W           R5, R0, #0x20 ; ' '
1ECCC4:  STR.W           R8, [SP,#0xB8+var_8C]
1ECCC8:  MOV             R8, LR
1ECCCA:  MOV             R0, R5
1ECCCC:  MOV             R1, R9
1ECCCE:  BLX             __aeabi_uidiv
1ECCD2:  LDR             R1, [SP,#0xB8+var_88]
1ECCD4:  MLS.W           LR, R0, R9, R5
1ECCD8:  CMP             R11, R1
1ECCDA:  LDR             R1, [SP,#0xB8+var_B0]
1ECCDC:  MOV             R2, R1
1ECCDE:  IT LT
1ECCE0:  MOVLT           R2, R11
1ECCE2:  CMP             R4, #0
1ECCE4:  VMOV            S0, R2
1ECCE8:  MOV             R2, R4
1ECCEA:  IT LT
1ECCEC:  MOVLT           R2, #0
1ECCEE:  LDR.W           R12, [SP,#0xB8+var_A0]
1ECCF2:  SUBS            R1, R1, R2
1ECCF4:  STR             R1, [SP,#0xB8+var_90]
1ECCF6:  LDR             R1, [SP,#0xB8+var_B4]
1ECCF8:  VMOV            S4, R2
1ECCFC:  MUL.W           R3, R12, R0
1ECD00:  LDR.W           R9, [SP,#0xB8+var_9C]
1ECD04:  MUL.W           R5, LR, R9
1ECD08:  SUBS            R3, R3, R1
1ECD0A:  LDR             R1, [SP,#0xB8+var_AC]
1ECD0C:  VCVT.F32.S32    S0, S0
1ECD10:  VMOV            S2, R3
1ECD14:  ADD             R1, R3
1ECD16:  VCVT.F32.S32    S4, S4
1ECD1A:  VCVT.F32.S32    S2, S2
1ECD1E:  LDRD.W          R3, R2, [SP,#0xB8+var_A8]
1ECD22:  CMP             R3, R2
1ECD24:  LDR             R2, [SP,#0xB8+var_98]
1ECD26:  IT LT
1ECD28:  MLALT.W         R1, R12, R0, R2
1ECD2C:  CMP             R4, #0
1ECD2E:  MOV.W           R2, #1
1ECD32:  VADD.F32        S0, S0, S20
1ECD36:  VMOV            S6, R1
1ECD3A:  MOV.W           R1, #3
1ECD3E:  VADD.F32        S4, S4, S20
1ECD42:  VCVT.F32.S32    S6, S6
1ECD46:  IT LT
1ECD48:  SUBLT           R5, R5, R4
1ECD4A:  LDR             R0, [SP,#0xB8+var_90]
1ECD4C:  VMOV            S8, R5
1ECD50:  LDR.W           R12, [SP,#0xB8+var_88]
1ECD54:  VMUL.F32        S2, S16, S2
1ECD58:  ADD             R0, R5
1ECD5A:  VCVT.F32.S32    S8, S8
1ECD5E:  CMP             R11, R12
1ECD60:  IT LT
1ECD62:  MLALT.W         R0, LR, R9, R8
1ECD66:  MOV             LR, R8
1ECD68:  LDR.W           R8, [SP,#0xB8+var_8C]
1ECD6C:  MOV.W           R9, #2
1ECD70:  VMOV            S10, R0
1ECD74:  LDR             R0, [R7,#arg_4]
1ECD76:  VMUL.F32        S6, S16, S6
1ECD7A:  VCVT.F32.S32    S10, S10
1ECD7E:  ORR.W           R1, R1, R8,LSL#2
1ECD82:  VMUL.F32        S8, S18, S8
1ECD86:  ORR.W           R2, R2, R8,LSL#2
1ECD8A:  RSB.W           R1, R1, R1,LSL#3
1ECD8E:  VADD.F32        S2, S24, S2
1ECD92:  MOV             R5, R0
1ECD94:  RSB.W           R2, R2, R2,LSL#3
1ECD98:  ADD.W           R0, R5, R1,LSL#2
1ECD9C:  ORR.W           R1, R9, R8,LSL#2
1ECDA0:  RSB.W           R3, R8, R8,LSL#3
1ECDA4:  ADD.W           R2, R5, R2,LSL#2
1ECDA8:  VADD.F32        S6, S24, S6
1ECDAC:  RSB.W           R1, R1, R1,LSL#3
1ECDB0:  VMUL.F32        S10, S18, S10
1ECDB4:  ADD.W           R3, R5, R3,LSL#4
1ECDB8:  VADD.F32        S8, S26, S8
1ECDBC:  ADD.W           R1, R5, R1,LSL#2
1ECDC0:  MOV.W           R5, #0xFFFFFFFF
1ECDC4:  VADD.F32        S10, S26, S10
1ECDC8:  VSTR            S8, [R3,#0x14]
1ECDCC:  VSTR            S2, [R3,#0x18]
1ECDD0:  VSTR            S8, [R2,#0x14]
1ECDD4:  VSTR            S6, [R2,#0x18]
1ECDD8:  VSTR            S10, [R1,#0x14]
1ECDDC:  VSTR            S6, [R1,#0x18]
1ECDE0:  VSTR            S10, [R0,#0x14]
1ECDE4:  VSTR            S2, [R0,#0x18]
1ECDE8:  VSTR            S4, [R3]
1ECDEC:  VSTR            S30, [R3,#4]
1ECDF0:  VSTR            S28, [R3,#8]
1ECDF4:  VSTR            S22, [R3,#0xC]
1ECDF8:  STR             R5, [R3,#0x10]
1ECDFA:  STR             R5, [R2,#0x10]
1ECDFC:  VSTR            S4, [R2]
1ECE00:  VSTR            S17, [R2,#4]
1ECE04:  VSTR            S28, [R2,#8]
1ECE08:  VSTR            S22, [R2,#0xC]
1ECE0C:  LDR             R2, [R7,#arg_8]
1ECE0E:  VSTR            S0, [R1]
1ECE12:  VSTR            S17, [R1,#4]
1ECE16:  VSTR            S28, [R1,#8]
1ECE1A:  VSTR            S22, [R1,#0xC]
1ECE1E:  STR             R5, [R1,#0x10]
1ECE20:  ADD.W           R1, R8, R8,LSL#1
1ECE24:  STR             R5, [R0,#0x10]
1ECE26:  MOV             R5, R2
1ECE28:  VSTR            S0, [R0]
1ECE2C:  ORR.W           R2, R9, R1,LSL#2
1ECE30:  VSTR            S30, [R0,#4]
1ECE34:  VSTR            S28, [R0,#8]
1ECE38:  VSTR            S22, [R0,#0xC]
1ECE3C:  LDR             R0, [R7,#arg_C]
1ECE3E:  ADD.W           R0, R0, R8,LSL#2
1ECE42:  STRH.W          R0, [R5,R1,LSL#2]
1ECE46:  ADD.W           R8, R8, #1
1ECE4A:  ADD.W           R1, R5, R1,LSL#2
1ECE4E:  ADDS            R3, R0, #1
1ECE50:  STRH            R3, [R5,R2]
1ECE52:  ADDS            R2, R0, #2
1ECE54:  STRH            R0, [R1,#6]
1ECE56:  ADDS            R0, #3
1ECE58:  STRH            R2, [R1,#4]
1ECE5A:  STRH            R2, [R1,#8]
1ECE5C:  STRH            R0, [R1,#0xA]
1ECE5E:  ADD             R4, LR
1ECE60:  SUBS.W          R10, R10, #1
1ECE64:  ADD.W           R6, R6, #1
1ECE68:  BNE.W           loc_1ECC92
1ECE6C:  MOV             R0, R8
1ECE6E:  ADD             SP, SP, #0x58 ; 'X'
1ECE70:  VPOP            {D8-D15}
1ECE74:  ADD             SP, SP, #4
1ECE76:  POP.W           {R8-R11}
1ECE7A:  POP             {R4-R7,PC}
