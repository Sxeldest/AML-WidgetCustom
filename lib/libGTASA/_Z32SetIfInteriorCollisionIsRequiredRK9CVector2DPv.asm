; =========================================================
; Game Engine Function: _Z32SetIfInteriorCollisionIsRequiredRK9CVector2DPv
; Address            : 0x2E2764 - 0x2E27B4
; =========================================================

2E2764:  LDRB.W          R2, [R1,#0x2B]
2E2768:  CBZ             R2, locret_2E27B2
2E276A:  VLDR            S0, [R0]
2E276E:  VLDR            S2, [R1]
2E2772:  VCMPE.F32       S0, S2
2E2776:  VMRS            APSR_nzcv, FPSCR
2E277A:  BLT             locret_2E27B2
2E277C:  VLDR            S2, [R1,#8]
2E2780:  VCMPE.F32       S0, S2
2E2784:  VMRS            APSR_nzcv, FPSCR
2E2788:  IT GT
2E278A:  BXGT            LR
2E278C:  VLDR            S0, [R0,#4]
2E2790:  VLDR            S2, [R1,#0xC]
2E2794:  VCMPE.F32       S0, S2
2E2798:  VMRS            APSR_nzcv, FPSCR
2E279C:  BLT             locret_2E27B2
2E279E:  VLDR            S2, [R1,#4]
2E27A2:  VCMPE.F32       S0, S2
2E27A6:  VMRS            APSR_nzcv, FPSCR
2E27AA:  ITT LE
2E27AC:  MOVLE           R0, #1
2E27AE:  STRBLE.W        R0, [R1,#0x29]
2E27B2:  BX              LR
