; =========================================================
; Game Engine Function: _ZN10CCollision14TestLineSphereERK8CColLineRK10CColSphere
; Address            : 0x2DAB4C - 0x2DACA6
; =========================================================

2DAB4C:  VLDR            S10, [R0]
2DAB50:  VLDR            S0, [R0,#0x10]
2DAB54:  VLDR            S14, [R0,#4]
2DAB58:  VLDR            S2, [R0,#0x14]
2DAB5C:  VSUB.F32        S6, S0, S10
2DAB60:  VLDR            S4, [R0,#8]
2DAB64:  VSUB.F32        S8, S2, S14
2DAB68:  VLDR            S12, [R0,#0x18]
2DAB6C:  VLDR            S9, [R1,#4]
2DAB70:  VSUB.F32        S2, S12, S4
2DAB74:  VLDR            S7, [R1]
2DAB78:  VLDR            S5, [R1,#8]
2DAB7C:  VSUB.F32        S3, S9, S14
2DAB80:  VLDR            S11, =0.000001
2DAB84:  VMUL.F32        S12, S6, S6
2DAB88:  VMUL.F32        S0, S8, S8
2DAB8C:  VMUL.F32        S1, S2, S2
2DAB90:  VADD.F32        S0, S12, S0
2DAB94:  VSUB.F32        S12, S5, S4
2DAB98:  VADD.F32        S0, S0, S1
2DAB9C:  VSUB.F32        S1, S7, S10
2DABA0:  VSQRT.F32       S0, S0
2DABA4:  VCMPE.F32       S0, S11
2DABA8:  VMRS            APSR_nzcv, FPSCR
2DABAC:  BGE             loc_2DABDA
2DABAE:  VMUL.F32        S0, S3, S3
2DABB2:  MOVS            R0, #0
2DABB4:  VMUL.F32        S2, S1, S1
2DABB8:  VMUL.F32        S4, S12, S12
2DABBC:  VADD.F32        S0, S2, S0
2DABC0:  VLDR            S2, [R1,#0xC]
2DABC4:  VMUL.F32        S2, S2, S2
2DABC8:  VADD.F32        S0, S0, S4
2DABCC:  VCMPE.F32       S0, S2
2DABD0:  VMRS            APSR_nzcv, FPSCR
2DABD4:  IT LE
2DABD6:  MOVLE           R0, #1
2DABD8:  BX              LR
2DABDA:  VMUL.F32        S11, S14, S9
2DABDE:  MOVS            R0, #0
2DABE0:  VMUL.F32        S13, S10, S7
2DABE4:  VMUL.F32        S9, S9, S9
2DABE8:  VMUL.F32        S7, S7, S7
2DABEC:  VMUL.F32        S14, S14, S14
2DABF0:  VMUL.F32        S10, S10, S10
2DABF4:  VMUL.F32        S15, S4, S5
2DABF8:  VMUL.F32        S5, S5, S5
2DABFC:  VADD.F32        S11, S13, S11
2DAC00:  VMUL.F32        S4, S4, S4
2DAC04:  VADD.F32        S7, S7, S9
2DAC08:  VMUL.F32        S8, S8, S3
2DAC0C:  VADD.F32        S10, S10, S14
2DAC10:  VMUL.F32        S6, S6, S1
2DAC14:  VMOV.F32        S14, #-2.0
2DAC18:  VADD.F32        S1, S11, S15
2DAC1C:  VMUL.F32        S2, S2, S12
2DAC20:  VADD.F32        S3, S7, S5
2DAC24:  VMUL.F32        S0, S0, S0
2DAC28:  VADD.F32        S4, S10, S4
2DAC2C:  VADD.F32        S6, S6, S8
2DAC30:  VMOV.F32        S10, #-4.0
2DAC34:  VMUL.F32        S8, S1, S14
2DAC38:  VADD.F32        S4, S4, S3
2DAC3C:  VADD.F32        S2, S6, S2
2DAC40:  VLDR            S6, [R1,#0xC]
2DAC44:  VMUL.F32        S6, S6, S6
2DAC48:  VADD.F32        S4, S4, S8
2DAC4C:  VMUL.F32        S2, S2, S14
2DAC50:  VMUL.F32        S8, S0, S10
2DAC54:  VSUB.F32        S4, S4, S6
2DAC58:  VMUL.F32        S6, S2, S2
2DAC5C:  VMUL.F32        S4, S8, S4
2DAC60:  VADD.F32        S4, S6, S4
2DAC64:  VCMPE.F32       S4, #0.0
2DAC68:  VMRS            APSR_nzcv, FPSCR
2DAC6C:  IT LT
2DAC6E:  BXLT            LR
2DAC70:  VSQRT.F32       S4, S4
2DAC74:  MOVS            R1, #0
2DAC76:  VNEG.F32        S2, S2
2DAC7A:  VADD.F32        S0, S0, S0
2DAC7E:  VSUB.F32        S2, S2, S4
2DAC82:  VDIV.F32        S0, S2, S0
2DAC86:  VMOV.F32        S2, #1.0
2DAC8A:  VCMPE.F32       S0, S2
2DAC8E:  VMRS            APSR_nzcv, FPSCR
2DAC92:  VCMPE.F32       S0, #0.0
2DAC96:  IT LE
2DAC98:  MOVLE           R1, #1
2DAC9A:  VMRS            APSR_nzcv, FPSCR
2DAC9E:  IT GE
2DACA0:  MOVGE           R0, #1
2DACA2:  ANDS            R0, R1
2DACA4:  BX              LR
