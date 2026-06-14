; =========================================================
; Game Engine Function: _ZN5CFont13ComputeHeightEf
; Address            : 0x5A96B4 - 0x5A96D6
; =========================================================

5A96B4:  VLDR            S0, =32.0
5A96B8:  VMOV            S2, R0
5A96BC:  VMOV.F32        S4, #0.5
5A96C0:  VMUL.F32        S0, S2, S0
5A96C4:  VADD.F32        S2, S2, S2
5A96C8:  VMUL.F32        S0, S0, S4
5A96CC:  VADD.F32        S0, S2, S0
5A96D0:  VMOV            R0, S0
5A96D4:  BX              LR
