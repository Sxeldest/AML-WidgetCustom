; =========================================================
; Game Engine Function: _Z27SetIfIplIsRequiredReducedBBRK9CVector2DPv
; Address            : 0x2817BC - 0x281832
; =========================================================

2817BC:  VLDR            S0, =160.0
2817C0:  VLDR            S2, [R1]
2817C4:  VLDR            S4, [R0]
2817C8:  VADD.F32        S2, S2, S0
2817CC:  VCMPE.F32       S4, S2
2817D0:  VMRS            APSR_nzcv, FPSCR
2817D4:  BLT             locret_281830
2817D6:  VLDR            S2, =-160.0
2817DA:  VLDR            S6, [R1,#8]
2817DE:  VADD.F32        S6, S6, S2
2817E2:  VCMPE.F32       S4, S6
2817E6:  VMRS            APSR_nzcv, FPSCR
2817EA:  BGT             locret_281830
2817EC:  VLDR            S4, [R1,#0xC]
2817F0:  VADD.F32        S4, S4, S0
2817F4:  VLDR            S0, [R0,#4]
2817F8:  VCMPE.F32       S0, S4
2817FC:  VMRS            APSR_nzcv, FPSCR
281800:  BLT             locret_281830
281802:  VLDR            S4, [R1,#4]
281806:  VADD.F32        S2, S4, S2
28180A:  VCMPE.F32       S0, S2
28180E:  VMRS            APSR_nzcv, FPSCR
281812:  BGT             locret_281830
281814:  LDR             R2, =(dword_6DFE48 - 0x28181E)
281816:  LDRB.W          R0, [R1,#0x2C]
28181A:  ADD             R2, PC; dword_6DFE48
28181C:  LDR             R2, [R2]
28181E:  CBZ             R2, loc_281824
281820:  CBNZ            R0, loc_28182A
281822:  B               locret_281830
281824:  CMP             R0, #0
281826:  IT NE
281828:  BXNE            LR
28182A:  MOVS            R0, #1
28182C:  STRB.W          R0, [R1,#0x2E]
281830:  BX              LR
