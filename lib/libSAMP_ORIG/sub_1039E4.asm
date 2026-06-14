; =========================================================
; Game Engine Function: sub_1039E4
; Address            : 0x1039E4 - 0x103A06
; =========================================================

1039E4:  PUSH            {R4,R5,R7,LR}
1039E6:  ADD             R7, SP, #8
1039E8:  MOV             R4, R1
1039EA:  LDR             R1, =(aFp - 0x1039F4); "fp" ...
1039EC:  MOV             R5, R0
1039EE:  MOV             R0, R4
1039F0:  ADD             R1, PC; "fp"
1039F2:  ADDS            R2, R1, #2
1039F4:  BL              sub_FFB40
1039F8:  LDRD.W          R1, R2, [R5,#8]
1039FC:  MOV             R0, R4
1039FE:  POP.W           {R4,R5,R7,LR}
103A02:  B.W             sub_FFB40
