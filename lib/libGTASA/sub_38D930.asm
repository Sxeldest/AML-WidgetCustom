; =========================================================
; Game Engine Function: sub_38D930
; Address            : 0x38D930 - 0x38DC3C
; =========================================================

38D930:  PUSH            {R4-R7,LR}
38D932:  ADD             R7, SP, #0xC
38D934:  PUSH.W          {R8-R11}
38D938:  SUB             SP, SP, #4
38D93A:  VPUSH           {D8-D15}
38D93E:  SUB             SP, SP, #0x28
38D940:  VLDR            S16, =0.0
38D944:  MOV             R10, R1
38D946:  LDR.W           R2, [R10],#4
38D94A:  MOV             R5, R0
38D94C:  VMOV.F32        S0, S16
38D950:  LDR             R6, [R5,#0x10]
38D952:  LDR.W           R0, [R10]; this
38D956:  CBZ             R2, loc_38D980
38D958:  VLDR            S0, =0.0
38D95C:  ADDS            R1, #8
38D95E:  MOV             R2, R0
38D960:  LDR             R3, [R2,#0x10]
38D962:  CBZ             R3, loc_38D978
38D964:  LDR             R2, [R2,#0x14]
38D966:  LDRH            R3, [R2,#0x2E]
38D968:  AND.W           R3, R3, #0x410
38D96C:  CMP             R3, #0x10
38D96E:  ITT EQ
38D970:  VLDREQ          S2, [R2,#0x18]
38D974:  VADDEQ.F32      S0, S0, S2
38D978:  LDR.W           R2, [R1],#4
38D97C:  CMP             R2, #0
38D97E:  BNE             loc_38D960
38D980:  VMOV.F32        S22, #1.0
38D984:  STRD.W          R5, R6, [SP,#0x88+var_88]
38D988:  VMOV.F32        S18, S16
38D98C:  ADD             R4, SP, #0x88+var_6C
38D98E:  MOV             R6, R10
38D990:  VSUB.F32        S0, S22, S0
38D994:  VMOV            R5, S0
38D998:  LDR             R1, [R0,#0x10]
38D99A:  CBZ             R1, loc_38D9D2
38D99C:  LDRB            R1, [R1,#4]
38D99E:  LSLS            R1, R1, #0x1E
38D9A0:  BPL             loc_38D9D2
38D9A2:  LDR             R1, [R0,#0x14]
38D9A4:  LDRH            R1, [R1,#0x2E]
38D9A6:  AND.W           R1, R1, #0x2040
38D9AA:  CMP             R1, #0x40 ; '@'
38D9AC:  BNE             loc_38D9D2
38D9AE:  MOV             R1, R4; CVector *
38D9B0:  MOV             R2, R5; float
38D9B2:  BLX             j__ZN14CAnimBlendNode21GetCurrentTranslationER7CVectorf; CAnimBlendNode::GetCurrentTranslation(CVector &,float)
38D9B6:  LDR             R0, [R6]
38D9B8:  VLDR            S0, [SP,#0x88+var_68]
38D9BC:  LDR             R0, [R0,#0x14]
38D9BE:  VADD.F32        S18, S18, S0
38D9C2:  LDRB.W          R0, [R0,#0x2E]
38D9C6:  LSLS            R0, R0, #0x18
38D9C8:  ITT MI
38D9CA:  VLDRMI          S0, [SP,#0x88+var_6C]
38D9CE:  VADDMI.F32      S16, S16, S0
38D9D2:  LDR.W           R0, [R6,#4]!
38D9D6:  CMP             R0, #0
38D9D8:  BNE             loc_38D998
38D9DA:  VLDR            S24, =0.0
38D9DE:  ADD             R6, SP, #0x88+var_6C
38D9E0:  LDR.W           R1, [R10]
38D9E4:  MOVS            R0, #0
38D9E6:  VMOV.F32        S26, S24
38D9EA:  MOVS            R4, #0
38D9EC:  VMOV.F32        S28, S24
38D9F0:  MOV.W           R8, #0
38D9F4:  VMOV.F32        S19, S24
38D9F8:  MOV.W           R9, #0
38D9FC:  VMOV.F32        S20, S24
38DA00:  STR             R0, [SP,#0x88+var_80]
38DA02:  VMOV.F32        S30, S24
38DA06:  VMOV.F32        S17, S24
38DA0A:  VMOV.F32        S21, S24
38DA0E:  VMOV.F32        S23, S24
38DA12:  VMOV.F32        S25, S24
38DA16:  VMOV.F32        S27, S24
38DA1A:  LDR             R0, [R1,#0x10]
38DA1C:  MOV             R11, R10
38DA1E:  CBZ             R0, loc_38DA76
38DA20:  ADD             R2, SP, #0x88+var_7C; CQuaternion *
38DA22:  MOV             R0, R1; this
38DA24:  MOV             R1, R6; CVector *
38DA26:  MOV             R3, R5; float
38DA28:  BLX             j__ZN14CAnimBlendNode6UpdateER7CVectorR11CQuaternionf; CAnimBlendNode::Update(CVector &,CQuaternion &,float)
38DA2C:  VLDR            S0, [SP,#0x88+var_7C]
38DA30:  MOV             R1, R0
38DA32:  VLDR            S2, [SP,#0x88+var_78]
38DA36:  VMUL.F32        S10, S27, S0
38DA3A:  VLDR            S4, [SP,#0x88+var_74]
38DA3E:  VMUL.F32        S8, S25, S2
38DA42:  VLDR            S6, [SP,#0x88+var_70]
38DA46:  VMUL.F32        S12, S23, S4
38DA4A:  VADD.F32        S8, S10, S8
38DA4E:  VMUL.F32        S10, S21, S6
38DA52:  VADD.F32        S8, S8, S12
38DA56:  VADD.F32        S8, S8, S10
38DA5A:  VCMPE.F32       S8, #0.0
38DA5E:  VMRS            APSR_nzcv, FPSCR
38DA62:  BGE             loc_38DA7A
38DA64:  VSUB.F32        S21, S21, S6
38DA68:  VSUB.F32        S23, S23, S4
38DA6C:  VSUB.F32        S25, S25, S2
38DA70:  VSUB.F32        S27, S27, S0
38DA74:  B               loc_38DA8A
38DA76:  MOV             R0, R1
38DA78:  B               loc_38DB0A
38DA7A:  VADD.F32        S21, S21, S6
38DA7E:  VADD.F32        S23, S23, S4
38DA82:  VADD.F32        S25, S25, S2
38DA86:  VADD.F32        S27, S27, S0
38DA8A:  VMOV            R4, S23
38DA8E:  LDR.W           R0, [R11]; this
38DA92:  VMOV            R8, S25
38DA96:  VMOV            R9, S27
38DA9A:  LDR             R2, [R0,#0x10]
38DA9C:  LDRB            R2, [R2,#4]
38DA9E:  LSLS            R2, R2, #0x1E
38DAA0:  BPL             loc_38DB0A
38DAA2:  LDR             R2, [R0,#0x14]
38DAA4:  LDRH            R2, [R2,#0x2E]
38DAA6:  TST.W           R2, #0x2000
38DAAA:  BNE             loc_38DB0A
38DAAC:  VLDR            S0, [SP,#0x88+var_6C]
38DAB0:  LSLS            R3, R2, #0x19
38DAB2:  VLDR            S2, [SP,#0x88+var_68]
38DAB6:  VLDR            S4, [SP,#0x88+var_64]
38DABA:  VADD.F32        S17, S17, S0
38DABE:  VADD.F32        S30, S30, S2
38DAC2:  VADD.F32        S20, S20, S4
38DAC6:  BPL             loc_38DB0A
38DAC8:  VADD.F32        S0, S26, S0
38DACC:  LSLS            R2, R2, #0x18
38DACE:  VADD.F32        S24, S24, S2
38DAD2:  IT MI
38DAD4:  VMOVMI.F32      S26, S0
38DAD8:  LDR             R2, [SP,#0x88+var_80]
38DADA:  CMP             R1, #1
38DADC:  ORR.W           R2, R2, R1
38DAE0:  STR             R2, [SP,#0x88+var_80]
38DAE2:  BNE             loc_38DB0A
38DAE4:  MOV             R1, R6; CVector *
38DAE6:  MOV             R2, R5; float
38DAE8:  BLX             j__ZN14CAnimBlendNode17GetEndTranslationER7CVectorf; CAnimBlendNode::GetEndTranslation(CVector &,float)
38DAEC:  LDR.W           R0, [R11]
38DAF0:  VLDR            S0, [SP,#0x88+var_68]
38DAF4:  LDR             R1, [R0,#0x14]
38DAF6:  VADD.F32        S28, S28, S0
38DAFA:  LDRB.W          R1, [R1,#0x2E]
38DAFE:  LSLS            R1, R1, #0x18
38DB00:  ITT MI
38DB02:  VLDRMI          S0, [SP,#0x88+var_6C]
38DB06:  VADDMI.F32      S19, S19, S0
38DB0A:  MOV             R10, R11
38DB0C:  ADDS            R0, #0x18
38DB0E:  LDR.W           R1, [R10,#4]!
38DB12:  STR.W           R0, [R11]
38DB16:  CMP             R1, #0
38DB18:  BNE.W           loc_38DA1A
38DB1C:  LDR             R3, [SP,#0x88+var_88]
38DB1E:  LDR             R2, [SP,#0x88+var_84]
38DB20:  LDRB            R0, [R3]
38DB22:  TST.W           R0, #2
38DB26:  BNE             loc_38DB86
38DB28:  VMUL.F32        S0, S27, S27
38DB2C:  VMUL.F32        S2, S25, S25
38DB30:  VMUL.F32        S4, S23, S23
38DB34:  VADD.F32        S0, S2, S0
38DB38:  VMUL.F32        S2, S21, S21
38DB3C:  VADD.F32        S0, S4, S0
38DB40:  VADD.F32        S0, S2, S0
38DB44:  VCMP.F32        S0, #0.0
38DB48:  VMRS            APSR_nzcv, FPSCR
38DB4C:  BNE             loc_38DB54
38DB4E:  MOV.W           R0, #0x3F800000
38DB52:  B               loc_38DB7C
38DB54:  VSQRT.F32       S0, S0
38DB58:  VDIV.F32        S0, S22, S0
38DB5C:  VMUL.F32        S2, S21, S0
38DB60:  VMUL.F32        S4, S23, S0
38DB64:  VMUL.F32        S6, S25, S0
38DB68:  VMUL.F32        S0, S27, S0
38DB6C:  VMOV            R0, S2
38DB70:  VMOV            R4, S4
38DB74:  VMOV            R8, S6
38DB78:  VMOV            R9, S0
38DB7C:  STRD.W          R9, R8, [R2]
38DB80:  STRD.W          R4, R0, [R2,#8]
38DB84:  LDRB            R0, [R3]
38DB86:  LSLS            R0, R0, #0x1D
38DB88:  BMI             loc_38DC2E
38DB8A:  LDR             R0, =(dword_932098 - 0x38DB98)
38DB8C:  VSUB.F32        S0, S26, S16
38DB90:  VSUB.F32        S2, S24, S18
38DB94:  ADD             R0, PC; dword_932098
38DB96:  LDR             R0, [R0]
38DB98:  LDR             R1, [R0,#0xC]
38DB9A:  VSTR            S0, [R1]
38DB9E:  LDR             R1, [R0,#0xC]
38DBA0:  VSTR            S2, [R1,#4]
38DBA4:  LDR             R1, [SP,#0x88+var_80]
38DBA6:  LSLS            R1, R1, #0x1F
38DBA8:  BEQ             loc_38DBC6
38DBAA:  LDR             R1, [R0,#0xC]
38DBAC:  VLDR            S0, [R1]
38DBB0:  VADD.F32        S0, S19, S0
38DBB4:  VSTR            S0, [R1]
38DBB8:  LDR             R0, [R0,#0xC]
38DBBA:  VLDR            S0, [R0,#4]
38DBBE:  VADD.F32        S0, S28, S0
38DBC2:  VSTR            S0, [R0,#4]
38DBC6:  VSUB.F32        S2, S17, S26
38DBCA:  VLDR            S4, =-0.8
38DBCE:  VSUB.F32        S0, S30, S24
38DBD2:  VCMPE.F32       S20, S4
38DBD6:  VMRS            APSR_nzcv, FPSCR
38DBDA:  VSTR            S2, [R2,#0x10]
38DBDE:  VSTR            S0, [R2,#0x14]
38DBE2:  VSTR            S20, [R2,#0x18]
38DBE6:  BLT             loc_38DC16
38DBE8:  VLDR            S6, =-0.4
38DBEC:  VLDR            S4, [R3,#0xC]
38DBF0:  VCMPE.F32       S20, S6
38DBF4:  VMRS            APSR_nzcv, FPSCR
38DBF8:  BGE             loc_38DC0E
38DBFA:  VMOV.F32        S6, #2.5
38DBFE:  VMOV.F32        S8, #2.0
38DC02:  VMUL.F32        S6, S20, S6
38DC06:  VADD.F32        S6, S6, S8
38DC0A:  VMUL.F32        S4, S6, S4
38DC0E:  VADD.F32        S4, S20, S4
38DC12:  VSTR            S4, [R2,#0x18]
38DC16:  VLDR            S4, [R3,#4]
38DC1A:  VADD.F32        S2, S4, S2
38DC1E:  VSTR            S2, [R2,#0x10]
38DC22:  VLDR            S2, [R3,#8]
38DC26:  VADD.F32        S0, S2, S0
38DC2A:  VSTR            S0, [R2,#0x14]
38DC2E:  ADD             SP, SP, #0x28 ; '('
38DC30:  VPOP            {D8-D15}
38DC34:  ADD             SP, SP, #4
38DC36:  POP.W           {R8-R11}
38DC3A:  POP             {R4-R7,PC}
