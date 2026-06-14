; =========================================================
; Game Engine Function: sub_21D27C
; Address            : 0x21D27C - 0x21D2A6
; =========================================================

21D27C:  PUSH            {R4,R5,R7,LR}
21D27E:  ADD             R7, SP, #8
21D280:  MOV             R4, R1
21D282:  LDR             R1, =(aThrow_1 - 0x21D28C); "throw(" ...
21D284:  MOV             R5, R0
21D286:  MOV             R0, R4
21D288:  ADD             R1, PC; "throw("
21D28A:  ADDS            R2, R1, #6
21D28C:  BL              sub_216F98
21D290:  ADD.W           R0, R5, #8
21D294:  MOV             R1, R4
21D296:  BL              sub_21AC38
21D29A:  MOV             R0, R4
21D29C:  MOVS            R1, #0x29 ; ')'
21D29E:  POP.W           {R4,R5,R7,LR}
21D2A2:  B.W             sub_2154F2
