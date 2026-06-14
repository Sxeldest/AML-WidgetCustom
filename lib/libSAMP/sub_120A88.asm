; =========================================================
; Game Engine Function: sub_120A88
; Address            : 0x120A88 - 0x120AA4
; =========================================================

120A88:  PUSH            {R4,R5,R7,LR}
120A8A:  ADD             R7, SP, #8
120A8C:  MOV             R4, R1
120A8E:  MOV             R5, R0
120A90:  BLX             strlen
120A94:  MOV             R2, R0
120A96:  MOVS            R0, #3
120A98:  MOV             R1, R5
120A9A:  MOV             R3, R4
120A9C:  POP.W           {R4,R5,R7,LR}
120AA0:  B.W             sub_11D978
