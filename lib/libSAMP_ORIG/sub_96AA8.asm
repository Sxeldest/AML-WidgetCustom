; =========================================================
; Game Engine Function: sub_96AA8
; Address            : 0x96AA8 - 0x96B62
; =========================================================

96AA8:  LDR             R3, =(dword_1ACF68 - 0x96AAE)
96AAA:  ADD             R3, PC; dword_1ACF68
96AAC:  LDR.W           R12, [R3]
96AB0:  LDRB.W          R3, [R12,#0xB0]
96AB4:  CBZ             R3, loc_96AD8
96AB6:  LDRB            R3, [R0,#8]
96AB8:  LSLS            R3, R3, #0x1F
96ABA:  BNE             loc_96AD8
96ABC:  MOVW            R3, #0x1554
96AC0:  VLDR            S4, [R0,#0x274]
96AC4:  ADD             R3, R12
96AC6:  VLDR            S0, [R3]
96ACA:  VLDR            S2, [R3,#0x378]
96ACE:  VADD.F32        S0, S0, S0
96AD2:  VMLA.F32        S0, S2, S4
96AD6:  B               loc_96ADC
96AD8:  VLDR            S0, [R0,#0x18]
96ADC:  VLDR            S12, [R0,#0x10]
96AE0:  VLDR            S4, [R1,#4]
96AE4:  VLDR            S3, [R2,#4]
96AE8:  VADD.F32        S12, S0, S12
96AEC:  VLDR            S2, [R1]
96AF0:  VLDR            S1, [R2]
96AF4:  VADD.F32        S4, S3, S4
96AF8:  VLDR            S10, [R0,#0xC]
96AFC:  VLDR            S14, [R0,#0x14]
96B00:  VADD.F32        S2, S1, S2
96B04:  VLDR            S8, [R1,#0xC]
96B08:  VADD.F32        S10, S14, S10
96B0C:  VLDR            S6, [R1,#8]
96B10:  VSUB.F32        S8, S8, S3
96B14:  VCMP.F32        S12, S4
96B18:  VMRS            APSR_nzcv, FPSCR
96B1C:  IT GE
96B1E:  VMOVGE.F32      S4, S12
96B22:  VSUB.F32        S0, S4, S0
96B26:  VSUB.F32        S4, S6, S1
96B2A:  VCMP.F32        S10, S2
96B2E:  VMRS            APSR_nzcv, FPSCR
96B32:  IT GE
96B34:  VMOVGE.F32      S2, S10
96B38:  VSUB.F32        S2, S2, S14
96B3C:  VCMP.F32        S8, S0
96B40:  VMRS            APSR_nzcv, FPSCR
96B44:  IT MI
96B46:  VMOVMI.F32      S0, S8
96B4A:  VCMP.F32        S4, S2
96B4E:  VMRS            APSR_nzcv, FPSCR
96B52:  IT MI
96B54:  VMOVMI.F32      S2, S4
96B58:  VSTR            S2, [R0,#0xC]
96B5C:  VSTR            S0, [R0,#0x10]
96B60:  BX              LR
