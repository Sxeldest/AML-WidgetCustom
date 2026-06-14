; =========================================================
; Game Engine Function: sub_F2E40
; Address            : 0xF2E40 - 0xF2E5C
; =========================================================

F2E40:  PUSH            {R4,R5,R7,LR}
F2E42:  ADD             R7, SP, #8
F2E44:  MOV             R4, R1
F2E46:  MOV             R5, R0
F2E48:  BL              sub_F2E60
F2E4C:  LDR             R0, =(unk_23FCB8 - 0xF2E56)
F2E4E:  MOV             R1, R5
F2E50:  MOV             R2, R4
F2E52:  ADD             R0, PC; unk_23FCB8
F2E54:  POP.W           {R4,R5,R7,LR}
F2E58:  B.W             sub_F2F2C
