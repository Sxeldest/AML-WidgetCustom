; =========================================================
; Game Engine Function: _Z24emu_GetEnvMapCoefficientv
; Address            : 0x1C051C - 0x1C0526
; =========================================================

1C051C:  LDR             R0, =(envMapCoefficient_ptr - 0x1C0522)
1C051E:  ADD             R0, PC; envMapCoefficient_ptr
1C0520:  LDR             R0, [R0]; envMapCoefficient
1C0522:  LDR             R0, [R0]
1C0524:  BX              LR
