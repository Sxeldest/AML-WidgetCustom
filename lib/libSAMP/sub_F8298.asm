; =========================================================
; Game Engine Function: sub_F8298
; Address            : 0xF8298 - 0xF82B6
; =========================================================

F8298:  LDR             R0, =(dword_2402D4 - 0xF82A2)
F829A:  LDR             R1, =(dword_2402D8 - 0xF82A6)
F829C:  LDR             R2, =(dword_2431DC - 0xF82A8)
F829E:  ADD             R0, PC; dword_2402D4
F82A0:  LDR             R3, =(dword_2431E0 - 0xF82AC)
F82A2:  ADD             R1, PC; dword_2402D8
F82A4:  ADD             R2, PC; dword_2431DC
F82A6:  LDR             R0, [R0]
F82A8:  ADD             R3, PC; dword_2431E0
F82AA:  LDR             R1, [R1]
F82AC:  LDR             R2, [R2]
F82AE:  STR             R2, [R0]
F82B0:  LDR             R0, [R3]
F82B2:  STR             R0, [R1]
F82B4:  BX              LR
