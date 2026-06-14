; =========================================================
; Game Engine Function: sub_E4F58
; Address            : 0xE4F58 - 0xE4F60
; =========================================================

E4F58:  LDR             R0, =(dword_23751C - 0xE4F5E)
E4F5A:  ADD             R0, PC; dword_23751C
E4F5C:  LDR             R0, [R0]
E4F5E:  BX              LR
