; =========================================================
; Game Engine Function: sub_F7FBC
; Address            : 0xF7FBC - 0xF7FDE
; =========================================================

F7FBC:  PUSH            {R4,R5,R7,LR}
F7FBE:  ADD             R7, SP, #8
F7FC0:  MOV             R4, R0
F7FC2:  LDR             R0, [R0,#0xC]
F7FC4:  CBZ             R0, locret_F7FDC
F7FC6:  LDR             R0, [R4,#8]
F7FC8:  MOV             R5, R1
F7FCA:  BL              sub_1082F4
F7FCE:  CBZ             R0, locret_F7FDC
F7FD0:  MOV             R0, R5
F7FD2:  BL              sub_108728
F7FD6:  LDR             R1, [R4,#0xC]
F7FD8:  STR.W           R0, [R1,#0x560]
F7FDC:  POP             {R4,R5,R7,PC}
