; =========================================================
; Game Engine Function: sub_21C958
; Address            : 0x21C958 - 0x21C97E
; =========================================================

21C958:  PUSH            {R4,R5,R7,LR}
21C95A:  ADD             R7, SP, #8
21C95C:  MOV             R5, R0
21C95E:  LDR             R0, [R0,#8]
21C960:  MOV             R4, R1
21C962:  BL              sub_2154CC
21C966:  LDR             R1, =(asc_8B736 - 0x21C96E); "::" ...
21C968:  MOV             R0, R4
21C96A:  ADD             R1, PC; "::"
21C96C:  ADDS            R2, R1, #2
21C96E:  BL              sub_216F98
21C972:  LDR             R0, [R5,#0xC]
21C974:  MOV             R1, R4
21C976:  POP.W           {R4,R5,R7,LR}
21C97A:  B.W             sub_2154CC
