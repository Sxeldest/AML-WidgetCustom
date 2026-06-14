; =========================================================
; Game Engine Function: sub_163D4C
; Address            : 0x163D4C - 0x163D60
; =========================================================

163D4C:  LDR             R1, =(off_23494C - 0x163D5A)
163D4E:  MOV             R2, #0x5A8A6D
163D56:  ADD             R1, PC; off_23494C
163D58:  LDR             R1, [R1]; dword_23DF24
163D5A:  LDR             R1, [R1]
163D5C:  ADD             R1, R2
163D5E:  BX              R1
