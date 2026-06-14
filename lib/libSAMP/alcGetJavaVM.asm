; =========================================================
; Game Engine Function: alcGetJavaVM
; Address            : 0xF0DA4 - 0xF0DAC
; =========================================================

F0DA4:  LDR             R0, =(dword_23DF30 - 0xF0DAA)
F0DA6:  ADD             R0, PC; dword_23DF30
F0DA8:  LDR             R0, [R0]
F0DAA:  BX              LR
