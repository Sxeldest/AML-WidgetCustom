; =========================================================
; Game Engine Function: sub_21C52C
; Address            : 0x21C52C - 0x21C554
; =========================================================

21C52C:  PUSH            {R4,R5,R7,LR}
21C52E:  ADD             R7, SP, #8
21C530:  MOV             R4, R1
21C532:  LDRD.W          R1, R2, [R0,#8]
21C536:  MOV             R5, R0
21C538:  MOV             R0, R4
21C53A:  BL              sub_216F98
21C53E:  LDR             R0, [R5,#0x10]
21C540:  MOV             R1, R4
21C542:  BL              sub_2154CC
21C546:  LDRD.W          R1, R2, [R5,#0x14]
21C54A:  MOV             R0, R4
21C54C:  POP.W           {R4,R5,R7,LR}
21C550:  B.W             sub_216F98
