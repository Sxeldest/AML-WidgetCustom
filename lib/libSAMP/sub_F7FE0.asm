; =========================================================
; Game Engine Function: sub_F7FE0
; Address            : 0xF7FE0 - 0xF7FE8
; =========================================================

F7FE0:  LDR             R0, =(dword_2402CC - 0xF7FE6)
F7FE2:  ADD             R0, PC; dword_2402CC
F7FE4:  LDR             R0, [R0]
F7FE6:  BX              LR
