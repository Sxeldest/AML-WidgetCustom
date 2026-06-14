; =========================================================
; Game Engine Function: _ZN9CPathFind18FindRegionForCoorsEff
; Address            : 0x316E14 - 0x316E66
; =========================================================

316E14:  VLDR            S0, =3000.0
316E18:  VMOV            S2, R2
316E1C:  VMOV            S4, R1
316E20:  VLDR            S6, =750.0
316E24:  VADD.F32        S2, S2, S0
316E28:  MOVS            R1, #0
316E2A:  VADD.F32        S0, S4, S0
316E2E:  MOVS            R0, #7
316E30:  VDIV.F32        S2, S2, S6
316E34:  VDIV.F32        S0, S0, S6
316E38:  VCVT.S32.F32    S2, S2
316E3C:  VCVT.S32.F32    S0, S0
316E40:  VMOV            R2, S2
316E44:  VMOV            R3, S0
316E48:  CMP             R2, #0
316E4A:  IT LE
316E4C:  MOVLE           R2, R1
316E4E:  CMP             R2, #7
316E50:  IT GE
316E52:  MOVGE           R2, R0
316E54:  CMP             R3, #0
316E56:  IT GT
316E58:  MOVGT           R1, R3
316E5A:  CMP             R1, #7
316E5C:  IT GE
316E5E:  MOVGE           R1, R0
316E60:  ORR.W           R0, R1, R2,LSL#3
316E64:  BX              LR
