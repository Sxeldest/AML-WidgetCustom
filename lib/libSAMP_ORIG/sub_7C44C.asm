; =========================================================
; Game Engine Function: sub_7C44C
; Address            : 0x7C44C - 0x7C4A6
; =========================================================

7C44C:  VLDR            S6, [R0,#0x28]
7C450:  VLDR            S10, [R1,#4]
7C454:  VLDR            S4, [R0,#0x24]
7C458:  VLDR            S8, [R1]
7C45C:  VCMP.F32        S10, S6
7C460:  VLDR            S2, [R0,#0x20]
7C464:  VMRS            APSR_nzcv, FPSCR
7C468:  VCMP.F32        S8, S4
7C46C:  VLDR            S0, [R0,#0x1C]
7C470:  IT MI
7C472:  VMOVMI.F32      S10, S6
7C476:  VMRS            APSR_nzcv, FPSCR
7C47A:  VCMP.F32        S10, S2
7C47E:  IT MI
7C480:  VMOVMI.F32      S8, S4
7C484:  VMRS            APSR_nzcv, FPSCR
7C488:  VCMP.F32        S8, S0
7C48C:  IT GT
7C48E:  VMOVGT.F32      S10, S2
7C492:  VMRS            APSR_nzcv, FPSCR
7C496:  IT GT
7C498:  VMOVGT.F32      S8, S0
7C49C:  VSTR            S8, [R0,#0x14]
7C4A0:  VSTR            S10, [R0,#0x18]
7C4A4:  BX              LR
