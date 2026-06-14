; =========================================================
; Game Engine Function: _ZN10CCollision34IsStoredPolyStillValidVerticalLineERK7CVectorfR9CColPointP15CStoredCollPoly
; Address            : 0x2DCD34 - 0x2DD010
; =========================================================

2DCD34:  PUSH            {R4,R5,R7,LR}
2DCD36:  ADD             R7, SP, #8
2DCD38:  VPUSH           {D8-D11}
2DCD3C:  SUB             SP, SP, #0x38
2DCD3E:  MOV             R4, R3
2DCD40:  MOV             R5, R2
2DCD42:  LDRB.W          R2, [R4,#0x24]
2DCD46:  CMP             R2, #0
2DCD48:  BEQ.W           loc_2DCE58
2DCD4C:  VLDR            S0, [R4]
2DCD50:  VMOV            S22, R1
2DCD54:  VLDR            S12, [R4,#0x18]
2DCD58:  ADD             R1, SP, #0x60+var_54; CVector *
2DCD5A:  VLDR            S2, [R4,#4]
2DCD5E:  MOV             R2, SP
2DCD60:  VLDR            S14, [R4,#0x1C]
2DCD64:  VSUB.F32        S12, S12, S0
2DCD68:  VLDR            S6, [R4,#0xC]
2DCD6C:  VLDR            S4, [R4,#8]
2DCD70:  VSUB.F32        S14, S14, S2
2DCD74:  VLDR            S1, [R4,#0x20]
2DCD78:  VSUB.F32        S0, S6, S0
2DCD7C:  VLDR            S8, [R4,#0x10]
2DCD80:  VLDR            S10, [R4,#0x14]
2DCD84:  VSUB.F32        S1, S1, S4
2DCD88:  VSUB.F32        S2, S8, S2
2DCD8C:  VLDR            S16, [R0]
2DCD90:  VSUB.F32        S4, S10, S4
2DCD94:  VLDR            S18, [R0,#4]
2DCD98:  VLDR            S20, [R0,#8]
2DCD9C:  ADD             R0, SP, #0x60+var_48; CVector *
2DCD9E:  VSTR            S14, [SP,#0x60+var_50]
2DCDA2:  VSTR            S12, [SP,#0x60+var_54]
2DCDA6:  VSTR            S1, [SP,#0x60+var_4C]
2DCDAA:  VSTR            S2, [SP,#0x60+var_5C]
2DCDAE:  VSTR            S0, [SP,#0x60+var_60]
2DCDB2:  VSTR            S4, [SP,#0x60+var_58]
2DCDB6:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
2DCDBA:  LDR             R0, [SP,#0x60+var_40]
2DCDBC:  STR             R0, [SP,#0x60+var_30]
2DCDBE:  ADD             R0, SP, #0x60+var_38; this
2DCDC0:  VLDR            D16, [SP,#0x60+var_48]
2DCDC4:  VSTR            D16, [SP,#0x60+var_38]
2DCDC8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
2DCDCC:  VLDR            S2, [SP,#0x60+var_38]
2DCDD0:  VLDR            S8, [R4]
2DCDD4:  VLDR            S10, [R4,#4]
2DCDD8:  VABS.F32        S1, S2
2DCDDC:  VLDR            S6, [SP,#0x60+var_38+4]
2DCDE0:  VMUL.F32        S14, S2, S8
2DCDE4:  VLDR            S0, [R4,#8]
2DCDE8:  VMUL.F32        S12, S6, S10
2DCDEC:  VLDR            S4, [SP,#0x60+var_30]
2DCDF0:  VMUL.F32        S3, S4, S0
2DCDF4:  VADD.F32        S12, S14, S12
2DCDF8:  VABS.F32        S14, S6
2DCDFC:  VADD.F32        S12, S12, S3
2DCE00:  VCMPE.F32       S1, S14
2DCE04:  VMRS            APSR_nzcv, FPSCR
2DCE08:  BLE             loc_2DCE28
2DCE0A:  VABS.F32        S3, S4
2DCE0E:  VCMPE.F32       S1, S3
2DCE12:  VMRS            APSR_nzcv, FPSCR
2DCE16:  BLE             loc_2DCE28
2DCE18:  VCMPE.F32       S2, #0.0
2DCE1C:  MOVS            R0, #0
2DCE1E:  VMRS            APSR_nzcv, FPSCR
2DCE22:  IT LE
2DCE24:  MOVLE           R0, #1
2DCE26:  B               loc_2DCE6A
2DCE28:  VCMPE.F32       S4, #0.0
2DCE2C:  VMRS            APSR_nzcv, FPSCR
2DCE30:  VNEG.F32        S1, S4
2DCE34:  VMOV.F32        S3, S4
2DCE38:  IT LT
2DCE3A:  VMOVLT.F32      S3, S1
2DCE3E:  VCMPE.F32       S14, S3
2DCE42:  VMRS            APSR_nzcv, FPSCR
2DCE46:  BLE             loc_2DCE5C
2DCE48:  VCMPE.F32       S6, #0.0
2DCE4C:  MOVS            R0, #3
2DCE4E:  VMRS            APSR_nzcv, FPSCR
2DCE52:  IT GT
2DCE54:  MOVGT           R0, #2
2DCE56:  B               loc_2DCE6A
2DCE58:  MOVS            R0, #0
2DCE5A:  B               loc_2DCFF8
2DCE5C:  VCMPE.F32       S4, #0.0
2DCE60:  MOVS            R0, #5
2DCE62:  VMRS            APSR_nzcv, FPSCR
2DCE66:  IT GT
2DCE68:  MOVGT           R0, #4
2DCE6A:  VMUL.F32        S14, S18, S6
2DCE6E:  VMUL.F32        S3, S16, S2
2DCE72:  VMUL.F32        S5, S4, S22
2DCE76:  VMUL.F32        S1, S20, S4
2DCE7A:  VADD.F32        S7, S3, S14
2DCE7E:  VADD.F32        S5, S7, S5
2DCE82:  VADD.F32        S7, S7, S1
2DCE86:  VSUB.F32        S5, S5, S12
2DCE8A:  VSUB.F32        S7, S7, S12
2DCE8E:  VMUL.F32        S5, S7, S5
2DCE92:  VCMPE.F32       S5, #0.0
2DCE96:  VMRS            APSR_nzcv, FPSCR
2DCE9A:  BGT.W           loc_2DCFF2
2DCE9E:  VLDR            S5, =0.0
2DCEA2:  VSUB.F32        S12, S12, S3
2DCEA6:  VSUB.F32        S3, S22, S20
2DCEAA:  AND.W           R0, R0, #7
2DCEAE:  VMUL.F32        S6, S6, S5
2DCEB2:  CMP             R0, #5; switch 6 cases
2DCEB4:  VMUL.F32        S2, S2, S5
2DCEB8:  VSUB.F32        S12, S12, S14
2DCEBC:  VMUL.F32        S4, S3, S4
2DCEC0:  VADD.F32        S2, S2, S6
2DCEC4:  VSUB.F32        S6, S12, S1
2DCEC8:  VADD.F32        S2, S2, S4
2DCECC:  VDIV.F32        S2, S6, S2
2DCED0:  VMUL.F32        S4, S3, S2
2DCED4:  VMUL.F32        S6, S2, S5
2DCED8:  VADD.F32        S2, S20, S4
2DCEDC:  VADD.F32        S4, S18, S6
2DCEE0:  VADD.F32        S6, S16, S6
2DCEE4:  BHI             def_2DCEE6; jumptable 002DCEE6 default case
2DCEE6:  TBB.W           [PC,R0]; switch jump
2DCEEA:  DCB 3; jump table for switch statement
2DCEEB:  DCB 0xD
2DCEEC:  DCB 0x1C
2DCEED:  DCB 0x25
2DCEEE:  DCB 0x36
2DCEEF:  DCB 0x3F
2DCEF0:  VLDR            S1, [R4,#0x10]; jumptable 002DCEE6 case 0
2DCEF4:  VLDR            S3, [R4,#0x14]
2DCEF8:  VLDR            S12, [R4,#0x1C]
2DCEFC:  VLDR            S14, [R4,#0x20]
2DCF00:  B               loc_2DCF14
2DCF02:  B               loc_2DCF88; jumptable 002DCEE6 default case
2DCF04:  VLDR            S12, [R4,#0x10]; jumptable 002DCEE6 case 1
2DCF08:  VLDR            S14, [R4,#0x14]
2DCF0C:  VLDR            S1, [R4,#0x1C]
2DCF10:  VLDR            S3, [R4,#0x20]
2DCF14:  VMOV.F32        S5, S4
2DCF18:  VMOV.F32        S7, S2
2DCF1C:  VMOV.F32        S9, S10
2DCF20:  B               loc_2DCF88
2DCF22:  VLDR            S3, [R4,#0xC]; jumptable 002DCEE6 case 2
2DCF26:  VLDR            S1, [R4,#0x14]
2DCF2A:  VLDR            S14, [R4,#0x18]
2DCF2E:  VLDR            S12, [R4,#0x20]
2DCF32:  B               loc_2DCF44
2DCF34:  VLDR            S14, [R4,#0xC]; jumptable 002DCEE6 case 3
2DCF38:  VLDR            S12, [R4,#0x14]
2DCF3C:  VLDR            S3, [R4,#0x18]
2DCF40:  VLDR            S1, [R4,#0x20]
2DCF44:  VMOV.F32        S9, S0
2DCF48:  VMOV.F32        S5, S2
2DCF4C:  VMOV.F32        S7, S6
2DCF50:  VMOV.F32        S0, S8
2DCF54:  B               loc_2DCF88
2DCF56:  VLDR            S1, [R4,#0xC]; jumptable 002DCEE6 case 4
2DCF5A:  VLDR            S3, [R4,#0x10]
2DCF5E:  VLDR            S12, [R4,#0x18]
2DCF62:  VLDR            S14, [R4,#0x1C]
2DCF66:  B               loc_2DCF78
2DCF68:  VLDR            S12, [R4,#0xC]; jumptable 002DCEE6 case 5
2DCF6C:  VLDR            S14, [R4,#0x10]
2DCF70:  VLDR            S1, [R4,#0x18]
2DCF74:  VLDR            S3, [R4,#0x1C]
2DCF78:  VMOV.F32        S5, S6
2DCF7C:  VMOV.F32        S7, S4
2DCF80:  VMOV.F32        S9, S8
2DCF84:  VMOV.F32        S0, S10
2DCF88:  VSUB.F32        S11, S14, S0
2DCF8C:  VSUB.F32        S8, S5, S9
2DCF90:  VSUB.F32        S13, S12, S9
2DCF94:  VSUB.F32        S10, S7, S0
2DCF98:  VMUL.F32        S11, S8, S11
2DCF9C:  VMUL.F32        S13, S10, S13
2DCFA0:  VSUB.F32        S11, S13, S11
2DCFA4:  VCMPE.F32       S11, #0.0
2DCFA8:  VMRS            APSR_nzcv, FPSCR
2DCFAC:  BLT             loc_2DCFF2
2DCFAE:  VSUB.F32        S0, S3, S0
2DCFB2:  VSUB.F32        S9, S1, S9
2DCFB6:  VMUL.F32        S0, S8, S0
2DCFBA:  VMUL.F32        S8, S10, S9
2DCFBE:  VSUB.F32        S0, S8, S0
2DCFC2:  VCMPE.F32       S0, #0.0
2DCFC6:  VMRS            APSR_nzcv, FPSCR
2DCFCA:  BGT             loc_2DCFF2
2DCFCC:  VSUB.F32        S0, S3, S14
2DCFD0:  VSUB.F32        S8, S5, S12
2DCFD4:  VSUB.F32        S10, S1, S12
2DCFD8:  VSUB.F32        S12, S7, S14
2DCFDC:  VMUL.F32        S0, S8, S0
2DCFE0:  VMUL.F32        S8, S12, S10
2DCFE4:  VSUB.F32        S0, S8, S0
2DCFE8:  VCMPE.F32       S0, #0.0
2DCFEC:  VMRS            APSR_nzcv, FPSCR
2DCFF0:  BGE             loc_2DD000
2DCFF2:  MOVS            R0, #0
2DCFF4:  STRB.W          R0, [R4,#0x24]
2DCFF8:  ADD             SP, SP, #0x38 ; '8'
2DCFFA:  VPOP            {D8-D11}
2DCFFE:  POP             {R4,R5,R7,PC}
2DD000:  VSTR            S6, [R5]
2DD004:  MOVS            R0, #1
2DD006:  VSTR            S4, [R5,#4]
2DD00A:  VSTR            S2, [R5,#8]
2DD00E:  B               loc_2DCFF8
