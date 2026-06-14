; =========================================================
; Game Engine Function: sub_F3A2C
; Address            : 0xF3A2C - 0xF3A4E
; =========================================================

F3A2C:  PUSH            {R4,R6,R7,LR}
F3A2E:  ADD             R7, SP, #8
F3A30:  LDR             R4, =(unk_23FCD4 - 0xF3A38)
F3A32:  MOVS            R1, #0
F3A34:  ADD             R4, PC; unk_23FCD4
F3A36:  MOV             R0, R4
F3A38:  BL              sub_F32A0
F3A3C:  LDR             R0, =(sub_F32C8+1 - 0xF3A46)
F3A3E:  MOV             R1, R4
F3A40:  LDR             R2, =(off_22A540 - 0xF3A48)
F3A42:  ADD             R0, PC; sub_F32C8
F3A44:  ADD             R2, PC; off_22A540
F3A46:  POP.W           {R4,R6,R7,LR}
F3A4A:  B.W             sub_224250
