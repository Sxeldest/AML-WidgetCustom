; =========================================================
; Game Engine Function: _ZN10FxSystem_c11SetRateMultEf
; Address            : 0x36E5B8 - 0x36E5D2
; =========================================================

36E5B8:  VLDR            S0, =1000.0
36E5BC:  VMOV            S2, R1
36E5C0:  VMUL.F32        S0, S2, S0
36E5C4:  VCVT.S32.F32    S0, S0
36E5C8:  VMOV            R1, S0
36E5CC:  STRH.W          R1, [R0,#0x62]
36E5D0:  BX              LR
