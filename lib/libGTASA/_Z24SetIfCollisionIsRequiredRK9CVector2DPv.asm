; =========================================================
; Game Engine Function: _Z24SetIfCollisionIsRequiredRK9CVector2DPv
; Address            : 0x2E2704 - 0x2E2760
; =========================================================

2E2704:  LDR             R2, =(dword_796120 - 0x2E270A)
2E2706:  ADD             R2, PC; dword_796120
2E2708:  LDR             R2, [R2]
2E270A:  CBZ             R2, loc_2E2756
2E270C:  VLDR            S0, [R0]
2E2710:  VLDR            S2, [R1]
2E2714:  VCMPE.F32       S0, S2
2E2718:  VMRS            APSR_nzcv, FPSCR
2E271C:  BLT             locret_2E275E
2E271E:  VLDR            S2, [R1,#8]
2E2722:  VCMPE.F32       S0, S2
2E2726:  VMRS            APSR_nzcv, FPSCR
2E272A:  IT GT
2E272C:  BXGT            LR
2E272E:  VLDR            S0, [R0,#4]
2E2732:  VLDR            S2, [R1,#0xC]
2E2736:  VCMPE.F32       S0, S2
2E273A:  VMRS            APSR_nzcv, FPSCR
2E273E:  BLT             locret_2E275E
2E2740:  VLDR            S2, [R1,#4]
2E2744:  VCMPE.F32       S0, S2
2E2748:  VMRS            APSR_nzcv, FPSCR
2E274C:  ITT LE
2E274E:  MOVLE           R0, #1
2E2750:  STRBLE.W        R0, [R1,#0x29]
2E2754:  BX              LR
2E2756:  LDRB.W          R2, [R1,#0x2B]
2E275A:  CMP             R2, #0
2E275C:  BEQ             loc_2E270C
2E275E:  BX              LR
