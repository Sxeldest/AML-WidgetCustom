; =========================================================
; Game Engine Function: sub_163ECC
; Address            : 0x163ECC - 0x163EE0
; =========================================================

163ECC:  LDR             R0, =(off_23494C - 0x163EDA)
163ECE:  MOV             R1, #0x40D95D
163ED6:  ADD             R0, PC; off_23494C
163ED8:  LDR             R0, [R0]; dword_23DF24
163EDA:  LDR             R0, [R0]
163EDC:  ADD             R0, R1
163EDE:  BX              R0
