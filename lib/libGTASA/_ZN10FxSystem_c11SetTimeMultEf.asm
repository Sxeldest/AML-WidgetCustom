; =========================================================
; Game Engine Function: _ZN10FxSystem_c11SetTimeMultEf
; Address            : 0x36E5D8 - 0x36E5F2
; =========================================================

36E5D8:  VLDR            S0, =1000.0
36E5DC:  VMOV            S2, R1
36E5E0:  VMUL.F32        S0, S2, S0
36E5E4:  VCVT.S32.F32    S0, S0
36E5E8:  VMOV            R1, S0
36E5EC:  STRH.W          R1, [R0,#0x64]
36E5F0:  BX              LR
