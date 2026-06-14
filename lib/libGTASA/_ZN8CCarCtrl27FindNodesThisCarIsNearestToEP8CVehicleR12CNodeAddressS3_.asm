; =========================================================
; Game Engine Function: _ZN8CCarCtrl27FindNodesThisCarIsNearestToEP8CVehicleR12CNodeAddressS3_
; Address            : 0x2FBAC8 - 0x2FBF2A
; =========================================================

2FBAC8:  PUSH            {R4-R7,LR}
2FBACA:  ADD             R7, SP, #0xC
2FBACC:  PUSH.W          {R8-R11}
2FBAD0:  SUB             SP, SP, #4
2FBAD2:  VPUSH           {D8-D14}
2FBAD6:  SUB             SP, SP, #0xA0
2FBAD8:  STRD.W          R1, R2, [SP,#0xF8+var_F8]
2FBADC:  MOV             R5, R0
2FBADE:  LDR.W           R2, =(ThePaths_ptr - 0x2FBAEA)
2FBAE2:  ADDS            R4, R5, #4
2FBAE4:  LDR             R0, [R5,#0x14]
2FBAE6:  ADD             R2, PC; ThePaths_ptr
2FBAE8:  MOV             R1, R4
2FBAEA:  CMP             R0, #0
2FBAEC:  IT NE
2FBAEE:  ADDNE.W         R1, R0, #0x30 ; '0'
2FBAF2:  LDR.W           R9, [R2]; ThePaths
2FBAF6:  LDR             R1, [R1]; float
2FBAF8:  MOV             R0, R9; this
2FBAFA:  BLX             j__ZN9CPathFind19FindXRegionForCoorsEf; CPathFind::FindXRegionForCoors(float)
2FBAFE:  MOV             R8, R0
2FBB00:  LDR             R0, [R5,#0x14]
2FBB02:  MOV             R1, R4
2FBB04:  CMP             R0, #0
2FBB06:  IT NE
2FBB08:  ADDNE.W         R1, R0, #0x30 ; '0'
2FBB0C:  MOV             R0, R9; this
2FBB0E:  LDR             R1, [R1,#4]; float
2FBB10:  BLX             j__ZN9CPathFind19FindYRegionForCoorsEf; CPathFind::FindYRegionForCoors(float)
2FBB14:  MOV             R6, R0
2FBB16:  LDR             R0, [R5,#0x14]
2FBB18:  MOV             R1, R4
2FBB1A:  CMP             R0, #0
2FBB1C:  IT NE
2FBB1E:  ADDNE.W         R1, R0, #0x30 ; '0'
2FBB22:  MOV             R0, R9; this
2FBB24:  VLDR            S16, [R1]
2FBB28:  MOV             R1, R8; int
2FBB2A:  BLX             j__ZN9CPathFind19FindXCoorsForRegionEi; CPathFind::FindXCoorsForRegion(int)
2FBB2E:  STR             R5, [SP,#0xF8+var_B0]
2FBB30:  VMOV            S0, R0
2FBB34:  LDR             R0, [R5,#0x14]
2FBB36:  MOV             R1, R4
2FBB38:  STR             R4, [SP,#0xF8+var_A8]
2FBB3A:  VSUB.F32        S16, S16, S0
2FBB3E:  CMP             R0, #0
2FBB40:  IT NE
2FBB42:  ADDNE.W         R1, R0, #0x30 ; '0'
2FBB46:  MOV             R0, R9; this
2FBB48:  VLDR            S18, [R1,#4]
2FBB4C:  MOV             R1, R6; int
2FBB4E:  BLX             j__ZN9CPathFind19FindYCoorsForRegionEi; CPathFind::FindYCoorsForRegion(int)
2FBB52:  VLDR            S0, =550.0
2FBB56:  MOV             R2, R8
2FBB58:  VLDR            S4, =200.0
2FBB5C:  VMOV            S2, R0
2FBB60:  VCMPE.F32       S16, S0
2FBB64:  MOVS            R0, #7
2FBB66:  VMRS            APSR_nzcv, FPSCR
2FBB6A:  VCMPE.F32       S16, S4
2FBB6E:  VSUB.F32        S2, S18, S2
2FBB72:  MOV.W           R1, #0
2FBB76:  MOV             R3, R6
2FBB78:  IT GT
2FBB7A:  ADDGT           R2, #1
2FBB7C:  CMP             R2, #7
2FBB7E:  IT GE
2FBB80:  MOVGE           R2, R0
2FBB82:  VMRS            APSR_nzcv, FPSCR
2FBB86:  VCMPE.F32       S2, S0
2FBB8A:  IT LT
2FBB8C:  SUBLT.W         R8, R8, #1
2FBB90:  CMP.W           R8, #0
2FBB94:  IT LE
2FBB96:  MOVLE           R8, R1
2FBB98:  VMRS            APSR_nzcv, FPSCR
2FBB9C:  VCMPE.F32       S2, S4
2FBBA0:  IT GT
2FBBA2:  ADDGT           R3, #1
2FBBA4:  CMP             R3, #7
2FBBA6:  IT GE
2FBBA8:  MOVGE           R3, R0
2FBBAA:  VMRS            APSR_nzcv, FPSCR
2FBBAE:  STR             R3, [SP,#0xF8+var_E4]
2FBBB0:  MOVW            R0, #0xFFFF
2FBBB4:  IT LT
2FBBB6:  SUBLT           R6, #1
2FBBB8:  CMP             R6, #0
2FBBBA:  IT LE
2FBBBC:  MOVLE           R6, R1
2FBBBE:  CMP             R8, R2
2FBBC0:  STR             R6, [SP,#0xF8+var_EC]
2FBBC2:  STR             R0, [SP,#0xF8+var_BC]
2FBBC4:  STR             R2, [SP,#0xF8+var_F0]
2FBBC6:  BLE             loc_2FBBD4
2FBBC8:  MOVW            R0, #0xFFFF
2FBBCC:  STR             R0, [SP,#0xF8+var_C0]
2FBBCE:  STR             R0, [SP,#0xF8+var_C4]
2FBBD0:  STR             R0, [SP,#0xF8+var_C8]
2FBBD2:  B               loc_2FBF04
2FBBD4:  LDR             R0, =(ThePaths_ptr - 0x2FBBE4)
2FBBD6:  VMOV.F32        S16, #0.125
2FBBDA:  VMOV.F32        S24, #3.0
2FBBDE:  LDR             R6, [SP,#0xF8+var_E4]
2FBBE0:  ADD             R0, PC; ThePaths_ptr
2FBBE2:  VMOV.F32        S26, #1.0
2FBBE6:  VMOV.F32        S28, #5.0
2FBBEA:  VLDR            S20, =100000.0
2FBBEE:  LDR             R0, [R0]; ThePaths
2FBBF0:  VMOV.I32        D9, #0x3E000000
2FBBF4:  STR             R0, [SP,#0xF8+var_D8]
2FBBF6:  LDR             R0, =(ThePaths_ptr - 0x2FBC00)
2FBBF8:  VLDR            S22, =150.0
2FBBFC:  ADD             R0, PC; ThePaths_ptr
2FBBFE:  LDR             R0, [R0]; ThePaths
2FBC00:  STR             R0, [SP,#0xF8+var_DC]
2FBC02:  LDR             R0, =(ThePaths_ptr - 0x2FBC08)
2FBC04:  ADD             R0, PC; ThePaths_ptr
2FBC06:  LDR             R0, [R0]; ThePaths
2FBC08:  STR             R0, [SP,#0xF8+var_E8]
2FBC0A:  LDR             R0, =(ThePaths_ptr - 0x2FBC10)
2FBC0C:  ADD             R0, PC; ThePaths_ptr
2FBC0E:  LDR             R0, [R0]; ThePaths
2FBC10:  STR             R0, [SP,#0xF8+var_A0]
2FBC12:  STR             R0, [SP,#0xF8+var_C8]
2FBC14:  STR             R0, [SP,#0xF8+var_C4]
2FBC16:  MOVW            R0, #0xFFFF
2FBC1A:  STR             R0, [SP,#0xF8+var_C0]
2FBC1C:  LDR             R0, [SP,#0xF8+var_EC]
2FBC1E:  STR.W           R8, [SP,#0xF8+var_E0]
2FBC22:  CMP             R0, R6
2FBC24:  BGT.W           loc_2FBEF6
2FBC28:  STR             R0, [SP,#0xF8+var_D4]
2FBC2A:  ADD.W           R4, R8, R0,LSL#3
2FBC2E:  LDR             R0, [SP,#0xF8+var_D8]
2FBC30:  ADD.W           R0, R0, R4,LSL#2
2FBC34:  LDR.W           R1, [R0,#0x804]
2FBC38:  CMP             R1, #0
2FBC3A:  BEQ.W           loc_2FBEEC
2FBC3E:  LDR             R2, [SP,#0xF8+var_DC]
2FBC40:  MOVW            R5, #0x1104
2FBC44:  ADD.W           R2, R2, R4,LSL#2
2FBC48:  LDR             R3, [R2,R5]
2FBC4A:  CMP             R3, #1
2FBC4C:  BLT.W           loc_2FBEEC
2FBC50:  ADDW            R0, R0, #0x804
2FBC54:  STR             R0, [SP,#0xF8+var_D0]
2FBC56:  ADDS            R0, R2, R5
2FBC58:  STR             R0, [SP,#0xF8+var_CC]
2FBC5A:  LDR             R0, [SP,#0xF8+var_B0]
2FBC5C:  LDR             R2, [SP,#0xF8+var_E8]
2FBC5E:  ADD.W           R2, R2, R4,LSL#2
2FBC62:  LDR             R0, [R0,#0x14]
2FBC64:  ADDW            R2, R2, #0xA44
2FBC68:  STR             R2, [SP,#0xF8+var_9C]
2FBC6A:  MOVS            R2, #0
2FBC6C:  STRD.W          R4, R2, [SP,#0xF8+var_B8]
2FBC70:  B               loc_2FBC8A
2FBC72:  LDR             R2, [SP,#0xF8+var_B4]
2FBC74:  LDR             R1, [SP,#0xF8+var_CC]
2FBC76:  MOV             R3, R2
2FBC78:  ADDS            R3, #1
2FBC7A:  LDR             R1, [R1]
2FBC7C:  MOV             R2, R3
2FBC7E:  CMP             R3, R1
2FBC80:  STR             R2, [SP,#0xF8+var_B4]
2FBC82:  BGE.W           loc_2FBEE8
2FBC86:  LDR             R1, [SP,#0xF8+var_D0]
2FBC88:  LDR             R1, [R1]
2FBC8A:  LDR             R2, [SP,#0xF8+var_B4]
2FBC8C:  CMP             R0, #0
2FBC8E:  RSB.W           R2, R2, R2,LSL#3
2FBC92:  ADD.W           R1, R1, R2,LSL#2
2FBC96:  MOV             R8, R1
2FBC98:  LDR.W           R2, [R8,#0xA]!
2FBC9C:  MOV             R5, R8
2FBC9E:  LDRSH.W         R3, [R5,#-2]!
2FBCA2:  VMOV            S0, R3
2FBCA6:  VCVT.F32.S32    S0, S0
2FBCAA:  STR             R2, [SP,#0xF8+var_90]
2FBCAC:  ADD             R2, SP, #0xF8+var_90
2FBCAE:  VLD1.32         {D16[0]}, [R2@32]
2FBCB2:  LDR             R2, [SP,#0xF8+var_A8]
2FBCB4:  IT NE
2FBCB6:  ADDNE.W         R2, R0, #0x30 ; '0'
2FBCBA:  VMOVL.S16       Q8, D16
2FBCBE:  VMUL.F32        S0, S0, S16
2FBCC2:  VLDR            S2, [R2]
2FBCC6:  VCVT.F32.S32    D16, D16
2FBCCA:  VLDR            D17, [R2,#4]
2FBCCE:  VMUL.F32        D16, D16, D9
2FBCD2:  VSUB.F32        S0, S0, S2
2FBCD6:  VSUB.F32        D16, D16, D17
2FBCDA:  VMUL.F32        S0, S0, S0
2FBCDE:  VMUL.F32        D1, D16, D16
2FBCE2:  VADD.F32        S0, S0, S2
2FBCE6:  VADD.F32        S0, S0, S3
2FBCEA:  VSQRT.F32       S0, S0
2FBCEE:  VCMPE.F32       S0, S22
2FBCF2:  VMRS            APSR_nzcv, FPSCR
2FBCF6:  BGE             loc_2FBC72
2FBCF8:  LDRH            R2, [R1,#0x18]
2FBCFA:  ANDS.W          R2, R2, #0xF
2FBCFE:  STR             R2, [SP,#0xF8+var_94]
2FBD00:  BEQ             loc_2FBC72
2FBD02:  MOV.W           R9, #0
2FBD06:  ADD.W           R2, R8, #2
2FBD0A:  ADDS            R1, #0x10
2FBD0C:  STR             R2, [SP,#0xF8+var_AC]
2FBD0E:  STR             R1, [SP,#0xF8+var_98]
2FBD10:  LDR             R1, [SP,#0xF8+var_98]
2FBD12:  LDR             R2, [SP,#0xF8+var_9C]
2FBD14:  LDRSH.W         R1, [R1]
2FBD18:  LDR             R2, [R2]
2FBD1A:  ADD             R1, R9
2FBD1C:  LDR.W           R11, [R2,R1,LSL#2]
2FBD20:  LDR             R2, [SP,#0xF8+var_A0]
2FBD22:  UXTH.W          R1, R11
2FBD26:  ADD.W           R1, R2, R1,LSL#2
2FBD2A:  LDR.W           R1, [R1,#0x804]
2FBD2E:  CMP             R1, #0
2FBD30:  BEQ.W           loc_2FBEDA
2FBD34:  LDRSH.W         R2, [R8]
2FBD38:  MOV             R4, R5
2FBD3A:  LDRSH.W         R3, [R5]
2FBD3E:  CMP             R0, #0
2FBD40:  VMOV            S0, R2
2FBD44:  VMOV            S2, R3
2FBD48:  VCVT.F32.S32    S0, S0
2FBD4C:  LDR             R6, [SP,#0xF8+var_AC]
2FBD4E:  LDRSH.W         R2, [R6]
2FBD52:  VCVT.F32.S32    S2, S2
2FBD56:  VMOV            S4, R2
2FBD5A:  MOV.W           R2, R11,LSR#16
2FBD5E:  VMUL.F32        S0, S0, S16
2FBD62:  VCVT.F32.S32    S4, S4
2FBD66:  STR             R2, [SP,#0xF8+var_A4]
2FBD68:  MOV.W           R2, R2,LSL#3
2FBD6C:  VMUL.F32        S2, S2, S16
2FBD70:  SUB.W           R2, R2, R11,LSR#16
2FBD74:  ADD.W           R5, R1, R2,LSL#2
2FBD78:  VSTR            S0, [SP,#0xF8+var_60]
2FBD7C:  VMUL.F32        S4, S4, S16
2FBD80:  VSTR            S2, [SP,#0xF8+var_64]
2FBD84:  VSTR            S4, [SP,#0xF8+var_5C]
2FBD88:  VMUL.F32        S4, S4, S24
2FBD8C:  LDRSH.W         R1, [R5,#8]
2FBD90:  LDRSH.W         R2, [R5,#0xA]
2FBD94:  LDRSH.W         R3, [R5,#0xC]
2FBD98:  VMOV            S2, R1
2FBD9C:  VMOV            S0, R2
2FBDA0:  ADD             R2, SP, #0xF8+var_80; CVector *
2FBDA2:  VMOV            S6, R3; CVector *
2FBDA6:  VCVT.F32.S32    S0, S0
2FBDAA:  VCVT.F32.S32    S2, S2
2FBDAE:  VCVT.F32.S32    S6, S6
2FBDB2:  LDR             R1, [SP,#0xF8+var_A8]
2FBDB4:  VMUL.F32        S0, S0, S16
2FBDB8:  VMUL.F32        S2, S2, S16
2FBDBC:  VMUL.F32        S6, S6, S16
2FBDC0:  VSTR            S0, [SP,#0xF8+var_6C]
2FBDC4:  VSTR            S2, [SP,#0xF8+var_70]
2FBDC8:  IT NE
2FBDCA:  ADDNE.W         R1, R0, #0x30 ; '0'
2FBDCE:  VMUL.F32        S0, S6, S24
2FBDD2:  LDR             R0, [R1,#8]
2FBDD4:  VLDR            D16, [R1]
2FBDD8:  ADD             R1, SP, #0xF8+var_70; CVector *
2FBDDA:  STR             R0, [SP,#0xF8+var_78]
2FBDDC:  ADD             R0, SP, #0xF8+var_64; this
2FBDDE:  VSTR            S4, [SP,#0xF8+var_5C]
2FBDE2:  VSTR            S0, [SP,#0xF8+var_68]
2FBDE6:  VLDR            S0, [SP,#0xF8+var_78]
2FBDEA:  VSTR            D16, [SP,#0xF8+var_80]
2FBDEE:  VMUL.F32        S0, S0, S24
2FBDF2:  VSTR            S0, [SP,#0xF8+var_78]
2FBDF6:  BLX             j__ZN10CCollision10DistToLineEPK7CVectorS2_S2_; CCollision::DistToLine(CVector const*,CVector const*,CVector const*)
2FBDFA:  LDRSH.W         R3, [R8]
2FBDFE:  MOV             R10, R0
2FBE00:  LDRSH.W         R0, [R5,#8]
2FBE04:  LDRSH.W         R1, [R5,#0xA]
2FBE08:  VMOV            S0, R3
2FBE0C:  LDRSH.W         R2, [R5,#0xC]
2FBE10:  MOV             R5, R4
2FBE12:  VMOV            S6, R0
2FBE16:  VCVT.F32.S32    S0, S0
2FBE1A:  LDRSH.W         R3, [R5]
2FBE1E:  VMOV            S2, R1
2FBE22:  ADD             R0, SP, #0xF8+var_8C; this
2FBE24:  VMOV            S10, R2
2FBE28:  VMOV            S4, R3
2FBE2C:  VCVT.F32.S32    S2, S2
2FBE30:  VCVT.F32.S32    S4, S4
2FBE34:  LDRSH.W         R1, [R6]
2FBE38:  VCVT.F32.S32    S6, S6
2FBE3C:  VMUL.F32        S0, S0, S16
2FBE40:  VMOV            S8, R1
2FBE44:  VCVT.F32.S32    S8, S8
2FBE48:  VCVT.F32.S32    S10, S10
2FBE4C:  VMUL.F32        S2, S2, S16
2FBE50:  VMUL.F32        S4, S4, S16
2FBE54:  VMUL.F32        S6, S6, S16
2FBE58:  VMUL.F32        S8, S8, S16
2FBE5C:  VMUL.F32        S10, S10, S16
2FBE60:  VSUB.F32        S0, S2, S0
2FBE64:  VSUB.F32        S2, S6, S4
2FBE68:  VSUB.F32        S4, S10, S8
2FBE6C:  VSTR            S0, [SP,#0xF8+var_88]
2FBE70:  VSTR            S2, [SP,#0xF8+var_8C]
2FBE74:  VSTR            S4, [SP,#0xF8+var_84]
2FBE78:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
2FBE7C:  LDR             R0, [SP,#0xF8+var_B0]
2FBE7E:  VLDR            S0, [SP,#0xF8+var_8C]
2FBE82:  VLDR            S2, [SP,#0xF8+var_88]
2FBE86:  LDR             R0, [R0,#0x14]
2FBE88:  VLDR            S4, [SP,#0xF8+var_84]
2FBE8C:  VLDR            S6, [R0,#0x10]
2FBE90:  VLDR            S8, [R0,#0x14]
2FBE94:  VMUL.F32        S0, S0, S6
2FBE98:  VLDR            S10, [R0,#0x18]
2FBE9C:  VMUL.F32        S2, S2, S8
2FBEA0:  VMUL.F32        S4, S4, S10
2FBEA4:  VADD.F32        S0, S0, S2
2FBEA8:  VMOV            S2, R10
2FBEAC:  VADD.F32        S0, S0, S4
2FBEB0:  VSUB.F32        S0, S26, S0
2FBEB4:  VMUL.F32        S0, S0, S28
2FBEB8:  VADD.F32        S0, S2, S0
2FBEBC:  VCMPE.F32       S0, S20
2FBEC0:  VMRS            APSR_nzcv, FPSCR
2FBEC4:  BGE             loc_2FBEDA
2FBEC6:  VMOV.F32        S20, S0
2FBECA:  LDR             R1, [SP,#0xF8+var_A4]
2FBECC:  STR             R1, [SP,#0xF8+var_C4]
2FBECE:  LDR             R1, [SP,#0xF8+var_B8]
2FBED0:  STR             R1, [SP,#0xF8+var_BC]
2FBED2:  LDR             R1, [SP,#0xF8+var_B4]
2FBED4:  STR.W           R11, [SP,#0xF8+var_C0]
2FBED8:  STR             R1, [SP,#0xF8+var_C8]
2FBEDA:  LDR             R1, [SP,#0xF8+var_94]
2FBEDC:  ADD.W           R9, R9, #1
2FBEE0:  CMP             R1, R9
2FBEE2:  BNE.W           loc_2FBD10
2FBEE6:  B               loc_2FBC72
2FBEE8:  LDRD.W          R6, R8, [SP,#0xF8+var_E4]
2FBEEC:  LDR             R1, [SP,#0xF8+var_D4]
2FBEEE:  ADDS            R0, R1, #1
2FBEF0:  CMP             R1, R6
2FBEF2:  BLT.W           loc_2FBC28
2FBEF6:  LDR             R1, [SP,#0xF8+var_F0]
2FBEF8:  ADD.W           R0, R8, #1
2FBEFC:  CMP             R8, R1
2FBEFE:  MOV             R8, R0
2FBF00:  BLT.W           loc_2FBC1C
2FBF04:  LDR             R1, [SP,#0xF8+var_C8]
2FBF06:  LDR             R0, [SP,#0xF8+var_BC]
2FBF08:  PKHBT.W         R0, R0, R1,LSL#16
2FBF0C:  LDR             R1, [SP,#0xF8+var_F8]
2FBF0E:  STR             R0, [R1]
2FBF10:  LDRD.W          R1, R0, [SP,#0xF8+var_C4]
2FBF14:  PKHBT.W         R0, R0, R1,LSL#16
2FBF18:  LDR             R1, [SP,#0xF8+var_F4]
2FBF1A:  STR             R0, [R1]
2FBF1C:  ADD             SP, SP, #0xA0
2FBF1E:  VPOP            {D8-D14}
2FBF22:  ADD             SP, SP, #4
2FBF24:  POP.W           {R8-R11}
2FBF28:  POP             {R4-R7,PC}
