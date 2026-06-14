; =========================================================
; Game Engine Function: _Z15RpLightSetColorP7RpLightPK10RwRGBAReal
; Address            : 0x2167C6 - 0x2167FE
; =========================================================

2167C6:  VLD1.32         {D16-D17}, [R1]
2167CA:  ADD.W           R1, R0, #0x18
2167CE:  VST1.32         {D16-D17}, [R1]
2167D2:  VLDR            S0, [R0,#0x18]
2167D6:  VLDR            S2, [R0,#0x1C]
2167DA:  VCMP.F32        S0, S2
2167DE:  VMRS            APSR_nzcv, FPSCR
2167E2:  ITTT EQ
2167E4:  VLDREQ          S2, [R0,#0x20]
2167E8:  VCMPEQ.F32      S0, S2
2167EC:  VMRSEQ          APSR_nzcv, FPSCR
2167F0:  BNE             loc_2167F8
2167F2:  MOVS            R1, #1
2167F4:  STRB            R1, [R0,#3]
2167F6:  BX              LR
2167F8:  MOVS            R1, #0
2167FA:  STRB            R1, [R0,#3]
2167FC:  BX              LR
