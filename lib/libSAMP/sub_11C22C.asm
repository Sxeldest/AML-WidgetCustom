; =========================================================
; Game Engine Function: sub_11C22C
; Address            : 0x11C22C - 0x11C248
; =========================================================

11C22C:  PUSH            {R4,R5,R7,LR}
11C22E:  ADD             R7, SP, #8
11C230:  MOV             R4, R1
11C232:  MOV             R5, R0
11C234:  BL              sub_11C24C
11C238:  LDR             R0, =(unk_263698 - 0x11C242)
11C23A:  MOV             R1, R5
11C23C:  MOV             R2, R4
11C23E:  ADD             R0, PC; unk_263698
11C240:  POP.W           {R4,R5,R7,LR}
11C244:  B.W             sub_11C318
