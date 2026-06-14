; =========================================================
; Game Engine Function: sub_8B770
; Address            : 0x8B770 - 0x8B84C
; =========================================================

8B770:  LDR             R3, =(dword_1ACF68 - 0x8B77E)
8B772:  MOVW            R12, #0x1570
8B776:  VLDR            S12, [R1]
8B77A:  ADD             R3, PC; dword_1ACF68
8B77C:  VLDR            S14, [R1,#4]
8B780:  VLDR            S8, [R0]
8B784:  LDR             R3, [R3]
8B786:  VLDR            S10, [R0,#4]
8B78A:  ADD.W           R1, R3, R12
8B78E:  CBZ             R2, loc_8B7DE
8B790:  LDR.W           R0, [R1,#0x43C]
8B794:  VLDR            S4, [R0,#0x21C]
8B798:  VLDR            S2, [R0,#0x218]
8B79C:  VCMP.F32        S14, S4
8B7A0:  VLDR            S0, [R0,#0x214]
8B7A4:  VMRS            APSR_nzcv, FPSCR
8B7A8:  VCMP.F32        S12, S2
8B7AC:  VLDR            S6, [R0,#0x210]
8B7B0:  IT MI
8B7B2:  VMOVMI.F32      S4, S14
8B7B6:  VMRS            APSR_nzcv, FPSCR
8B7BA:  VCMP.F32        S10, S0
8B7BE:  IT MI
8B7C0:  VMOVMI.F32      S2, S12
8B7C4:  VMRS            APSR_nzcv, FPSCR
8B7C8:  VCMP.F32        S8, S6
8B7CC:  IT GE
8B7CE:  VMOVGE.F32      S0, S10
8B7D2:  VMRS            APSR_nzcv, FPSCR
8B7D6:  IT GE
8B7D8:  VMOVGE.F32      S6, S8
8B7DC:  B               loc_8B7EE
8B7DE:  VMOV.F32        S6, S8
8B7E2:  VMOV.F32        S0, S10
8B7E6:  VMOV.F32        S2, S12
8B7EA:  VMOV.F32        S4, S14
8B7EE:  VLDR            S8, [R1]
8B7F2:  MOVS            R0, #0
8B7F4:  VSUB.F32        S10, S6, S8
8B7F8:  VLDR            S6, [R3,#0xE0]
8B7FC:  VCMP.F32        S6, S10
8B800:  VMRS            APSR_nzcv, FPSCR
8B804:  IT LT
8B806:  BXLT            LR
8B808:  VLDR            S10, [R1,#4]
8B80C:  VADD.F32        S2, S2, S8
8B810:  VLDR            S8, [R3,#0xE4]
8B814:  MOVS            R1, #0
8B816:  VSUB.F32        S0, S0, S10
8B81A:  MOVS            R2, #0
8B81C:  VADD.F32        S4, S4, S10
8B820:  VCMP.F32        S6, S2
8B824:  VMRS            APSR_nzcv, FPSCR
8B828:  IT MI
8B82A:  MOVMI           R1, #1
8B82C:  VCMP.F32        S8, S0
8B830:  VMRS            APSR_nzcv, FPSCR
8B834:  VCMP.F32        S8, S4
8B838:  IT GE
8B83A:  MOVGE           R2, #1
8B83C:  VMRS            APSR_nzcv, FPSCR
8B840:  AND.W           R1, R1, R2
8B844:  IT MI
8B846:  MOVMI           R0, #1
8B848:  ANDS            R0, R1
8B84A:  BX              LR
