; =========================================================
; Game Engine Function: _ZN11CWidgetList14SetWidgetValueEf
; Address            : 0x2BAB6E - 0x2BAB86
; =========================================================

2BAB6E:  VMOV            S0, R1
2BAB72:  MOV             R2, #0x11CC0
2BAB7A:  VCVT.S32.F32    S0, S0
2BAB7E:  VMOV            R1, S0
2BAB82:  STR             R1, [R0,R2]
2BAB84:  BX              LR
