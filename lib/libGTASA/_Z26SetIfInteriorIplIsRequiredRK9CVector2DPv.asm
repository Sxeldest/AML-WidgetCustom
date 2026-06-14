; =========================================================
; Game Engine Function: _Z26SetIfInteriorIplIsRequiredRK9CVector2DPv
; Address            : 0x28174C - 0x2817B4
; =========================================================

28174C:  LDRB.W          R2, [R1,#0x2C]
281750:  CBZ             R2, locret_2817B2
281752:  VLDR            S0, =140.0
281756:  VLDR            S2, [R1]
28175A:  VLDR            S4, [R0]
28175E:  VADD.F32        S2, S2, S0
281762:  VCMPE.F32       S4, S2
281766:  VMRS            APSR_nzcv, FPSCR
28176A:  BLT             locret_2817B2
28176C:  VLDR            S2, =-140.0
281770:  VLDR            S6, [R1,#8]
281774:  VADD.F32        S6, S6, S2
281778:  VCMPE.F32       S4, S6
28177C:  VMRS            APSR_nzcv, FPSCR
281780:  IT GT
281782:  BXGT            LR
281784:  VLDR            S4, [R1,#0xC]
281788:  VADD.F32        S4, S4, S0
28178C:  VLDR            S0, [R0,#4]
281790:  VCMPE.F32       S0, S4
281794:  VMRS            APSR_nzcv, FPSCR
281798:  BLT             locret_2817B2
28179A:  VLDR            S4, [R1,#4]
28179E:  VADD.F32        S2, S4, S2
2817A2:  VCMPE.F32       S0, S2
2817A6:  VMRS            APSR_nzcv, FPSCR
2817AA:  ITT LE
2817AC:  MOVLE           R0, #1
2817AE:  STRBLE.W        R0, [R1,#0x2E]
2817B2:  BX              LR
