; =========================================================
; Game Engine Function: _ZN10CCollision15DistAlongLine2DEffffff
; Address            : 0x2DAF8C - 0x2DAFBE
; =========================================================

2DAF8C:  VLDR            S0, [SP,#arg_0]
2DAF90:  VMOV            S6, R0
2DAF94:  VLDR            S2, [SP,#arg_4]
2DAF98:  VMOV            S4, R1
2DAF9C:  VSUB.F32        S0, S0, S6
2DAFA0:  VSUB.F32        S2, S2, S4
2DAFA4:  VMOV            S4, R3
2DAFA8:  VMOV            S6, R2
2DAFAC:  VMUL.F32        S0, S0, S6
2DAFB0:  VMUL.F32        S2, S2, S4
2DAFB4:  VADD.F32        S0, S0, S2
2DAFB8:  VMOV            R0, S0
2DAFBC:  BX              LR
