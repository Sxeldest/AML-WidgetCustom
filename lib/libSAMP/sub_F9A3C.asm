; =========================================================
; Game Engine Function: sub_F9A3C
; Address            : 0xF9A3C - 0xF9A50
; =========================================================

F9A3C:  CBZ             R1, locret_F9A4E
F9A3E:  PUSH            {R7,LR}
F9A40:  MOV             R7, SP
F9A42:  LDR             R0, =(unk_B2D90 - 0xF9A48)
F9A44:  ADD             R0, PC; unk_B2D90
F9A46:  BL              sub_107188
F9A4A:  POP.W           {R7,LR}
F9A4E:  BX              LR
