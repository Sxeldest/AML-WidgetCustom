; =========================================================
; Game Engine Function: _ZN10CCollision8Closest3EP7CVectorS1_
; Address            : 0x2E078E - 0x2E085A
; =========================================================

2E078E:  VLDR            S0, [R1]
2E0792:  ADD.W           R2, R0, #0x18
2E0796:  VLDR            S6, [R0]
2E079A:  VLDR            S12, [R0,#0xC]
2E079E:  VLDR            S2, [R1,#4]
2E07A2:  VSUB.F32        S6, S0, S6
2E07A6:  VLDR            S8, [R0,#4]
2E07AA:  VSUB.F32        S12, S0, S12
2E07AE:  VLDR            S14, [R0,#0x10]
2E07B2:  VSUB.F32        S8, S2, S8
2E07B6:  VLDR            S3, [R0,#0x18]
2E07BA:  VSUB.F32        S14, S2, S14
2E07BE:  VLDR            S5, [R0,#0x1C]
2E07C2:  VSUB.F32        S0, S0, S3
2E07C6:  VLDR            S4, [R1,#8]
2E07CA:  VSUB.F32        S2, S2, S5
2E07CE:  VLDR            S10, [R0,#8]
2E07D2:  VLDR            S1, [R0,#0x14]
2E07D6:  VMUL.F32        S6, S6, S6
2E07DA:  VSUB.F32        S10, S4, S10
2E07DE:  VLDR            S3, [R0,#0x20]
2E07E2:  VSUB.F32        S1, S4, S1
2E07E6:  VMUL.F32        S8, S8, S8
2E07EA:  VMUL.F32        S14, S14, S14
2E07EE:  VMUL.F32        S12, S12, S12
2E07F2:  VSUB.F32        S4, S4, S3
2E07F6:  VMUL.F32        S2, S2, S2
2E07FA:  VMUL.F32        S0, S0, S0
2E07FE:  VMUL.F32        S1, S1, S1
2E0802:  VADD.F32        S6, S6, S8
2E0806:  VMUL.F32        S10, S10, S10
2E080A:  VADD.F32        S12, S12, S14
2E080E:  VMUL.F32        S8, S4, S4
2E0812:  VADD.F32        S2, S0, S2
2E0816:  VADD.F32        S4, S6, S10
2E081A:  VADD.F32        S0, S12, S1
2E081E:  VADD.F32        S2, S2, S8
2E0822:  VCMPE.F32       S4, S0
2E0826:  VMRS            APSR_nzcv, FPSCR
2E082A:  BGE             loc_2E0838
2E082C:  VCMPE.F32       S4, S2
2E0830:  VMRS            APSR_nzcv, FPSCR
2E0834:  BLT             loc_2E0844
2E0836:  B               loc_2E084C
2E0838:  VCMPE.F32       S0, S2
2E083C:  VMRS            APSR_nzcv, FPSCR
2E0840:  BGE             loc_2E084C
2E0842:  ADDS            R0, #0xC
2E0844:  VLDR            D16, [R0]
2E0848:  LDR             R0, [R0,#8]
2E084A:  B               loc_2E0852
2E084C:  VLDR            D16, [R2]
2E0850:  LDR             R0, [R2,#8]
2E0852:  STR             R0, [R1,#8]
2E0854:  VSTR            D16, [R1]
2E0858:  BX              LR
