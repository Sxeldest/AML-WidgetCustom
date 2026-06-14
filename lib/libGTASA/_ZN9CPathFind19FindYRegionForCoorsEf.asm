; =========================================================
; Game Engine Function: _ZN9CPathFind19FindYRegionForCoorsEf
; Address            : 0x317634 - 0x31765E
; =========================================================

317634:  VLDR            S0, =3000.0
317638:  VMOV            S2, R1
31763C:  VADD.F32        S0, S2, S0
317640:  VLDR            S2, =750.0
317644:  VDIV.F32        S0, S0, S2
317648:  VCVT.S32.F32    S0, S0
31764C:  VMOV            R0, S0
317650:  CMP             R0, #0
317652:  IT LE
317654:  MOVLE           R0, #0
317656:  CMP             R0, #7
317658:  IT GE
31765A:  MOVGE           R0, #7
31765C:  BX              LR
