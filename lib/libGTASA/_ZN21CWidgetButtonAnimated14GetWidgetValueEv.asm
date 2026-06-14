; =========================================================
; Game Engine Function: _ZN21CWidgetButtonAnimated14GetWidgetValueEv
; Address            : 0x2B4C44 - 0x2B4C5E
; =========================================================

2B4C44:  LDRB.W          R0, [R0,#0x90]
2B4C48:  VMOV.F32        S0, #1.0
2B4C4C:  VLDR            S2, =0.0
2B4C50:  LSLS            R0, R0, #0x1D
2B4C52:  IT PL
2B4C54:  VMOVPL.F32      S0, S2
2B4C58:  VMOV            R0, S0
2B4C5C:  BX              LR
