; =========================================================
; Game Engine Function: sub_120AA4
; Address            : 0x120AA4 - 0x120AC0
; =========================================================

120AA4:  PUSH            {R4,R5,R7,LR}
120AA6:  ADD             R7, SP, #8
120AA8:  MOV             R4, R1
120AAA:  MOV             R5, R0
120AAC:  BLX             strlen
120AB0:  MOV             R2, R0
120AB2:  MOVS            R0, #3
120AB4:  MOV             R1, R5
120AB6:  MOV             R3, R4
120AB8:  POP.W           {R4,R5,R7,LR}
120ABC:  B.W             sub_11D978
