; =========================================================
; Game Engine Function: sub_1674C8
; Address            : 0x1674C8 - 0x1675A4
; =========================================================

1674C8:  LDR             R3, =(dword_381B58 - 0x1674D6)
1674CA:  MOVW            R12, #0x1570
1674CE:  VLDR            S12, [R1]
1674D2:  ADD             R3, PC; dword_381B58
1674D4:  VLDR            S14, [R1,#4]
1674D8:  VLDR            S8, [R0]
1674DC:  LDR             R3, [R3]
1674DE:  VLDR            S10, [R0,#4]
1674E2:  ADD.W           R1, R3, R12
1674E6:  CBZ             R2, loc_167536
1674E8:  LDR.W           R0, [R1,#0x43C]
1674EC:  VLDR            S4, [R0,#0x1DC]
1674F0:  VLDR            S2, [R0,#0x1D8]
1674F4:  VCMP.F32        S14, S4
1674F8:  VLDR            S0, [R0,#0x1D4]
1674FC:  VMRS            APSR_nzcv, FPSCR
167500:  VCMP.F32        S12, S2
167504:  VLDR            S6, [R0,#0x1D0]
167508:  IT MI
16750A:  VMOVMI.F32      S4, S14
16750E:  VMRS            APSR_nzcv, FPSCR
167512:  VCMP.F32        S10, S0
167516:  IT MI
167518:  VMOVMI.F32      S2, S12
16751C:  VMRS            APSR_nzcv, FPSCR
167520:  VCMP.F32        S8, S6
167524:  IT GE
167526:  VMOVGE.F32      S0, S10
16752A:  VMRS            APSR_nzcv, FPSCR
16752E:  IT GE
167530:  VMOVGE.F32      S6, S8
167534:  B               loc_167546
167536:  VMOV.F32        S6, S8
16753A:  VMOV.F32        S0, S10
16753E:  VMOV.F32        S2, S12
167542:  VMOV.F32        S4, S14
167546:  VLDR            S8, [R1]
16754A:  MOVS            R0, #0
16754C:  VSUB.F32        S10, S6, S8
167550:  VLDR            S6, [R3,#0xE0]
167554:  VCMP.F32        S6, S10
167558:  VMRS            APSR_nzcv, FPSCR
16755C:  IT LT
16755E:  BXLT            LR
167560:  VLDR            S10, [R1,#4]
167564:  VADD.F32        S2, S2, S8
167568:  VLDR            S8, [R3,#0xE4]
16756C:  MOVS            R1, #0
16756E:  VSUB.F32        S0, S0, S10
167572:  MOVS            R2, #0
167574:  VADD.F32        S4, S4, S10
167578:  VCMP.F32        S6, S2
16757C:  VMRS            APSR_nzcv, FPSCR
167580:  IT MI
167582:  MOVMI           R1, #1
167584:  VCMP.F32        S8, S0
167588:  VMRS            APSR_nzcv, FPSCR
16758C:  VCMP.F32        S8, S4
167590:  IT GE
167592:  MOVGE           R2, #1
167594:  VMRS            APSR_nzcv, FPSCR
167598:  AND.W           R1, R1, R2
16759C:  IT MI
16759E:  MOVMI           R0, #1
1675A0:  ANDS            R0, R1
1675A2:  BX              LR
