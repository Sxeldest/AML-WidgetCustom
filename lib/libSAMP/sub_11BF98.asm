; =========================================================
; Game Engine Function: sub_11BF98
; Address            : 0x11BF98 - 0x11BFB4
; =========================================================

11BF98:  PUSH            {R4,R5,R7,LR}
11BF9A:  ADD             R7, SP, #8
11BF9C:  MOV             R4, R1
11BF9E:  MOV             R5, R0
11BFA0:  BL              sub_11BFB8
11BFA4:  LDR             R0, =(unk_263678 - 0x11BFAE)
11BFA6:  MOV             R1, R5
11BFA8:  MOV             R2, R4
11BFAA:  ADD             R0, PC; unk_263678
11BFAC:  POP.W           {R4,R5,R7,LR}
11BFB0:  B.W             sub_11C084
