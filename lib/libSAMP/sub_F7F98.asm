; =========================================================
; Game Engine Function: sub_F7F98
; Address            : 0xF7F98 - 0xF7FB8
; =========================================================

F7F98:  LDR             R0, [R0,#0xC]
F7F9A:  CBZ             R0, locret_F7FB6
F7F9C:  LDR             R1, =(off_23494C - 0xF7FAE)
F7F9E:  MOV             R2, #0x4C0A45
F7FA6:  LDR.W           R0, [R0,#0x440]
F7FAA:  ADD             R1, PC; off_23494C
F7FAC:  LDR             R1, [R1]; dword_23DF24
F7FAE:  LDR             R1, [R1]
F7FB0:  ADD             R2, R1
F7FB2:  MOVS            R1, #1
F7FB4:  BX              R2
F7FB6:  BX              LR
