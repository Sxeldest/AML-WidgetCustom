; =========================================================
; Game Engine Function: sub_120A6C
; Address            : 0x120A6C - 0x120A88
; =========================================================

120A6C:  PUSH            {R4,R5,R7,LR}
120A6E:  ADD             R7, SP, #8
120A70:  MOV             R4, R1
120A72:  MOV             R5, R0
120A74:  BLX             strlen
120A78:  MOV             R2, R0
120A7A:  MOVS            R0, #3
120A7C:  MOV             R1, R5
120A7E:  MOV             R3, R4
120A80:  POP.W           {R4,R5,R7,LR}
120A84:  B.W             sub_11D978
