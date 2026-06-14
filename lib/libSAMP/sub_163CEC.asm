; =========================================================
; Game Engine Function: sub_163CEC
; Address            : 0x163CEC - 0x163D00
; =========================================================

163CEC:  LDR             R2, =(off_23494C - 0x163CFA)
163CEE:  MOV             R3, #0x5AB2C1
163CF6:  ADD             R2, PC; off_23494C
163CF8:  LDR             R2, [R2]; dword_23DF24
163CFA:  LDR             R2, [R2]
163CFC:  ADD             R2, R3
163CFE:  BX              R2
