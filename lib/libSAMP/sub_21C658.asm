; =========================================================
; Game Engine Function: sub_21C658
; Address            : 0x21C658 - 0x21C678
; =========================================================

21C658:  PUSH            {R4,R5,R7,LR}
21C65A:  ADD             R7, SP, #8
21C65C:  MOV             R4, R1
21C65E:  LDR             R1, =(aThrow_0 - 0x21C668); "throw " ...
21C660:  MOV             R5, R0
21C662:  MOV             R0, R4
21C664:  ADD             R1, PC; "throw "
21C666:  ADDS            R2, R1, #6
21C668:  BL              sub_216F98
21C66C:  LDR             R0, [R5,#8]
21C66E:  MOV             R1, R4
21C670:  POP.W           {R4,R5,R7,LR}
21C674:  B.W             sub_2154CC
