; =========================================================
; Game Engine Function: sub_95424
; Address            : 0x95424 - 0x95482
; =========================================================

95424:  VMOV            S0, R0
95428:  VCMP.F32        S0, #0.0
9542C:  VMRS            APSR_nzcv, FPSCR
95430:  ITT EQ
95432:  MOVEQ           R0, #1
95434:  BXEQ            LR
95436:  VMOV            S2, R2
9543A:  MOVS            R0, #0
9543C:  VCMP.F32        S0, S2
95440:  VMRS            APSR_nzcv, FPSCR
95444:  ITTT HI
95446:  VMOVHI          S4, R3
9544A:  VCMPHI.F32      S4, #0.0
9544E:  VMRSHI          APSR_nzcv, FPSCR
95452:  BHI             loc_95456
95454:  BX              LR
95456:  VMOV            S6, R1
9545A:  VSUB.F32        S0, S0, S2
9545E:  VSUB.F32        S6, S6, S2
95462:  VDIV.F32        S0, S0, S4
95466:  VDIV.F32        S2, S6, S4
9546A:  VCVT.S32.F32    S2, S2
9546E:  VCVT.S32.F32    S0, S0
95472:  VMOV            R0, S2
95476:  VMOV            R1, S0
9547A:  SUBS            R0, R1, R0
9547C:  BIC.W           R0, R0, R0,ASR#31
95480:  BX              LR
