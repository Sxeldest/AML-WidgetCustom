; =========================================================
; Game Engine Function: _ZN7CCamera35SetParametersForScriptInterpolationEffj
; Address            : 0x3E1598 - 0x3E15C8
; =========================================================

3E1598:  VMOV            S4, R1
3E159C:  VLDR            S0, =100.0
3E15A0:  VMOV            S2, R2
3E15A4:  MOVS            R1, #1
3E15A6:  STR.W           R3, [R0,#0xBB4]
3E15AA:  VDIV.F32        S2, S2, S0
3E15AE:  STRB.W          R1, [R0,#0x4E]
3E15B2:  ADD.W           R1, R0, #0xBB0
3E15B6:  ADDW            R0, R0, #0xBAC
3E15BA:  VDIV.F32        S0, S4, S0
3E15BE:  VSTR            S2, [R1]
3E15C2:  VSTR            S0, [R0]
3E15C6:  BX              LR
