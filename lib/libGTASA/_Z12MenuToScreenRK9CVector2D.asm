; =========================================================
; Game Engine Function: _Z12MenuToScreenRK9CVector2D
; Address            : 0x297104 - 0x297154
; =========================================================

297104:  LDR             R2, =(RsGlobal_ptr - 0x29710E)
297106:  VLDR            S0, =-320.0
29710A:  ADD             R2, PC; RsGlobal_ptr
29710C:  VLDR            S2, [R1]
297110:  VLDR            S4, [R1,#4]
297114:  LDR             R2, [R2]; RsGlobal
297116:  VADD.F32        S0, S2, S0
29711A:  VLDR            S8, [R2,#8]
29711E:  VLDR            S6, [R2,#4]
297122:  VCVT.F32.S32    S2, S8
297126:  VLDR            S8, =480.0
29712A:  VCVT.F32.S32    S6, S6
29712E:  VMUL.F32        S0, S0, S2
297132:  VMUL.F32        S2, S4, S2
297136:  VMOV.F32        S4, #0.5
29713A:  VDIV.F32        S0, S0, S8
29713E:  VDIV.F32        S2, S2, S8
297142:  VMUL.F32        S4, S6, S4
297146:  VADD.F32        S0, S4, S0
29714A:  VSTR            S0, [R0]
29714E:  VSTR            S2, [R0,#4]
297152:  BX              LR
