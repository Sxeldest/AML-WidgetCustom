; =========================================================
; Game Engine Function: sub_163CD4
; Address            : 0x163CD4 - 0x163CE8
; =========================================================

163CD4:  LDR             R1, =(off_23494C - 0x163CE2)
163CD6:  MOV             R2, #0x5AB1E9
163CDE:  ADD             R1, PC; off_23494C
163CE0:  LDR             R1, [R1]; dword_23DF24
163CE2:  LDR             R1, [R1]
163CE4:  ADD             R1, R2
163CE6:  BX              R1
