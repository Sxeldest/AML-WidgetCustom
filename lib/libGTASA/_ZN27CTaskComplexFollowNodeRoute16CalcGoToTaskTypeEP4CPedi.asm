; =========================================================
; Game Engine Function: _ZN27CTaskComplexFollowNodeRoute16CalcGoToTaskTypeEP4CPedi
; Address            : 0x51FD0C - 0x51FECC
; =========================================================

51FD0C:  PUSH            {R4-R7,LR}
51FD0E:  ADD             R7, SP, #0xC
51FD10:  PUSH.W          {R11}
51FD14:  SUB             SP, SP, #0x18
51FD16:  MOV             R4, R0
51FD18:  CMP.W           R2, #0x384
51FD1C:  BNE.W           loc_51FEC2
51FD20:  LDRB.W          R0, [R4,#0x4C]
51FD24:  LDR             R2, [R4,#0x18]
51FD26:  BIC.W           R0, R0, #0x10
51FD2A:  LDR             R3, [R4,#0x58]
51FD2C:  CMP             R2, #5
51FD2E:  STR             R3, [R4,#0x5C]
51FD30:  STRB.W          R0, [R4,#0x4C]
51FD34:  BLT.W           loc_51FEA8
51FD38:  LDR             R0, [R4,#0x30]
51FD3A:  LDR             R3, [R4,#0x38]
51FD3C:  LDR             R6, [R0]
51FD3E:  MOV             R2, R3
51FD40:  CMP             R3, R6
51FD42:  IT GE
51FD44:  SUBGE           R2, R6, #1
51FD46:  CMP             R2, #0
51FD48:  BLT             loc_51FD56
51FD4A:  CMP             R6, #1
51FD4C:  BNE             loc_51FD5C
51FD4E:  ADD.W           R1, R0, #8
51FD52:  ADDS            R3, R0, #4
51FD54:  B               loc_51FD7A
51FD56:  MOV.W           R2, #0x384
51FD5A:  B               loc_51FEC2
51FD5C:  CBZ             R3, loc_51FD6C
51FD5E:  ADD.W           R1, R3, R3,LSL#1
51FD62:  ADD.W           R3, R0, R1,LSL#2
51FD66:  SUBS            R1, R3, #4
51FD68:  SUBS            R3, #8
51FD6A:  B               loc_51FD7A
51FD6C:  LDR             R6, [R1,#0x14]
51FD6E:  ADD.W           R3, R6, #0x30 ; '0'
51FD72:  CMP             R6, #0
51FD74:  IT EQ
51FD76:  ADDEQ           R3, R1, #4
51FD78:  ADDS            R1, R3, #4
51FD7A:  ADD.W           R6, R2, R2,LSL#1
51FD7E:  VLDR            S0, [R1]
51FD82:  VLDR            S6, [R3]
51FD86:  MOVS            R5, #0
51FD88:  ADD.W           R0, R0, R6,LSL#2
51FD8C:  VLDR            S2, [R0,#4]
51FD90:  VLDR            S4, [R0,#8]
51FD94:  ADD             R0, SP, #0x28+var_1C; this
51FD96:  VSUB.F32        S2, S2, S6
51FD9A:  STR             R5, [SP,#0x28+var_14]
51FD9C:  VSUB.F32        S0, S4, S0
51FDA0:  VSTR            S0, [SP,#0x28+var_18]
51FDA4:  VSTR            S2, [SP,#0x28+var_1C]
51FDA8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
51FDAC:  LDR             R0, [R4,#0x30]
51FDAE:  MOVS            R1, #0
51FDB0:  LDR             R2, [R0]
51FDB2:  CMP             R2, #1
51FDB4:  BEQ             loc_51FDC0
51FDB6:  LDR             R3, [R4,#0x38]
51FDB8:  ADDS            R1, R3, #1
51FDBA:  CMP             R1, R2
51FDBC:  IT GE
51FDBE:  SUBGE           R1, R3, #1
51FDC0:  ADD.W           R1, R1, R1,LSL#1
51FDC4:  ADDS            R0, #4
51FDC6:  ADD.W           R2, R0, R6,LSL#2
51FDCA:  ADD.W           R0, R0, R1,LSL#2
51FDCE:  VLDR            S0, [R2]
51FDD2:  VLDR            S4, [R0]
51FDD6:  VLDR            S6, [R0,#4]
51FDDA:  MOV             R0, SP; this
51FDDC:  VLDR            S2, [R2,#4]
51FDE0:  VSUB.F32        S0, S4, S0
51FDE4:  STR             R5, [SP,#0x28+var_20]
51FDE6:  VSUB.F32        S2, S6, S2
51FDEA:  VSTR            S2, [SP,#0x28+var_24]
51FDEE:  VSTR            S0, [SP,#0x28+var_28]
51FDF2:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
51FDF6:  VLDR            S0, [SP,#0x28+var_28]
51FDFA:  VLDR            S6, [SP,#0x28+var_1C]
51FDFE:  VLDR            S2, [SP,#0x28+var_24]
51FE02:  VLDR            S8, [SP,#0x28+var_18]
51FE06:  VMUL.F32        S0, S6, S0
51FE0A:  VLDR            S4, [SP,#0x28+var_20]
51FE0E:  VMUL.F32        S2, S8, S2
51FE12:  VLDR            S10, [SP,#0x28+var_14]
51FE16:  VMUL.F32        S4, S10, S4
51FE1A:  VADD.F32        S0, S0, S2
51FE1E:  VLDR            S2, =0.707
51FE22:  VADD.F32        S0, S0, S4
51FE26:  VCMPE.F32       S0, S2
51FE2A:  VMRS            APSR_nzcv, FPSCR
51FE2E:  BGE             loc_51FE54
51FE30:  VMOV.F32        S2, #1.0
51FE34:  VLDR            S4, =-1.707
51FE38:  VADD.F32        S0, S0, S2
51FE3C:  VDIV.F32        S0, S0, S4
51FE40:  VADD.F32        S0, S0, S2
51FE44:  VCMPE.F32       S0, #0.0
51FE48:  VMRS            APSR_nzcv, FPSCR
51FE4C:  BGE             loc_51FE5E
51FE4E:  VLDR            S0, =0.0
51FE52:  B               loc_51FE6C
51FE54:  LDRB.W          R0, [R4,#0x4C]
51FE58:  BIC.W           R0, R0, #0x10
51FE5C:  B               loc_51FEA4
51FE5E:  VCMPE.F32       S0, S2
51FE62:  VMRS            APSR_nzcv, FPSCR
51FE66:  IT GT
51FE68:  VMOVGT.F32      S0, S2
51FE6C:  VMOV.F32        S6, #3.0
51FE70:  LDR             R0, [R4,#0x18]
51FE72:  VMOV.F32        S2, #1.5
51FE76:  CMP             R0, #7
51FE78:  VMOV.F32        S4, #4.0
51FE7C:  IT EQ
51FE7E:  VMOVEQ.F32      S2, S6
51FE82:  VMOV.F32        S6, #5.0
51FE86:  VMUL.F32        S0, S0, S2
51FE8A:  IT EQ
51FE8C:  VMOVEQ.F32      S4, S6
51FE90:  LDRB.W          R0, [R4,#0x4C]
51FE94:  VSTR            S4, [R4,#0x50]
51FE98:  VSTR            S4, [R4,#0x54]
51FE9C:  ORR.W           R0, R0, #0x10
51FEA0:  VSTR            S0, [R4,#0x58]
51FEA4:  STRB.W          R0, [R4,#0x4C]
51FEA8:  ANDS.W          R1, R0, #0x20 ; ' '
51FEAC:  AND.W           R0, R0, #0x9F
51FEB0:  MOVW            R2, #0x39E
51FEB4:  ORR.W           R0, R0, R1,LSL#1
51FEB8:  STRB.W          R0, [R4,#0x4C]
51FEBC:  IT EQ
51FEBE:  MOVEQ.W         R2, #0x384
51FEC2:  MOV             R0, R2
51FEC4:  ADD             SP, SP, #0x18
51FEC6:  POP.W           {R11}
51FECA:  POP             {R4-R7,PC}
