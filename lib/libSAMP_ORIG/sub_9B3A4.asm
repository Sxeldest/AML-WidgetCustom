; =========================================================
; Game Engine Function: sub_9B3A4
; Address            : 0x9B3A4 - 0x9B4C2
; =========================================================

9B3A4:  VMOV.F32        S0, #-1.0
9B3A8:  VLDR            S2, [R0,#0x1E0]
9B3AC:  VMOV.F32        S8, #1.0
9B3B0:  VLDR            S6, [R0,#0x1E8]
9B3B4:  VLDR            S4, [R0,#0x1E4]
9B3B8:  VLDR            S10, [R0,#0x1EC]
9B3BC:  VLDR            S14, [R1]
9B3C0:  VADD.F32        S1, S2, S0
9B3C4:  VADD.F32        S2, S10, S8
9B3C8:  VLDR            S10, [R1,#8]
9B3CC:  VADD.F32        S12, S6, S8
9B3D0:  VADD.F32        S6, S4, S0
9B3D4:  VLDR            S4, [R1,#4]
9B3D8:  VLDR            S0, [R1,#0xC]
9B3DC:  VCMP.F32        S14, S1
9B3E0:  VMRS            APSR_nzcv, FPSCR
9B3E4:  ITT GE
9B3E6:  VCMPGE.F32      S4, S6
9B3EA:  VMRSGE          APSR_nzcv, FPSCR
9B3EE:  BGE             loc_9B428
9B3F0:  LDR             R1, =(dword_1ACF68 - 0x9B3FA)
9B3F2:  LDRB.W          R2, [R0,#0x78]
9B3F6:  ADD             R1, PC; dword_1ACF68
9B3F8:  LDR             R1, [R1]
9B3FA:  ADD.W           R1, R1, #0x1560
9B3FE:  CBZ             R2, loc_9B468
9B400:  VCMP.F32        S14, S1
9B404:  VMRS            APSR_nzcv, FPSCR
9B408:  BPL             loc_9B43E
9B40A:  VLDR            S8, [R0,#0xC]
9B40E:  VLDR            S10, [R0,#0x50]
9B412:  VSUB.F32        S8, S14, S8
9B416:  VADD.F32        S8, S8, S10
9B41A:  VLDR            S10, [R1]
9B41E:  VSUB.F32        S10, S8, S10
9B422:  VLDR            S8, =0.0
9B426:  B               loc_9B460
9B428:  VCMP.F32        S10, S12
9B42C:  VMRS            APSR_nzcv, FPSCR
9B430:  ITT LS
9B432:  VCMPLS.F32      S0, S2
9B436:  VMRSLS          APSR_nzcv, FPSCR
9B43A:  BHI             loc_9B3F0
9B43C:  BX              LR
9B43E:  VCMP.F32        S10, S12
9B442:  VMRS            APSR_nzcv, FPSCR
9B446:  BLT             loc_9B468
9B448:  VLDR            S12, [R0,#0xC]
9B44C:  VLDR            S14, [R0,#0x50]
9B450:  VSUB.F32        S10, S10, S12
9B454:  VLDR            S12, [R1]
9B458:  VADD.F32        S10, S10, S14
9B45C:  VADD.F32        S10, S10, S12
9B460:  VSTR            S8, [R0,#0x68]
9B464:  VSTR            S10, [R0,#0x60]
9B468:  VCMP.F32        S4, S6
9B46C:  VMRS            APSR_nzcv, FPSCR
9B470:  BPL             loc_9B490
9B472:  VLDR            S0, [R0,#0x10]
9B476:  VLDR            S2, [R0,#0x54]
9B47A:  VSUB.F32        S0, S4, S0
9B47E:  VADD.F32        S0, S0, S2
9B482:  VLDR            S2, [R1,#4]
9B486:  VSUB.F32        S0, S0, S2
9B48A:  VLDR            S2, =0.0
9B48E:  B               loc_9B4B8
9B490:  VCMP.F32        S0, S2
9B494:  VMRS            APSR_nzcv, FPSCR
9B498:  IT LT
9B49A:  BXLT            LR
9B49C:  VLDR            S2, [R0,#0x10]
9B4A0:  VLDR            S4, [R0,#0x54]
9B4A4:  VSUB.F32        S0, S0, S2
9B4A8:  VMOV.F32        S2, #1.0
9B4AC:  VADD.F32        S0, S0, S4
9B4B0:  VLDR            S4, [R1,#4]
9B4B4:  VADD.F32        S0, S0, S4
9B4B8:  VSTR            S2, [R0,#0x6C]
9B4BC:  VSTR            S0, [R0,#0x64]
9B4C0:  BX              LR
