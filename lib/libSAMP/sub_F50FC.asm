; =========================================================
; Game Engine Function: sub_F50FC
; Address            : 0xF50FC - 0xF511A
; =========================================================

F50FC:  PUSH            {R7,LR}
F50FE:  MOV             R7, SP
F5100:  BL              sub_F5120
F5104:  LDR             R0, =(unk_240068 - 0xF510A)
F5106:  ADD             R0, PC; unk_240068
F5108:  LDR             R0, [R0,#(dword_240078 - 0x240068)]
F510A:  CBZ             R0, loc_F5116
F510C:  LDR             R1, [R0]
F510E:  LDR             R1, [R1,#0x18]
F5110:  POP.W           {R7,LR}
F5114:  BX              R1
F5116:  BL              sub_DC92C
