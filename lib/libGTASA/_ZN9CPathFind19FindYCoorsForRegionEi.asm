; =========================================================
; Game Engine Function: _ZN9CPathFind19FindYCoorsForRegionEi
; Address            : 0x317690 - 0x3176AE
; =========================================================

317690:  VMOV            S0, R1
317694:  VLDR            S2, =750.0
317698:  VCVT.F32.S32    S0, S0
31769C:  VMUL.F32        S0, S0, S2
3176A0:  VLDR            S2, =-3000.0
3176A4:  VADD.F32        S0, S0, S2
3176A8:  VMOV            R0, S0
3176AC:  BX              LR
