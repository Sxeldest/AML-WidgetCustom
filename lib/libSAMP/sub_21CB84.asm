; =========================================================
; Game Engine Function: sub_21CB84
; Address            : 0x21CB84 - 0x21CB9E
; =========================================================

21CB84:  PUSH            {R4,R5,R7,LR}
21CB86:  ADD             R7, SP, #8
21CB88:  MOV             R5, R0
21CB8A:  LDR             R0, [R0,#8]
21CB8C:  MOV             R4, R1
21CB8E:  BL              sub_2154CC
21CB92:  LDR             R0, [R5,#0xC]
21CB94:  MOV             R1, R4
21CB96:  POP.W           {R4,R5,R7,LR}
21CB9A:  B.W             sub_2154CC
