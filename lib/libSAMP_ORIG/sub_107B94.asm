; =========================================================
; Game Engine Function: sub_107B94
; Address            : 0x107B94 - 0x107BB8
; =========================================================

107B94:  PUSH            {R4,R5,R7,LR}
107B96:  ADD             R7, SP, #8
107B98:  LDR             R5, [R1,#8]
107B9A:  LDR             R4, [R0,#4]
107B9C:  LDR             R5, [R5,#4]
107B9E:  CMP             R4, R5
107BA0:  BEQ             loc_107BB0
107BA2:  LDR             R0, [R0,#8]
107BA4:  LDR             R4, [R0]
107BA6:  LDR.W           R12, [R4,#0x1C]
107BAA:  POP.W           {R4,R5,R7,LR}
107BAE:  BX              R12
107BB0:  POP.W           {R4,R5,R7,LR}
107BB4:  B.W             sub_107B4C
