; =========================================================
; Game Engine Function: _ZN28CTaskComplexFollowPointRoute16CalcGoToTaskTypeEP4CPedi
; Address            : 0x51EA98 - 0x51ECA0
; =========================================================

51EA98:  PUSH            {R4-R7,LR}
51EA9A:  ADD             R7, SP, #0xC
51EA9C:  PUSH.W          {R8}
51EAA0:  SUB             SP, SP, #0x18
51EAA2:  MOV             R5, R0
51EAA4:  MOV             R8, R2
51EAA6:  LDRB.W          R0, [R5,#0x28]
51EAAA:  LDR             R2, [R5,#0x14]
51EAAC:  BIC.W           R0, R0, #0x10
51EAB0:  LDR             R3, [R5,#0x34]
51EAB2:  CMP             R2, #5
51EAB4:  STR             R3, [R5,#0x38]
51EAB6:  STRB.W          R0, [R5,#0x28]
51EABA:  BLT.W           loc_51EC66
51EABE:  LDRD.W          R0, R6, [R5,#0x20]
51EAC2:  LDR             R4, [R0]
51EAC4:  SUBS            R3, R4, #1
51EAC6:  CMP             R6, R4
51EAC8:  MOV             R2, R3
51EACA:  IT LT
51EACC:  MOVLT           R2, R6
51EACE:  CMP             R2, #0
51EAD0:  BLT.W           loc_51EC8C
51EAD4:  CMP             R4, #1
51EAD6:  BNE             loc_51EAE0
51EAD8:  ADD.W           R1, R0, #8
51EADC:  ADDS            R3, R0, #4
51EADE:  B               loc_51EB24
51EAE0:  LDR             R4, [R5,#0xC]
51EAE2:  CMP             R4, #3
51EAE4:  BHI             loc_51EAF6
51EAE6:  CBZ             R6, loc_51EB00
51EAE8:  ADD.W           R1, R6, R6,LSL#1
51EAEC:  ADD.W           R3, R0, R1,LSL#2
51EAF0:  SUBS            R1, R3, #4
51EAF2:  SUBS            R3, #8
51EAF4:  B               loc_51EB24
51EAF6:  VLDR            S0, =0.0
51EAFA:  VMOV.F32        S2, S0
51EAFE:  B               loc_51EB2C
51EB00:  LDR             R6, [R5,#0x10]
51EB02:  CMP             R6, #1
51EB04:  BLT             loc_51EB16
51EB06:  ADD.W           R1, R3, R3,LSL#1
51EB0A:  ADD.W           R3, R0, R1,LSL#2
51EB0E:  ADD.W           R1, R3, #8
51EB12:  ADDS            R3, #4
51EB14:  B               loc_51EB24
51EB16:  LDR             R6, [R1,#0x14]
51EB18:  ADD.W           R3, R6, #0x30 ; '0'
51EB1C:  CMP             R6, #0
51EB1E:  IT EQ
51EB20:  ADDEQ           R3, R1, #4
51EB22:  ADDS            R1, R3, #4
51EB24:  VLDR            S0, [R1]
51EB28:  VLDR            S2, [R3]
51EB2C:  ADD.W           R6, R2, R2,LSL#1
51EB30:  MOVS            R4, #0
51EB32:  ADD.W           R0, R0, R6,LSL#2
51EB36:  VLDR            S4, [R0,#4]
51EB3A:  VLDR            S6, [R0,#8]
51EB3E:  ADD             R0, SP, #0x28+var_1C; this
51EB40:  VSUB.F32        S2, S4, S2
51EB44:  STR             R4, [SP,#0x28+var_14]
51EB46:  VSUB.F32        S0, S6, S0
51EB4A:  VSTR            S0, [SP,#0x28+var_18]
51EB4E:  VSTR            S2, [SP,#0x28+var_1C]
51EB52:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
51EB56:  LDR             R0, [R5,#0x20]
51EB58:  LDR             R1, [R0]
51EB5A:  CMP             R1, #1
51EB5C:  BEQ             loc_51EB7E
51EB5E:  LDR             R2, [R5,#0xC]
51EB60:  CMP             R2, #3
51EB62:  BCS             loc_51EB70
51EB64:  LDR             R2, [R5,#0x24]
51EB66:  ADDS            R4, R2, #1
51EB68:  CMP             R4, R1
51EB6A:  IT GE
51EB6C:  SUBGE           R4, R2, #1
51EB6E:  B               loc_51EB7E
51EB70:  BNE.W           loc_51EC96
51EB74:  LDR             R2, [R5,#0x24]
51EB76:  ADDS            R4, R2, #1
51EB78:  CMP             R4, R1
51EB7A:  IT EQ
51EB7C:  MOVEQ           R4, #0
51EB7E:  ADD.W           R1, R4, R4,LSL#1
51EB82:  ADD.W           R1, R0, R1,LSL#2
51EB86:  VLDR            S2, [R1,#4]
51EB8A:  VLDR            S0, [R1,#8]
51EB8E:  ADD.W           R0, R0, R6,LSL#2
51EB92:  VLDR            S4, [R0,#4]
51EB96:  VLDR            S6, [R0,#8]
51EB9A:  MOVS            R0, #0
51EB9C:  VSUB.F32        S2, S2, S4
51EBA0:  STR             R0, [SP,#0x28+var_20]
51EBA2:  VSUB.F32        S0, S0, S6
51EBA6:  MOV             R0, SP; this
51EBA8:  VSTR            S0, [SP,#0x28+var_24]
51EBAC:  VSTR            S2, [SP,#0x28+var_28]
51EBB0:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
51EBB4:  VLDR            S0, [SP,#0x28+var_28]
51EBB8:  VLDR            S6, [SP,#0x28+var_1C]
51EBBC:  VLDR            S2, [SP,#0x28+var_24]
51EBC0:  VLDR            S8, [SP,#0x28+var_18]
51EBC4:  VMUL.F32        S0, S6, S0
51EBC8:  VLDR            S4, [SP,#0x28+var_20]
51EBCC:  VMUL.F32        S2, S8, S2
51EBD0:  VLDR            S10, [SP,#0x28+var_14]
51EBD4:  VMUL.F32        S4, S10, S4
51EBD8:  VADD.F32        S0, S0, S2
51EBDC:  VLDR            S2, =0.707
51EBE0:  VADD.F32        S0, S0, S4
51EBE4:  VCMPE.F32       S0, S2
51EBE8:  VMRS            APSR_nzcv, FPSCR
51EBEC:  BGE             loc_51EC12
51EBEE:  VMOV.F32        S2, #1.0
51EBF2:  VLDR            S4, =-1.707
51EBF6:  VADD.F32        S0, S0, S2
51EBFA:  VDIV.F32        S0, S0, S4
51EBFE:  VADD.F32        S0, S0, S2
51EC02:  VCMPE.F32       S0, #0.0
51EC06:  VMRS            APSR_nzcv, FPSCR
51EC0A:  BGE             loc_51EC1C
51EC0C:  VLDR            S0, =0.0
51EC10:  B               loc_51EC2A
51EC12:  LDRB.W          R0, [R5,#0x28]
51EC16:  BIC.W           R0, R0, #0x10
51EC1A:  B               loc_51EC62
51EC1C:  VCMPE.F32       S0, S2
51EC20:  VMRS            APSR_nzcv, FPSCR
51EC24:  IT GT
51EC26:  VMOVGT.F32      S0, S2
51EC2A:  VMOV.F32        S6, #3.0
51EC2E:  LDR             R0, [R5,#0x14]
51EC30:  VMOV.F32        S2, #1.5
51EC34:  CMP             R0, #7
51EC36:  VMOV.F32        S4, #4.0
51EC3A:  IT EQ
51EC3C:  VMOVEQ.F32      S2, S6
51EC40:  VMOV.F32        S6, #5.0
51EC44:  VMUL.F32        S0, S0, S2
51EC48:  IT EQ
51EC4A:  VMOVEQ.F32      S4, S6
51EC4E:  LDRB.W          R0, [R5,#0x28]
51EC52:  VSTR            S4, [R5,#0x2C]
51EC56:  VSTR            S4, [R5,#0x30]
51EC5A:  ORR.W           R0, R0, #0x10
51EC5E:  VSTR            S0, [R5,#0x34]
51EC62:  STRB.W          R0, [R5,#0x28]
51EC66:  LSLS            R1, R0, #0x1A
51EC68:  BPL             loc_51EC84
51EC6A:  MOVW            R1, #0x387
51EC6E:  CMP             R8, R1
51EC70:  IT NE
51EC72:  CMPNE.W         R8, #0x384
51EC76:  BNE             loc_51EC84
51EC78:  MOVS            R1, #2
51EC7A:  MOVW            R8, #0x39E
51EC7E:  BFI.W           R0, R1, #5, #2
51EC82:  B               loc_51EC88
51EC84:  AND.W           R0, R0, #0x9F
51EC88:  STRB.W          R0, [R5,#0x28]
51EC8C:  MOV             R0, R8
51EC8E:  ADD             SP, SP, #0x18
51EC90:  POP.W           {R8}
51EC94:  POP             {R4-R7,PC}
51EC96:  VLDR            S0, =0.0
51EC9A:  VMOV.F32        S2, S0
51EC9E:  B               loc_51EB8E
