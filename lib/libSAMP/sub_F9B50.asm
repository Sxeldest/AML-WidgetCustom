; =========================================================
; Game Engine Function: sub_F9B50
; Address            : 0xF9B50 - 0xF9B5E
; =========================================================

F9B50:  LDR             R0, =(off_234A7C - 0xF9B5A)
F9B52:  EOR.W           R1, R1, #0x80000000
F9B56:  ADD             R0, PC; off_234A7C
F9B58:  LDR             R0, [R0]; dword_23799C
F9B5A:  STR             R1, [R0]
F9B5C:  BX              LR
