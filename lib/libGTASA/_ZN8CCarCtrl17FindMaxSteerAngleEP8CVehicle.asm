; =========================================================
; Game Engine Function: _ZN8CCarCtrl17FindMaxSteerAngleEP8CVehicle
; Address            : 0x2F3368 - 0x2F33B4
; =========================================================

2F3368:  VLDR            S0, [R0,#0x48]
2F336C:  VLDR            S2, [R0,#0x4C]
2F3370:  VMUL.F32        S0, S0, S0
2F3374:  VLDR            S4, [R0,#0x50]
2F3378:  VMUL.F32        S2, S2, S2
2F337C:  VLDR            S6, =0.2
2F3380:  VMUL.F32        S4, S4, S4
2F3384:  VADD.F32        S0, S0, S2
2F3388:  VLDR            S2, =0.9
2F338C:  VADD.F32        S0, S0, S4
2F3390:  VLDR            S4, =0.7
2F3394:  VSQRT.F32       S0, S0
2F3398:  VCMPE.F32       S0, S4
2F339C:  VMRS            APSR_nzcv, FPSCR
2F33A0:  VSUB.F32        S2, S2, S0
2F33A4:  IT GT
2F33A6:  VMOVGT.F32      S2, S6
2F33AA:  VMIN.F32        D0, D1, D2
2F33AE:  VMOV            R0, S0
2F33B2:  BX              LR
