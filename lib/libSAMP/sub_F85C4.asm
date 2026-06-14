; =========================================================
; Game Engine Function: sub_F85C4
; Address            : 0xF85C4 - 0xF85EC
; =========================================================

F85C4:  LDR             R1, =(off_23494C - 0xF85CE)
F85C6:  MOVS            R2, #0
F85C8:  STR             R2, [R0,#4]
F85CA:  ADD             R1, PC; off_23494C
F85CC:  STR             R2, [R0,#0xC]
F85CE:  MOVW            R2, #0x28A4
F85D2:  LDR             R1, [R1]; dword_23DF24
F85D4:  MOVT            R2, #0x95
F85D8:  LDR             R1, [R1]
F85DA:  ADD             R2, R1
F85DC:  STR             R2, [R0,#8]
F85DE:  MOV             R2, #0x951FA8
F85E6:  ADD             R1, R2
F85E8:  STR             R1, [R0]
F85EA:  BX              LR
