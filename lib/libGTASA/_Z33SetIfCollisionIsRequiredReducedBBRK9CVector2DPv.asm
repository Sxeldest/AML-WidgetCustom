; =========================================================
; Game Engine Function: _Z33SetIfCollisionIsRequiredReducedBBRK9CVector2DPv
; Address            : 0x2E27B4 - 0x2E282A
; =========================================================

2E27B4:  VLDR            S0, =80.0
2E27B8:  VLDR            S2, [R1]
2E27BC:  VLDR            S4, [R0]
2E27C0:  VADD.F32        S2, S2, S0
2E27C4:  VCMPE.F32       S4, S2
2E27C8:  VMRS            APSR_nzcv, FPSCR
2E27CC:  BLT             locret_2E2828
2E27CE:  VLDR            S2, =-80.0
2E27D2:  VLDR            S6, [R1,#8]
2E27D6:  VADD.F32        S6, S6, S2
2E27DA:  VCMPE.F32       S4, S6
2E27DE:  VMRS            APSR_nzcv, FPSCR
2E27E2:  BGT             locret_2E2828
2E27E4:  VLDR            S4, [R1,#0xC]
2E27E8:  VADD.F32        S4, S4, S0
2E27EC:  VLDR            S0, [R0,#4]
2E27F0:  VCMPE.F32       S0, S4
2E27F4:  VMRS            APSR_nzcv, FPSCR
2E27F8:  BLT             locret_2E2828
2E27FA:  VLDR            S4, [R1,#4]
2E27FE:  VADD.F32        S2, S4, S2
2E2802:  VCMPE.F32       S0, S2
2E2806:  VMRS            APSR_nzcv, FPSCR
2E280A:  BGT             locret_2E2828
2E280C:  LDR             R2, =(dword_796120 - 0x2E2816)
2E280E:  LDRB.W          R0, [R1,#0x2B]
2E2812:  ADD             R2, PC; dword_796120
2E2814:  LDR             R2, [R2]
2E2816:  CBZ             R2, loc_2E281C
2E2818:  CBNZ            R0, loc_2E2822
2E281A:  B               locret_2E2828
2E281C:  CMP             R0, #0
2E281E:  IT NE
2E2820:  BXNE            LR
2E2822:  MOVS            R0, #1
2E2824:  STRB.W          R0, [R1,#0x29]
2E2828:  BX              LR
