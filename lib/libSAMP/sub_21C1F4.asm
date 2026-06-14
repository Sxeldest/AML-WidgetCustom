; =========================================================
; Game Engine Function: sub_21C1F4
; Address            : 0x21C1F4 - 0x21C214
; =========================================================

21C1F4:  PUSH            {R4,R5,R7,LR}
21C1F6:  ADD             R7, SP, #8
21C1F8:  MOV             R4, R1
21C1FA:  LDR             R1, =(asc_8B736 - 0x21C204); "::" ...
21C1FC:  MOV             R5, R0
21C1FE:  MOV             R0, R4
21C200:  ADD             R1, PC; "::"
21C202:  ADDS            R2, R1, #2
21C204:  BL              sub_216F98
21C208:  LDR             R0, [R5,#8]
21C20A:  MOV             R1, R4
21C20C:  POP.W           {R4,R5,R7,LR}
21C210:  B.W             sub_2154CC
