; =========================================================
; Game Engine Function: sub_163D1C
; Address            : 0x163D1C - 0x163D30
; =========================================================

163D1C:  LDR             R1, =(off_23494C - 0x163D2A)
163D1E:  MOV             R2, #0x5AB2B1
163D26:  ADD             R1, PC; off_23494C
163D28:  LDR             R1, [R1]; dword_23DF24
163D2A:  LDR             R1, [R1]
163D2C:  ADD             R1, R2
163D2E:  BX              R1
