; =========================================================
; Game Engine Function: sub_12A724
; Address            : 0x12A724 - 0x12A740
; =========================================================

12A724:  PUSH            {R4,R5,R7,LR}
12A726:  ADD             R7, SP, #8
12A728:  MOV             R4, R1
12A72A:  MOV             R5, R0
12A72C:  BLX             strlen
12A730:  MOV             R2, R0
12A732:  MOVS            R0, #3
12A734:  MOV             R1, R5
12A736:  MOV             R3, R4
12A738:  POP.W           {R4,R5,R7,LR}
12A73C:  B.W             sub_112034
