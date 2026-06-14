; =========================================================
; Game Engine Function: sub_180BB4
; Address            : 0x180BB4 - 0x180BD0
; =========================================================

180BB4:  PUSH            {R4,R5,R7,LR}
180BB6:  ADD             R7, SP, #8
180BB8:  MOV             R4, R1
180BBA:  MOV             R5, R0
180BBC:  BLX             strlen
180BC0:  MOV             R2, R0
180BC2:  MOVS            R0, #3
180BC4:  MOV             R1, R5
180BC6:  MOV             R3, R4
180BC8:  POP.W           {R4,R5,R7,LR}
180BCC:  B.W             sub_112034
