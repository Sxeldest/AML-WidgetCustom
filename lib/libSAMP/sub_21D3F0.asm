; =========================================================
; Game Engine Function: sub_21D3F0
; Address            : 0x21D3F0 - 0x21D418
; =========================================================

21D3F0:  PUSH            {R4,R5,R7,LR}
21D3F2:  ADD             R7, SP, #8
21D3F4:  MOV             R5, R0
21D3F6:  LDR             R0, [R0,#8]
21D3F8:  MOV             R4, R1
21D3FA:  BL              sub_2154CC
21D3FE:  LDR             R1, =(asc_84C32 - 0x21D406); " " ...
21D400:  MOV             R0, R4
21D402:  ADD             R1, PC; " "
21D404:  ADDS            R2, R1, #1
21D406:  BL              sub_216F98
21D40A:  LDRD.W          R1, R2, [R5,#0xC]
21D40E:  MOV             R0, R4
21D410:  POP.W           {R4,R5,R7,LR}
21D414:  B.W             sub_216F98
