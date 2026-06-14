; =========================================================
; Game Engine Function: sub_ED394
; Address            : 0xED394 - 0xED3AC
; =========================================================

ED394:  PUSH            {R4,R6,R7,LR}
ED396:  ADD             R7, SP, #8
ED398:  MOV             R4, R0
ED39A:  CMP             R0, R1
ED39C:  ITTT NE
ED39E:  LDRDNE.W        R1, R2, [R1]; src
ED3A2:  MOVNE           R0, R4; int
ED3A4:  BLNE            sub_F63D4
ED3A8:  MOV             R0, R4
ED3AA:  POP             {R4,R6,R7,PC}
