; =========================================================
; Game Engine Function: sub_1441E8
; Address            : 0x1441E8 - 0x144204
; =========================================================

1441E8:  PUSH            {R4,R5,R7,LR}
1441EA:  ADD             R7, SP, #8
1441EC:  MOV             R4, R1
1441EE:  MOV             R5, R0
1441F0:  BLX             strlen
1441F4:  MOV             R2, R0
1441F6:  MOVS            R0, #2
1441F8:  MOV             R1, R5
1441FA:  MOV             R3, R4
1441FC:  POP.W           {R4,R5,R7,LR}
144200:  B.W             sub_112034
