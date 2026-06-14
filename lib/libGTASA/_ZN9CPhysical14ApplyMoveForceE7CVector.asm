; =========================================================
; Game Engine Function: _ZN9CPhysical14ApplyMoveForceE7CVector
; Address            : 0x3FD488 - 0x3FD4EC
; =========================================================

3FD488:  LDR.W           R12, [R0,#0x44]
3FD48C:  TST.W           R12, #0x60
3FD490:  IT NE
3FD492:  BXNE            LR
3FD494:  VMOV.F32        S0, #1.0
3FD498:  VLDR            S8, [R0,#0x90]
3FD49C:  VMOV            S10, R3
3FD4A0:  MOVS.W          R3, R12,LSL#24
3FD4A4:  VLDR            S2, [R0,#0x48]
3FD4A8:  VMOV            S12, R2
3FD4AC:  VLDR            S4, [R0,#0x4C]
3FD4B0:  VLDR            S6, [R0,#0x50]
3FD4B4:  VDIV.F32        S0, S0, S8
3FD4B8:  VLDR            S8, =0.0
3FD4BC:  VMUL.F32        S12, S0, S12
3FD4C0:  IT PL
3FD4C2:  VMOVPL.F32      S8, S10
3FD4C6:  VMOV            S10, R1
3FD4CA:  VMUL.F32        S10, S0, S10
3FD4CE:  VMUL.F32        S0, S8, S0
3FD4D2:  VADD.F32        S4, S12, S4
3FD4D6:  VADD.F32        S2, S2, S10
3FD4DA:  VADD.F32        S0, S0, S6
3FD4DE:  VSTR            S2, [R0,#0x48]
3FD4E2:  VSTR            S4, [R0,#0x4C]
3FD4E6:  VSTR            S0, [R0,#0x50]
3FD4EA:  BX              LR
