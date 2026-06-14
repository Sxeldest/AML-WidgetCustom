; =========================================================
; Game Engine Function: _ZN19FxInfoAttractLine_c8GetValueEffffhPv
; Address            : 0x36AC50 - 0x36ADB2
; =========================================================

36AC50:  PUSH            {R4,R5,R7,LR}
36AC52:  ADD             R7, SP, #8
36AC54:  VPUSH           {D8-D10}
36AC58:  SUB             SP, SP, #0x50
36AC5A:  VMOV            S2, R1
36AC5E:  VLDR            S0, [R7,#arg_0]
36AC62:  LDRB            R1, [R0,#6]
36AC64:  ADDS            R0, #8; this
36AC66:  VDIV.F32        S0, S2, S0
36AC6A:  MOV             R4, R3
36AC6C:  CMP             R1, #0
36AC6E:  ADD             R1, SP, #0x70+var_60; float *
36AC70:  VMOV            S2, R2
36AC74:  IT EQ
36AC76:  VMOVEQ.F32      S2, S0
36AC7A:  VMOV            R2, S2; float
36AC7E:  BLX             j__ZN16FxInterpInfo32_c6GetValEPff; FxInterpInfo32_c::GetVal(float *,float)
36AC82:  LDR             R5, [R7,#arg_8]
36AC84:  VMOV.F32        S20, #1.0
36AC88:  VLDR            S0, [SP,#0x70+var_60]
36AC8C:  ADD             R0, SP, #0x70+var_6C
36AC8E:  VLDR            S6, [SP,#0x70+var_54]
36AC92:  VLDR            S8, [R5]
36AC96:  VLDR            S2, [SP,#0x70+var_5C]
36AC9A:  VSUB.F32        S6, S6, S0
36AC9E:  VLDR            S14, [SP,#0x70+var_50]
36ACA2:  VSUB.F32        S3, S8, S0
36ACA6:  VLDR            S10, [R5,#4]
36ACAA:  VSUB.F32        S14, S14, S2
36ACAE:  VLDR            S4, [SP,#0x70+var_58]
36ACB2:  VSUB.F32        S1, S10, S2
36ACB6:  VLDR            S5, [SP,#0x70+var_4C]
36ACBA:  VLDR            S12, [R5,#8]
36ACBE:  VSUB.F32        S5, S5, S4
36ACC2:  VLDR            S18, =0.0
36ACC6:  VSUB.F32        S7, S12, S4
36ACCA:  VMUL.F32        S3, S6, S3
36ACCE:  VMUL.F32        S11, S6, S6
36ACD2:  VMUL.F32        S9, S14, S14
36ACD6:  VMUL.F32        S1, S14, S1
36ACDA:  VMUL.F32        S7, S5, S7
36ACDE:  VADD.F32        S9, S11, S9
36ACE2:  VADD.F32        S1, S3, S1
36ACE6:  VMUL.F32        S3, S5, S5
36ACEA:  VADD.F32        S1, S1, S7
36ACEE:  VADD.F32        S3, S9, S3
36ACF2:  VDIV.F32        S16, S1, S3
36ACF6:  VMAX.F32        D16, D8, D9
36ACFA:  VMIN.F32        D8, D16, D10
36ACFE:  VMUL.F32        S14, S14, S16
36AD02:  VMUL.F32        S6, S6, S16
36AD06:  VMUL.F32        S1, S5, S16
36AD0A:  VADD.F32        S2, S2, S14
36AD0E:  VADD.F32        S0, S0, S6
36AD12:  VADD.F32        S4, S4, S1
36AD16:  VSUB.F32        S2, S2, S10
36AD1A:  VSUB.F32        S0, S0, S8
36AD1E:  VSUB.F32        S4, S4, S12
36AD22:  VSTR            S2, [SP,#0x70+var_68]
36AD26:  VSTR            S0, [SP,#0x70+var_6C]
36AD2A:  VSTR            S4, [SP,#0x70+var_64]
36AD2E:  BLX             j__Z11RwV3dLengthPK5RwV3d; RwV3dLength(RwV3d const*)
36AD32:  VMOV            S16, R0
36AD36:  VCMPE.F32       S16, #0.0
36AD3A:  VMRS            APSR_nzcv, FPSCR
36AD3E:  BLE             loc_36AD48
36AD40:  ADD             R0, SP, #0x70+var_6C
36AD42:  MOV             R1, R0
36AD44:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
36AD48:  VLDR            S0, =0.1
36AD4C:  VCMPE.F32       S16, S0
36AD50:  VMRS            APSR_nzcv, FPSCR
36AD54:  BLE             loc_36ADAA
36AD56:  VMOV            S0, R4
36AD5A:  VLDR            S2, [SP,#0x70+var_48]
36AD5E:  VLDR            S4, [SP,#0x70+var_68]
36AD62:  VMUL.F32        S0, S2, S0
36AD66:  VLDR            S2, [SP,#0x70+var_6C]
36AD6A:  VLDR            S6, [SP,#0x70+var_64]
36AD6E:  VMUL.F32        S2, S2, S0
36AD72:  VMUL.F32        S4, S0, S4
36AD76:  VMUL.F32        S0, S6, S0
36AD7A:  VSTR            S2, [SP,#0x70+var_6C]
36AD7E:  VSTR            S4, [SP,#0x70+var_68]
36AD82:  VSTR            S0, [SP,#0x70+var_64]
36AD86:  VLDR            S6, [R5,#0xC]
36AD8A:  VLDR            S8, [R5,#0x10]
36AD8E:  VLDR            S10, [R5,#0x14]
36AD92:  VADD.F32        S2, S6, S2
36AD96:  VADD.F32        S4, S8, S4
36AD9A:  VADD.F32        S0, S10, S0
36AD9E:  VSTR            S2, [R5,#0xC]
36ADA2:  VSTR            S4, [R5,#0x10]
36ADA6:  VSTR            S0, [R5,#0x14]
36ADAA:  ADD             SP, SP, #0x50 ; 'P'
36ADAC:  VPOP            {D8-D10}
36ADB0:  POP             {R4,R5,R7,PC}
