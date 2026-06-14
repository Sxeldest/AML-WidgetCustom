; =========================================================
; Game Engine Function: sub_110B24
; Address            : 0x110B24 - 0x110B40
; =========================================================

110B24:  PUSH            {R4,R5,R7,LR}
110B26:  ADD             R7, SP, #8
110B28:  MOV             R4, R1
110B2A:  MOV             R5, R0
110B2C:  BL              sub_110B44
110B30:  LDR             R0, =(unk_2633D8 - 0x110B3A)
110B32:  MOV             R1, R5
110B34:  MOV             R2, R4
110B36:  ADD             R0, PC; unk_2633D8
110B38:  POP.W           {R4,R5,R7,LR}
110B3C:  B.W             sub_110C10
