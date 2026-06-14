; =========================================================
; Game Engine Function: sub_21C1C8
; Address            : 0x21C1C8 - 0x21C1EA
; =========================================================

21C1C8:  PUSH            {R4,R5,R7,LR}
21C1CA:  ADD             R7, SP, #8
21C1CC:  MOV             R4, R1
21C1CE:  LDR             R1, =(aOperator_39 - 0x21C1D8); "operator\"\" " ...
21C1D0:  MOV             R5, R0
21C1D2:  MOV             R0, R4
21C1D4:  ADD             R1, PC; "operator\"\" "
21C1D6:  ADD.W           R2, R1, #0xB
21C1DA:  BL              sub_216F98
21C1DE:  LDR             R0, [R5,#8]
21C1E0:  MOV             R1, R4
21C1E2:  POP.W           {R4,R5,R7,LR}
21C1E6:  B.W             sub_2154CC
