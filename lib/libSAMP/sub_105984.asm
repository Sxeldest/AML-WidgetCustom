; =========================================================
; Game Engine Function: sub_105984
; Address            : 0x105984 - 0x1059B2
; =========================================================

105984:  PUSH            {R4,R5,R7,LR}
105986:  ADD             R7, SP, #8
105988:  MOV             R4, R0
10598A:  BL              sub_F9124
10598E:  CBZ             R0, locret_1059B0
105990:  MOVS            R1, #2
105992:  MOV             R5, R0
105994:  BL              sub_F9164
105998:  ADDS            R1, R0, #1
10599A:  BEQ             locret_1059B0
10599C:  LDR             R1, [R5,#8]
10599E:  MOVS            R2, #0x40 ; '@'
1059A0:  ADD.W           R1, R1, R0,LSL#2
1059A4:  ADD.W           R0, R4, #0x2B0
1059A8:  POP.W           {R4,R5,R7,LR}
1059AC:  B.W             sub_2242EC
1059B0:  POP             {R4,R5,R7,PC}
