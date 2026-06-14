; =========================================================
; Game Engine Function: sub_21C22A
; Address            : 0x21C22A - 0x21C24E
; =========================================================

21C22A:  PUSH            {R4,R5,R7,LR}
21C22C:  ADD             R7, SP, #8
21C22E:  MOV             R5, R0
21C230:  LDR             R0, [R0,#8]
21C232:  MOV             R4, R1
21C234:  BL              sub_2154CC
21C238:  LDRD.W          R1, R2, [R5,#0xC]
21C23C:  MOV             R0, R4
21C23E:  BL              sub_216F98
21C242:  LDR             R0, [R5,#0x14]
21C244:  MOV             R1, R4
21C246:  POP.W           {R4,R5,R7,LR}
21C24A:  B.W             sub_2154CC
