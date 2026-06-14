; =========================================================
; Game Engine Function: _Z18SetIfIplIsRequiredRK9CVector2DPv
; Address            : 0x281694 - 0x28173E
; =========================================================

281694:  LDRB.W          R2, [R1,#0x2C]
281698:  CBZ             R2, loc_2816F4
28169A:  LDR             R2, =(dword_6DFE48 - 0x2816A0)
28169C:  ADD             R2, PC; dword_6DFE48
28169E:  LDR             R2, [R2]
2816A0:  CMP             R2, #0
2816A2:  BEQ             locret_28173C
2816A4:  VLDR            S0, =140.0
2816A8:  VLDR            S2, [R1]
2816AC:  VLDR            S4, [R0]
2816B0:  VADD.F32        S2, S2, S0
2816B4:  VCMPE.F32       S4, S2
2816B8:  VMRS            APSR_nzcv, FPSCR
2816BC:  BLT             locret_28173C
2816BE:  VLDR            S2, =-140.0
2816C2:  VLDR            S6, [R1,#8]
2816C6:  VADD.F32        S6, S6, S2
2816CA:  VCMPE.F32       S4, S6
2816CE:  VMRS            APSR_nzcv, FPSCR
2816D2:  BGT             locret_28173C
2816D4:  VLDR            S4, [R1,#0xC]
2816D8:  VADD.F32        S4, S4, S0
2816DC:  VLDR            S0, [R0,#4]
2816E0:  VCMPE.F32       S0, S4
2816E4:  VMRS            APSR_nzcv, FPSCR
2816E8:  BLT             locret_28173C
2816EA:  VLDR            S4, [R1,#4]
2816EE:  VADD.F32        S2, S4, S2
2816F2:  B               loc_28172C
2816F4:  VLDR            S0, [R0]
2816F8:  VLDR            S2, [R1]
2816FC:  VCMPE.F32       S0, S2
281700:  VMRS            APSR_nzcv, FPSCR
281704:  BLT             locret_28173C
281706:  VLDR            S2, [R1,#8]
28170A:  VCMPE.F32       S0, S2
28170E:  VMRS            APSR_nzcv, FPSCR
281712:  BGT             locret_28173C
281714:  VLDR            S0, [R0,#4]
281718:  VLDR            S2, [R1,#0xC]
28171C:  VCMPE.F32       S0, S2
281720:  VMRS            APSR_nzcv, FPSCR
281724:  IT LT
281726:  BXLT            LR
281728:  VLDR            S2, [R1,#4]
28172C:  VCMPE.F32       S0, S2
281730:  VMRS            APSR_nzcv, FPSCR
281734:  ITT LE
281736:  MOVLE           R0, #1
281738:  STRBLE.W        R0, [R1,#0x2E]
28173C:  BX              LR
