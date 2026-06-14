; =========================================================
; Game Engine Function: sub_15FE3C
; Address            : 0x15FE3C - 0x15FE58
; =========================================================

15FE3C:  PUSH            {R4,R5,R7,LR}
15FE3E:  ADD             R7, SP, #8
15FE40:  MOV             R4, R1
15FE42:  MOV             R5, R0
15FE44:  BLX             strlen
15FE48:  MOV             R2, R0
15FE4A:  MOVS            R0, #3
15FE4C:  MOV             R1, R5
15FE4E:  MOV             R3, R4
15FE50:  POP.W           {R4,R5,R7,LR}
15FE54:  B.W             sub_126FA8
