; =========================================================
; Game Engine Function: sub_2178B8
; Address            : 0x2178B8 - 0x2178DE
; =========================================================

2178B8:  PUSH            {R4,R5,R7,LR}
2178BA:  ADD             R7, SP, #8
2178BC:  MOV             R5, R0
2178BE:  LDR             R0, [R0,#8]
2178C0:  MOV             R4, R1
2178C2:  BL              sub_2154CC
2178C6:  LDR             R1, =(asc_8B736 - 0x2178CE); "::" ...
2178C8:  MOV             R0, R4
2178CA:  ADD             R1, PC; "::"
2178CC:  ADDS            R2, R1, #2
2178CE:  BL              sub_216F98
2178D2:  LDR             R0, [R5,#0xC]
2178D4:  MOV             R1, R4
2178D6:  POP.W           {R4,R5,R7,LR}
2178DA:  B.W             sub_2154CC
