; =========================================================
; Game Engine Function: _ZN11CAutomobile7IsInAirEv
; Address            : 0x551404 - 0x55148E
; =========================================================

551404:  LDR             R1, [R0,#0x44]
551406:  TST.W           R1, #0x2000
55140A:  BNE             loc_55148A
55140C:  LSLS            R1, R1, #0x17
55140E:  BMI             loc_551486
551410:  VMOV.F32        S0, #1.0
551414:  ADD.W           R1, R0, #0x7E8
551418:  VLDR            S2, [R1]
55141C:  VCMPE.F32       S2, S0
551420:  VMRS            APSR_nzcv, FPSCR
551424:  BLT             loc_551486
551426:  ADDW            R1, R0, #0x7EC
55142A:  VLDR            S2, [R1]
55142E:  VCMPE.F32       S2, S0
551432:  VMRS            APSR_nzcv, FPSCR
551436:  BLT             loc_551486
551438:  ADD.W           R1, R0, #0x7F0
55143C:  VLDR            S2, [R1]
551440:  VCMPE.F32       S2, S0
551444:  VMRS            APSR_nzcv, FPSCR
551448:  BLT             loc_551486
55144A:  ADDW            R1, R0, #0x7F4
55144E:  VLDR            S2, [R1]
551452:  VCMPE.F32       S2, S0
551456:  VMRS            APSR_nzcv, FPSCR
55145A:  BLT             loc_551486
55145C:  VLDR            S0, [R0,#0x48]
551460:  VCMP.F32        S0, #0.0
551464:  VMRS            APSR_nzcv, FPSCR
551468:  ITTT EQ
55146A:  VLDREQ          S0, [R0,#0x4C]
55146E:  VCMPEQ.F32      S0, #0.0
551472:  VMRSEQ          APSR_nzcv, FPSCR
551476:  BNE             loc_55148A
551478:  VLDR            S0, [R0,#0x50]
55147C:  VCMP.F32        S0, #0.0
551480:  VMRS            APSR_nzcv, FPSCR
551484:  BNE             loc_55148A
551486:  MOVS            R0, #0
551488:  BX              LR
55148A:  MOVS            R0, #1
55148C:  BX              LR
