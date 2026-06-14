; =========================================================
; Game Engine Function: sub_104B9C
; Address            : 0x104B9C - 0x104BBE
; =========================================================

104B9C:  PUSH            {R4,R5,R7,LR}
104B9E:  ADD             R7, SP, #8
104BA0:  MOV             R4, R1
104BA2:  LDR             R1, =(asc_4FD56 - 0x104BAC); "~" ...
104BA4:  MOV             R5, R0
104BA6:  MOV             R0, R4
104BA8:  ADD             R1, PC; "~"
104BAA:  ADDS            R2, R1, #1
104BAC:  BL              sub_FFB40
104BB0:  LDR             R0, [R5,#8]
104BB2:  LDR             R1, [R0]
104BB4:  LDR             R2, [R1,#0x10]
104BB6:  MOV             R1, R4
104BB8:  POP.W           {R4,R5,R7,LR}
104BBC:  BX              R2
