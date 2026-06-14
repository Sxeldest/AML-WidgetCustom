; =========================================================
; Game Engine Function: _ZN9CPathFind19FindXRegionForCoorsEf
; Address            : 0x317600 - 0x31762A
; =========================================================

317600:  VLDR            S0, =3000.0
317604:  VMOV            S2, R1
317608:  VADD.F32        S0, S2, S0
31760C:  VLDR            S2, =750.0
317610:  VDIV.F32        S0, S0, S2
317614:  VCVT.S32.F32    S0, S0
317618:  VMOV            R0, S0
31761C:  CMP             R0, #0
31761E:  IT LE
317620:  MOVLE           R0, #0
317622:  CMP             R0, #7
317624:  IT GE
317626:  MOVGE           R0, #7
317628:  BX              LR
