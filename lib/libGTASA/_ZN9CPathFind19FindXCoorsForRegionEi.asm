; =========================================================
; Game Engine Function: _ZN9CPathFind19FindXCoorsForRegionEi
; Address            : 0x317668 - 0x317686
; =========================================================

317668:  VMOV            S0, R1
31766C:  VLDR            S2, =750.0
317670:  VCVT.F32.S32    S0, S0
317674:  VMUL.F32        S0, S0, S2
317678:  VLDR            S2, =-3000.0
31767C:  VADD.F32        S0, S0, S2
317680:  VMOV            R0, S0
317684:  BX              LR
