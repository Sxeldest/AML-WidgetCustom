; =========================================================
; Game Engine Function: _ZN13CWidgetSlider14SetWidgetValueEf
; Address            : 0x2C7622 - 0x2C7694
; =========================================================

2C7622:  LDR.W           R12, [R0,#0x90]
2C7626:  CMP.W           R12, #2
2C762A:  IT LT
2C762C:  BXLT            LR
2C762E:  VMOV            S0, R1
2C7632:  ADD.W           R3, R0, #0x98
2C7636:  SUB.W           R2, R12, #1
2C763A:  MOVS            R1, #0
2C763C:  VLDR            S2, [R3,#-4]
2C7640:  VCMPE.F32       S2, S0
2C7644:  VMRS            APSR_nzcv, FPSCR
2C7648:  BGT             loc_2C7658
2C764A:  VLDR            S4, [R3]
2C764E:  VCMPE.F32       S4, S0
2C7652:  VMRS            APSR_nzcv, FPSCR
2C7656:  BGE             loc_2C7662
2C7658:  ADDS            R1, #1
2C765A:  ADDS            R3, #4
2C765C:  CMP             R1, R2
2C765E:  BLT             loc_2C763C
2C7660:  BX              LR
2C7662:  VSUB.F32        S4, S4, S2
2C7666:  VSUB.F32        S0, S0, S2
2C766A:  VMOV            S6, R1
2C766E:  VMOV.F32        S2, #-1.0
2C7672:  VDIV.F32        S0, S0, S4
2C7676:  VMOV            S4, R12
2C767A:  VCVT.F32.S32    S4, S4
2C767E:  VCVT.F32.S32    S6, S6
2C7682:  VADD.F32        S2, S4, S2
2C7686:  VADD.F32        S0, S0, S6
2C768A:  VDIV.F32        S0, S0, S2
2C768E:  VSTR            S0, [R0,#0x224]
2C7692:  BX              LR
