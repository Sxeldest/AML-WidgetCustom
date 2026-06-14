; =========================================================
; Game Engine Function: _ZN17FxInterpInfo255_c6GetValEPff
; Address            : 0x36CB18 - 0x36CC9C
; =========================================================

36CB18:  PUSH            {R4,R6,R7,LR}
36CB1A:  ADD             R7, SP, #8
36CB1C:  LDRSB.W         R12, [R0,#5]
36CB20:  CMP.W           R12, #1
36CB24:  BNE             loc_36CB5C
36CB26:  LDRSB.W         R2, [R0,#6]
36CB2A:  CMP             R2, #1
36CB2C:  BLT.W           locret_36CC9A
36CB30:  VLDR            S0, =0.0078125
36CB34:  MOVS            R2, #0
36CB36:  LDR             R3, [R0,#0xC]
36CB38:  LDR.W           R3, [R3,R2,LSL#2]
36CB3C:  ADDS            R2, #1
36CB3E:  LDRSH.W         R3, [R3]
36CB42:  VMOV            S2, R3
36CB46:  VCVT.F32.S32    S2, S2
36CB4A:  VMUL.F32        S2, S2, S0
36CB4E:  VSTM            R1!, {S2}
36CB52:  LDRSB.W         R3, [R0,#6]
36CB56:  CMP             R2, R3
36CB58:  BLT             loc_36CB36
36CB5A:  B               locret_36CC9A
36CB5C:  VMOV            S0, R2
36CB60:  LDRB            R2, [R0,#4]
36CB62:  CBZ             R2, loc_36CB92
36CB64:  LDR             R2, [R0,#8]
36CB66:  VLDR            S4, =0.0039062
36CB6A:  ADD.W           R2, R2, R12,LSL#1
36CB6E:  LDRH.W          R2, [R2,#-2]
36CB72:  VMOV            S2, R2
36CB76:  VCVT.F32.U32    S2, S2
36CB7A:  VMUL.F32        S2, S2, S4
36CB7E:  VDIV.F32        S4, S0, S2
36CB82:  VCVT.S32.F32    S4, S4
36CB86:  VCVT.F32.S32    S4, S4
36CB8A:  VMUL.F32        S2, S2, S4
36CB8E:  VSUB.F32        S0, S0, S2
36CB92:  CMP.W           R12, #2
36CB96:  BLT             loc_36CBC8
36CB98:  LDR.W           LR, [R0,#8]
36CB9C:  MOVS            R4, #0
36CB9E:  VLDR            S2, =0.0039062
36CBA2:  ADD.W           R3, LR, R4,LSL#1
36CBA6:  LDRH            R3, [R3,#2]
36CBA8:  VMOV            S4, R3
36CBAC:  VCVT.F32.U32    S4, S4
36CBB0:  VMUL.F32        S4, S4, S2
36CBB4:  VCMPE.F32       S0, S4
36CBB8:  VMRS            APSR_nzcv, FPSCR
36CBBC:  BLT             loc_36CC2A
36CBBE:  ADDS            R2, R4, #1
36CBC0:  ADDS            R3, R4, #2
36CBC2:  CMP             R3, R12
36CBC4:  MOV             R4, R2
36CBC6:  BLT             loc_36CBA2
36CBC8:  LDRSB.W         R2, [R0,#6]
36CBCC:  CMP             R2, #1
36CBCE:  BLT             locret_36CC9A
36CBD0:  LDR             R2, [R0,#0xC]
36CBD2:  LDR             R2, [R2]
36CBD4:  ADD.W           R2, R2, R12,LSL#1
36CBD8:  LDRSH.W         R2, [R2,#-2]
36CBDC:  VMOV            S0, R2
36CBE0:  VCVT.F32.S32    S2, S0
36CBE4:  VLDR            S0, =0.0078125
36CBE8:  VMUL.F32        S2, S2, S0
36CBEC:  VSTR            S2, [R1]
36CBF0:  LDRSB.W         R2, [R0,#6]
36CBF4:  CMP             R2, #2
36CBF6:  BLT             locret_36CC9A
36CBF8:  ADDS            R1, #4
36CBFA:  MOVS            R2, #1
36CBFC:  LDR             R3, [R0,#0xC]
36CBFE:  LDRSB.W         R4, [R0,#5]
36CC02:  LDR.W           R3, [R3,R2,LSL#2]
36CC06:  ADDS            R2, #1
36CC08:  ADD.W           R3, R3, R4,LSL#1
36CC0C:  LDRSH.W         R3, [R3,#-2]
36CC10:  VMOV            S2, R3
36CC14:  VCVT.F32.S32    S2, S2
36CC18:  VMUL.F32        S2, S2, S0
36CC1C:  VSTM            R1!, {S2}
36CC20:  LDRSB.W         R3, [R0,#6]
36CC24:  CMP             R2, R3
36CC26:  BLT             loc_36CBFC
36CC28:  B               locret_36CC9A
36CC2A:  LDRH.W          R3, [LR,R4,LSL#1]
36CC2E:  VMOV            S6, R3
36CC32:  VCVT.F32.U32    S6, S6
36CC36:  LDRSB.W         R3, [R0,#6]
36CC3A:  CMP             R3, #1
36CC3C:  IT LT
36CC3E:  POPLT           {R4,R6,R7,PC}
36CC40:  VMUL.F32        S2, S6, S2
36CC44:  MOVS            R3, #0
36CC46:  VSUB.F32        S4, S4, S2
36CC4A:  VSUB.F32        S0, S0, S2
36CC4E:  VLDR            S2, =0.0078125
36CC52:  VDIV.F32        S0, S0, S4
36CC56:  LDR             R2, [R0,#0xC]
36CC58:  LDR.W           R2, [R2,R3,LSL#2]
36CC5C:  ADDS            R3, #1
36CC5E:  LDRSH.W         R12, [R2,R4,LSL#1]
36CC62:  ADD.W           R2, R2, R4,LSL#1
36CC66:  LDRSH.W         R2, [R2,#2]
36CC6A:  VMOV            S4, R12
36CC6E:  VMOV            S6, R2
36CC72:  VCVT.F32.S32    S4, S4
36CC76:  VCVT.F32.S32    S6, S6
36CC7A:  VMUL.F32        S4, S4, S2
36CC7E:  VMUL.F32        S6, S6, S2
36CC82:  VSUB.F32        S6, S6, S4
36CC86:  VMUL.F32        S6, S0, S6
36CC8A:  VADD.F32        S4, S4, S6
36CC8E:  VSTM            R1!, {S4}
36CC92:  LDRSB.W         R2, [R0,#6]
36CC96:  CMP             R3, R2
36CC98:  BLT             loc_36CC56
36CC9A:  POP             {R4,R6,R7,PC}
