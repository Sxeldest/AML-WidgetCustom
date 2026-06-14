; =========================================================
; Game Engine Function: _Z17IsPointInsideLinefffffff
; Address            : 0x5AE4B8 - 0x5AE4F8
; =========================================================

5AE4B8:  VMOV            S6, R0
5AE4BC:  VLDR            S0, [SP,#arg_0]
5AE4C0:  VLDR            S2, [SP,#arg_4]
5AE4C4:  VMOV            S4, R1
5AE4C8:  VSUB.F32        S0, S0, S6
5AE4CC:  MOVS            R0, #0
5AE4CE:  VSUB.F32        S2, S2, S4
5AE4D2:  VMOV            S4, R2
5AE4D6:  VMOV            S6, R3
5AE4DA:  VMUL.F32        S0, S0, S6
5AE4DE:  VMUL.F32        S2, S2, S4
5AE4E2:  VSUB.F32        S0, S0, S2
5AE4E6:  VLDR            S2, [SP,#arg_8]
5AE4EA:  VCMPE.F32       S0, S2
5AE4EE:  VMRS            APSR_nzcv, FPSCR
5AE4F2:  IT GE
5AE4F4:  MOVGE           R0, #1
5AE4F6:  BX              LR
