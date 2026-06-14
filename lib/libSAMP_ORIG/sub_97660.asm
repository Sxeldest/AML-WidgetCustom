; =========================================================
; Game Engine Function: sub_97660
; Address            : 0x97660 - 0x976DA
; =========================================================

97660:  LDR             R2, =(dword_1ACF68 - 0x9766A)
97662:  MOVW            R3, #0x19AC
97666:  ADD             R2, PC; dword_1ACF68
97668:  LDR             R2, [R2]
9766A:  LDR             R2, [R2,R3]
9766C:  LDR.W           R3, [R2,#0xB0]
97670:  CBZ             R1, loc_97678
97672:  ANDS            R1, R3
97674:  IT EQ
97676:  BXEQ            LR
97678:  VLDR            S0, [R0]
9767C:  BIC.W           R1, R3, #0xE
97680:  STR.W           R1, [R2,#0xB0]
97684:  VCMP.F32        S0, #0.0
97688:  VMRS            APSR_nzcv, FPSCR
9768C:  BLE             loc_9769E
9768E:  VCVT.S32.F32    S0, S0
97692:  MOVS            R1, #0
97694:  VCVT.F32.S32    S0, S0
97698:  VSTR            S0, [R2,#0x1C]
9769C:  B               loc_976A6
9769E:  MOVS            R1, #0
976A0:  STRB.W          R1, [R2,#0x98]
976A4:  MOVS            R1, #2
976A6:  STR.W           R1, [R2,#0x90]
976AA:  VLDR            S0, [R0,#4]
976AE:  VCMP.F32        S0, #0.0
976B2:  VMRS            APSR_nzcv, FPSCR
976B6:  BLE             loc_976CC
976B8:  VCVT.S32.F32    S0, S0
976BC:  MOVS            R0, #0
976BE:  STR.W           R0, [R2,#0x94]
976C2:  VCVT.F32.S32    S0, S0
976C6:  VSTR            S0, [R2,#0x20]
976CA:  BX              LR
976CC:  MOVS            R0, #0
976CE:  STRB.W          R0, [R2,#0x98]
976D2:  MOVS            R0, #2
976D4:  STR.W           R0, [R2,#0x94]
976D8:  BX              LR
