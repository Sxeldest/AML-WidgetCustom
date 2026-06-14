; =========================================================
; Game Engine Function: _ZN24CWidgetRegionArcadeStick15GetWidgetValue2EPfS0_
; Address            : 0x2BFD80 - 0x2BFD9A
; =========================================================

2BFD80:  VLDR            S0, [R0,#0x90]
2BFD84:  VCVT.F32.S32    S0, S0
2BFD88:  VSTR            S0, [R1]
2BFD8C:  VLDR            S0, [R0,#0x94]
2BFD90:  VCVT.F32.S32    S0, S0
2BFD94:  VSTR            S0, [R2]
2BFD98:  BX              LR
