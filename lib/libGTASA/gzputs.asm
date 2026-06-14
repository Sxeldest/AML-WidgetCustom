; =========================================================
; Game Engine Function: gzputs
; Address            : 0x20CE34 - 0x20CE4E
; =========================================================

20CE34:  PUSH            {R4,R5,R7,LR}
20CE36:  ADD             R7, SP, #8
20CE38:  MOV             R4, R1
20CE3A:  MOV             R5, R0
20CE3C:  MOV             R0, R4; char *
20CE3E:  BLX             strlen
20CE42:  MOV             R2, R0
20CE44:  MOV             R0, R5
20CE46:  MOV             R1, R4
20CE48:  POP.W           {R4,R5,R7,LR}
20CE4C:  B               gzwrite
