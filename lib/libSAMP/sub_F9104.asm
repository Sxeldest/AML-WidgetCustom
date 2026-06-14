; =========================================================
; Game Engine Function: sub_F9104
; Address            : 0xF9104 - 0xF911E
; =========================================================

F9104:  LDR             R0, [R0,#4]
F9106:  CBZ             R0, locret_F911C
F9108:  LDR             R1, =(off_23494C - 0xF9116)
F910A:  MOV             R2, #0x3EBFF7
F9112:  ADD             R1, PC; off_23494C
F9114:  LDR             R1, [R1]; dword_23DF24
F9116:  LDR             R1, [R1]
F9118:  ADD             R1, R2
F911A:  BX              R1
F911C:  BX              LR
