; =========================================================
; Game Engine Function: _ZN21FxInfoGroundCollide_c8GetValueEffffhPv
; Address            : 0x36AE04 - 0x36B056
; =========================================================

36AE04:  PUSH            {R4-R7,LR}
36AE06:  ADD             R7, SP, #0xC
36AE08:  PUSH.W          {R8}
36AE0C:  VPUSH           {D8-D13}
36AE10:  SUB             SP, SP, #0xB0
36AE12:  LDR             R6, [R7,#arg_8]
36AE14:  MOV             R4, R0
36AE16:  MOV             R8, R3
36AE18:  LDRB            R3, [R4,#6]
36AE1A:  LDRD.W          R0, R5, [R6]
36AE1E:  VMOV            S6, R1
36AE22:  STRD.W          R0, R5, [SP,#0xF0+var_4C]
36AE26:  VMOV            S18, R2
36AE2A:  VLDR            S0, [R6,#8]
36AE2E:  MOVS            R0, #0
36AE30:  VLDR            S2, [R7,#arg_0]
36AE34:  MOVS            R2, #1
36AE36:  VSTR            S0, [SP,#0xF0+var_44]
36AE3A:  CMP             R3, #0
36AE3C:  VLDR            S4, [R6,#0x14]
36AE40:  ADD             R3, SP, #0xF0+var_7C; int
36AE42:  VDIV.F32        S2, S6, S2
36AE46:  STRD.W          R2, R0, [SP,#0xF0+var_F0]; int
36AE4A:  STRD.W          R0, R0, [SP,#0xF0+var_E8]; int
36AE4E:  ADD             R2, SP, #0xF0+var_78; int
36AE50:  STRD.W          R0, R0, [SP,#0xF0+var_E0]; int
36AE54:  STR             R0, [SP,#0xF0+var_D8]; int
36AE56:  ADD             R0, SP, #0xF0+var_4C; CVector *
36AE58:  VSUB.F32        S0, S0, S4
36AE5C:  IT EQ
36AE5E:  VMOVEQ.F32      S18, S2
36AE62:  VMOV            R1, S0; int
36AE66:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
36AE6A:  CMP             R0, #1
36AE6C:  BNE.W           loc_36B04A
36AE70:  VLDR            S16, [SP,#0xF0+var_70]
36AE74:  VLDR            S0, [SP,#0xF0+var_44]
36AE78:  VCMPE.F32       S16, S0
36AE7C:  VMRS            APSR_nzcv, FPSCR
36AE80:  BGT.W           loc_36B04A
36AE84:  VLDR            S0, [R6,#8]
36AE88:  VCMPE.F32       S0, S16
36AE8C:  VMRS            APSR_nzcv, FPSCR
36AE90:  BGE.W           loc_36B04A
36AE94:  VMOV            R2, S18; float
36AE98:  ADD.W           R0, R4, #8; this
36AE9C:  ADD             R1, SP, #0xF0+var_BC; float *
36AE9E:  VMOV            S20, R8
36AEA2:  VLDR            S22, [SP,#0xF0+var_68]
36AEA6:  VLDR            S24, [SP,#0xF0+var_64]
36AEAA:  VLDR            S26, [SP,#0xF0+var_60]
36AEAE:  BLX             j__ZN16FxInterpInfo32_c6GetValEPff; FxInterpInfo32_c::GetVal(float *,float)
36AEB2:  VLDR            S0, [R6,#0xC]
36AEB6:  VLDR            S2, [R6,#0x10]
36AEBA:  VMUL.F32        S6, S22, S0
36AEBE:  VLDR            S4, [R6,#0x14]
36AEC2:  VMUL.F32        S8, S24, S2
36AEC6:  VLDR            S18, [SP,#0xF0+var_B8]
36AECA:  VMUL.F32        S10, S26, S4
36AECE:  VADD.F32        S6, S8, S6
36AED2:  VLDR            S8, [SP,#0xF0+var_BC]
36AED6:  VADD.F32        S6, S10, S6
36AEDA:  VADD.F32        S6, S6, S6
36AEDE:  VMUL.F32        S6, S8, S6
36AEE2:  VMUL.F32        S8, S22, S6
36AEE6:  VMUL.F32        S10, S24, S6
36AEEA:  VMUL.F32        S6, S26, S6
36AEEE:  VSUB.F32        S0, S0, S8
36AEF2:  VSUB.F32        S2, S2, S10
36AEF6:  VSUB.F32        S4, S4, S6
36AEFA:  VSTR            S0, [SP,#0xF0+var_C8]
36AEFE:  VSTR            S2, [SP,#0xF0+var_C4]
36AF02:  VSTR            S4, [SP,#0xF0+var_C0]
36AF06:  BLX             rand
36AF0A:  MOVW            R4, #0x8BAD
36AF0E:  MOVW            R5, #0x2710
36AF12:  MOVT            R4, #0x68DB
36AF16:  VLDR            S22, =0.0002
36AF1A:  SMMUL.W         R1, R0, R4
36AF1E:  VMOV.F32        S24, #-1.0
36AF22:  ASRS            R2, R1, #0xC
36AF24:  ADD.W           R1, R2, R1,LSR#31
36AF28:  MLS.W           R0, R1, R5, R0
36AF2C:  VMOV            S0, R0
36AF30:  VCVT.F32.S32    S0, S0
36AF34:  VMUL.F32        S0, S0, S22
36AF38:  VADD.F32        S0, S0, S24
36AF3C:  VSTR            S0, [SP,#0xF0+var_D4]
36AF40:  BLX             rand
36AF44:  SMMUL.W         R1, R0, R4
36AF48:  ASRS            R2, R1, #0xC
36AF4A:  ADD.W           R1, R2, R1,LSR#31
36AF4E:  MLS.W           R0, R1, R5, R0
36AF52:  VMOV            S0, R0
36AF56:  VCVT.F32.S32    S0, S0
36AF5A:  VMUL.F32        S0, S0, S22
36AF5E:  VADD.F32        S0, S0, S24
36AF62:  VSTR            S0, [SP,#0xF0+var_D0]
36AF66:  BLX             rand
36AF6A:  SMMUL.W         R1, R0, R4
36AF6E:  ASRS            R2, R1, #0xC
36AF70:  ADD.W           R1, R2, R1,LSR#31
36AF74:  MLS.W           R0, R1, R5, R0
36AF78:  VMOV            S0, R0
36AF7C:  ADD             R0, SP, #0xF0+var_D4
36AF7E:  VCVT.F32.S32    S0, S0
36AF82:  MOV             R1, R0
36AF84:  VMUL.F32        S0, S0, S22
36AF88:  VADD.F32        S0, S0, S24
36AF8C:  VSTR            S0, [SP,#0xF0+var_CC]
36AF90:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
36AF94:  VLDR            S0, [SP,#0xF0+var_B4]
36AF98:  VMOV.F32        S2, #5.0
36AF9C:  VLDR            S4, [SP,#0xF0+var_D0]
36AFA0:  ADD             R4, SP, #0xF0+var_C8
36AFA2:  VMUL.F32        S0, S0, S20
36AFA6:  VLDR            S6, [SP,#0xF0+var_CC]
36AFAA:  MOV             R0, R4
36AFAC:  VMUL.F32        S0, S0, S2
36AFB0:  VLDR            S2, [SP,#0xF0+var_D4]
36AFB4:  VMUL.F32        S6, S6, S0
36AFB8:  VMUL.F32        S2, S2, S0
36AFBC:  VMUL.F32        S0, S4, S0
36AFC0:  VSTR            S6, [SP,#0xF0+var_CC]
36AFC4:  VSTR            S2, [SP,#0xF0+var_D4]
36AFC8:  VSTR            S0, [SP,#0xF0+var_D0]
36AFCC:  BLX             j__Z11RwV3dLengthPK5RwV3d; RwV3dLength(RwV3d const*)
36AFD0:  VLDR            S0, [SP,#0xF0+var_D4]
36AFD4:  MOV             R5, R0
36AFD6:  VLDR            S6, [SP,#0xF0+var_C8]
36AFDA:  MOV             R0, R4
36AFDC:  VLDR            S2, [SP,#0xF0+var_D0]
36AFE0:  MOV             R1, R4
36AFE2:  VLDR            S8, [SP,#0xF0+var_C4]
36AFE6:  VADD.F32        S0, S6, S0
36AFEA:  VLDR            S10, [SP,#0xF0+var_C0]
36AFEE:  VLDR            S4, [SP,#0xF0+var_CC]
36AFF2:  VADD.F32        S2, S8, S2
36AFF6:  VADD.F32        S4, S10, S4
36AFFA:  VSTR            S0, [SP,#0xF0+var_C8]
36AFFE:  VSTR            S2, [SP,#0xF0+var_C4]
36B002:  VSTR            S4, [SP,#0xF0+var_C0]
36B006:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
36B00A:  VMOV            S0, R5
36B00E:  VLDR            S2, [SP,#0xF0+var_C8]
36B012:  VLDR            S4, [SP,#0xF0+var_C4]
36B016:  VLDR            S6, [SP,#0xF0+var_C0]
36B01A:  VMUL.F32        S2, S0, S2
36B01E:  VMUL.F32        S4, S0, S4
36B022:  VMUL.F32        S0, S0, S6
36B026:  VMUL.F32        S8, S18, S2
36B02A:  VSTR            S2, [SP,#0xF0+var_C8]
36B02E:  VMUL.F32        S6, S18, S4
36B032:  VSTR            S4, [SP,#0xF0+var_C4]
36B036:  VMUL.F32        S0, S18, S0
36B03A:  VSTR            S16, [R6,#8]
36B03E:  VSTR            S8, [R6,#0xC]
36B042:  VSTR            S6, [R6,#0x10]
36B046:  VSTR            S0, [R6,#0x14]
36B04A:  ADD             SP, SP, #0xB0
36B04C:  VPOP            {D8-D13}
36B050:  POP.W           {R8}
36B054:  POP             {R4-R7,PC}
