; =========================================================
; Game Engine Function: sub_E4F28
; Address            : 0xE4F28 - 0xE4F30
; =========================================================

E4F28:  LDR             R0, =(dword_237518 - 0xE4F2E)
E4F2A:  ADD             R0, PC; dword_237518
E4F2C:  LDR             R0, [R0]
E4F2E:  BX              LR
