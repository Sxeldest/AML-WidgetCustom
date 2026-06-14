; =========================================================
; Game Engine Function: sub_F97EC
; Address            : 0xF97EC - 0xF9800
; =========================================================

F97EC:  LDR             R0, =(off_23494C - 0xF97FA)
F97EE:  MOV             R1, #0x6D687C
F97F6:  ADD             R0, PC; off_23494C
F97F8:  LDR             R0, [R0]; dword_23DF24
F97FA:  LDR             R0, [R0]
F97FC:  ADD             R0, R1
F97FE:  BX              LR
