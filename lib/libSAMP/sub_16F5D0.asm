; =========================================================
; Game Engine Function: sub_16F5D0
; Address            : 0x16F5D0 - 0x16F68A
; =========================================================

16F5D0:  LDR             R3, =(dword_381B58 - 0x16F5D6)
16F5D2:  ADD             R3, PC; dword_381B58
16F5D4:  LDR.W           R12, [R3]
16F5D8:  LDRB.W          R3, [R12,#0xB0]
16F5DC:  CBZ             R3, loc_16F600
16F5DE:  LDRB            R3, [R0,#8]
16F5E0:  LSLS            R3, R3, #0x1F
16F5E2:  BNE             loc_16F600
16F5E4:  MOVW            R3, #0x1554
16F5E8:  VLDR            S4, [R0,#0x274]
16F5EC:  ADD             R3, R12
16F5EE:  VLDR            S0, [R3]
16F5F2:  VLDR            S2, [R3,#0x378]
16F5F6:  VADD.F32        S0, S0, S0
16F5FA:  VMLA.F32        S0, S2, S4
16F5FE:  B               loc_16F604
16F600:  VLDR            S0, [R0,#0x18]
16F604:  VLDR            S12, [R0,#0x10]
16F608:  VLDR            S4, [R1,#4]
16F60C:  VLDR            S3, [R2,#4]
16F610:  VADD.F32        S12, S0, S12
16F614:  VLDR            S2, [R1]
16F618:  VLDR            S1, [R2]
16F61C:  VADD.F32        S4, S3, S4
16F620:  VLDR            S10, [R0,#0xC]
16F624:  VLDR            S14, [R0,#0x14]
16F628:  VADD.F32        S2, S1, S2
16F62C:  VLDR            S8, [R1,#0xC]
16F630:  VADD.F32        S10, S14, S10
16F634:  VLDR            S6, [R1,#8]
16F638:  VSUB.F32        S8, S8, S3
16F63C:  VCMP.F32        S12, S4
16F640:  VMRS            APSR_nzcv, FPSCR
16F644:  IT GE
16F646:  VMOVGE.F32      S4, S12
16F64A:  VSUB.F32        S0, S4, S0
16F64E:  VSUB.F32        S4, S6, S1
16F652:  VCMP.F32        S10, S2
16F656:  VMRS            APSR_nzcv, FPSCR
16F65A:  IT GE
16F65C:  VMOVGE.F32      S2, S10
16F660:  VSUB.F32        S2, S2, S14
16F664:  VCMP.F32        S8, S0
16F668:  VMRS            APSR_nzcv, FPSCR
16F66C:  IT MI
16F66E:  VMOVMI.F32      S0, S8
16F672:  VCMP.F32        S4, S2
16F676:  VMRS            APSR_nzcv, FPSCR
16F67A:  IT MI
16F67C:  VMOVMI.F32      S2, S4
16F680:  VSTR            S2, [R0,#0xC]
16F684:  VSTR            S0, [R0,#0x10]
16F688:  BX              LR
