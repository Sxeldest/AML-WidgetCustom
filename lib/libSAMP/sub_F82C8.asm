; =========================================================
; Game Engine Function: sub_F82C8
; Address            : 0xF82C8 - 0xF82E6
; =========================================================

F82C8:  LDR             R0, =(dword_2402D4 - 0xF82D0)
F82CA:  LDR             R1, =(dword_2402D8 - 0xF82D4)
F82CC:  ADD             R0, PC; dword_2402D4
F82CE:  LDR             R2, =(dword_2431DC - 0xF82D8)
F82D0:  ADD             R1, PC; dword_2402D8
F82D2:  LDR             R0, [R0]
F82D4:  ADD             R2, PC; dword_2431DC
F82D6:  LDR             R3, =(dword_2431E0 - 0xF82E0)
F82D8:  LDR             R1, [R1]
F82DA:  LDR             R0, [R0]
F82DC:  ADD             R3, PC; dword_2431E0
F82DE:  STR             R0, [R2]
F82E0:  LDR             R0, [R1]
F82E2:  STR             R0, [R3]
F82E4:  BX              LR
