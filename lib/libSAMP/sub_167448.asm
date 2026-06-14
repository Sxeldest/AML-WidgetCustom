; =========================================================
; Game Engine Function: sub_167448
; Address            : 0x167448 - 0x1674C4
; =========================================================

167448:  PUSH            {R7,LR}
16744A:  MOV             R7, SP
16744C:  LDR             R3, =(dword_381B58 - 0x16745A)
16744E:  MOVW            R12, #0x19AC
167452:  VLDR            S0, [R0,#0xC]
167456:  ADD             R3, PC; dword_381B58
167458:  LDR.W           LR, [R3]
16745C:  LDR.W           R3, [LR,R12]
167460:  VLDR            S2, [R3,#0x1D4]
167464:  VCMP.F32        S2, S0
167468:  VMRS            APSR_nzcv, FPSCR
16746C:  BPL             loc_1674A4
16746E:  VLDR            S0, [R0,#4]
167472:  VLDR            S2, [R3,#0x1DC]
167476:  VCMP.F32        S2, S0
16747A:  VMRS            APSR_nzcv, FPSCR
16747E:  BLE             loc_1674A4
167480:  VLDR            S0, [R0,#8]
167484:  VLDR            S2, [R3,#0x1D0]
167488:  VCMP.F32        S2, S0
16748C:  VMRS            APSR_nzcv, FPSCR
167490:  BPL             loc_1674A4
167492:  VLDR            S0, [R0]
167496:  VLDR            S2, [R3,#0x1D8]
16749A:  VCMP.F32        S2, S0
16749E:  VMRS            APSR_nzcv, FPSCR
1674A2:  BGT             loc_1674BC
1674A4:  CBZ             R1, loc_1674B0
1674A6:  ADD.W           R0, LR, R12
1674AA:  LDR             R0, [R0,#0x24]
1674AC:  CMP             R0, R1
1674AE:  BEQ             loc_1674BC
1674B0:  CBNZ            R2, loc_1674C0
1674B2:  MOVW            R0, #0x2D20
1674B6:  ADD             R0, LR
1674B8:  LDRB            R0, [R0]
1674BA:  CBZ             R0, loc_1674C0
1674BC:  MOVS            R0, #0
1674BE:  POP             {R7,PC}
1674C0:  MOVS            R0, #1
1674C2:  POP             {R7,PC}
