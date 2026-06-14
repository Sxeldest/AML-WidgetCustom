; =========================================================
; Game Engine Function: _ZN10FxSphere_c14GetDistToPlaneEP9FxPlane_c
; Address            : 0x36DD94 - 0x36DDCE
; =========================================================

36DD94:  VLDR            S0, [R1]
36DD98:  VLDR            S8, [R0]
36DD9C:  VLDR            S2, [R1,#4]
36DDA0:  VLDR            S10, [R0,#4]
36DDA4:  VMUL.F32        S0, S0, S8
36DDA8:  VLDR            S4, [R1,#8]
36DDAC:  VMUL.F32        S2, S2, S10
36DDB0:  VLDR            S12, [R0,#8]
36DDB4:  VLDR            S6, [R1,#0xC]
36DDB8:  VMUL.F32        S4, S4, S12
36DDBC:  VADD.F32        S0, S0, S2
36DDC0:  VADD.F32        S0, S0, S4
36DDC4:  VSUB.F32        S0, S0, S6
36DDC8:  VMOV            R0, S0
36DDCC:  BX              LR
