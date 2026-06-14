; =========================================================
; Game Engine Function: _ZN13CWidgetRacing15SetWidgetValue3Efff
; Address            : 0x2BF6BE - 0x2BF6E4
; =========================================================

2BF6BE:  VMOV            S2, R2
2BF6C2:  VMOV            S0, R1
2BF6C6:  VMOV            S4, R3
2BF6CA:  VCVT.S32.F32    S2, S2
2BF6CE:  VCVT.S32.F32    S0, S0
2BF6D2:  VCVT.S32.F32    S4, S4
2BF6D6:  VSTR            S0, [R0,#0x90]
2BF6DA:  VSTR            S2, [R0,#0x94]
2BF6DE:  VSTR            S4, [R0,#0xA0]
2BF6E2:  BX              LR
