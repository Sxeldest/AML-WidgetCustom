; =========================================================
; Game Engine Function: _ZN11CWidgetList14GetWidgetValueEv
; Address            : 0x2BAB2A - 0x2BAB40
; =========================================================

2BAB2A:  ADD.W           R0, R0, #0x10000
2BAB2E:  ADD.W           R0, R0, #0x1CC0
2BAB32:  VLDR            S0, [R0]
2BAB36:  VCVT.F32.S32    S0, S0
2BAB3A:  VMOV            R0, S0
2BAB3E:  BX              LR
