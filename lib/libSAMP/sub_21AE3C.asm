; =========================================================
; Game Engine Function: sub_21AE3C
; Address            : 0x21AE3C - 0x21AE5E
; =========================================================

21AE3C:  PUSH            {R4,R5,R7,LR}
21AE3E:  ADD             R7, SP, #8
21AE40:  MOV             R4, R1
21AE42:  LDR             R1, =(aFp - 0x21AE4C); "fp" ...
21AE44:  MOV             R5, R0
21AE46:  MOV             R0, R4
21AE48:  ADD             R1, PC; "fp"
21AE4A:  ADDS            R2, R1, #2
21AE4C:  BL              sub_216F98
21AE50:  LDRD.W          R1, R2, [R5,#8]
21AE54:  MOV             R0, R4
21AE56:  POP.W           {R4,R5,R7,LR}
21AE5A:  B.W             sub_216F98
