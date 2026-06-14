; =========================================================
; Game Engine Function: _ZN13CWidgetSlider15GetNotchedValueEv
; Address            : 0x2C75FC - 0x2C7622
; =========================================================

2C75FC:  VMOV.F32        S0, #1.0
2C7600:  VLDR            S2, [R0,#0x224]
2C7604:  VCMP.F32        S2, S0
2C7608:  VMRS            APSR_nzcv, FPSCR
2C760C:  ITEE NE
2C760E:  LDRNE.W         R1, [R0,#0x228]
2C7612:  LDREQ.W         R1, [R0,#0x90]
2C7616:  SUBEQ           R1, #1
2C7618:  ADD.W           R0, R0, R1,LSL#2
2C761C:  LDR.W           R0, [R0,#0x94]
2C7620:  BX              LR
