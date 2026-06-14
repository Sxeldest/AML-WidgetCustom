; =========================================================
; Game Engine Function: sub_F907C
; Address            : 0xF907C - 0xF9096
; =========================================================

F907C:  LDR             R0, [R0,#4]
F907E:  CBZ             R0, locret_F9094
F9080:  LDR             R2, =(off_23494C - 0xF908E)
F9082:  MOV             R3, #0x3EBF95
F908A:  ADD             R2, PC; off_23494C
F908C:  LDR             R2, [R2]; dword_23DF24
F908E:  LDR             R2, [R2]
F9090:  ADD             R2, R3
F9092:  BX              R2
F9094:  BX              LR
