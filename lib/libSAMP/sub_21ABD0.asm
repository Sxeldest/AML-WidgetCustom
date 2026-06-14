; =========================================================
; Game Engine Function: sub_21ABD0
; Address            : 0x21ABD0 - 0x21ABEC
; =========================================================

21ABD0:  PUSH            {R4,R5,R7,LR}
21ABD2:  ADD             R7, SP, #8
21ABD4:  MOV             R5, R0
21ABD6:  LDR             R0, [R0,#8]
21ABD8:  MOV             R4, R1
21ABDA:  BL              sub_2154CC
21ABDE:  LDR             R0, [R5,#0xC]
21ABE0:  LDR             R1, [R0]
21ABE2:  LDR             R2, [R1,#0x14]
21ABE4:  MOV             R1, R4
21ABE6:  POP.W           {R4,R5,R7,LR}
21ABEA:  BX              R2
