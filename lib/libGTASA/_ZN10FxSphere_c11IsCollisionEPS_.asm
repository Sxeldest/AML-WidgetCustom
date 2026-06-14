; =========================================================
; Game Engine Function: _ZN10FxSphere_c11IsCollisionEPS_
; Address            : 0x36DD4C - 0x36DD94
; =========================================================

36DD4C:  VLDR            S0, [R0]
36DD50:  VLDR            S2, [R1]
36DD54:  VLDR            D16, [R0,#4]
36DD58:  VSUB.F32        S0, S2, S0
36DD5C:  VLDR            D17, [R1,#4]
36DD60:  VSUB.F32        D16, D17, D16
36DD64:  VLDR            S4, [R0,#0xC]
36DD68:  VLDR            S2, [R1,#0xC]
36DD6C:  MOVS            R0, #0
36DD6E:  VADD.F32        S2, S4, S2
36DD72:  VMUL.F32        D2, D16, D16
36DD76:  VMUL.F32        S0, S0, S0
36DD7A:  VMUL.F32        S2, S2, S2
36DD7E:  VADD.F32        S0, S0, S4
36DD82:  VADD.F32        S0, S0, S5
36DD86:  VCMPE.F32       S0, S2
36DD8A:  VMRS            APSR_nzcv, FPSCR
36DD8E:  IT LT
36DD90:  MOVLT           R0, #1
36DD92:  BX              LR
