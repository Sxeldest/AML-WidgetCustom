; =========================================================
; Game Engine Function: sub_107B7C
; Address            : 0x107B7C - 0x107B94
; =========================================================

107B7C:  PUSH            {R4,R6,R7,LR}
107B7E:  ADD             R7, SP, #8
107B80:  LDR             R4, [R1,#8]
107B82:  LDR             R0, [R0,#4]
107B84:  LDR             R4, [R4,#4]
107B86:  CMP             R0, R4
107B88:  IT NE
107B8A:  POPNE           {R4,R6,R7,PC}
107B8C:  POP.W           {R4,R6,R7,LR}
107B90:  B.W             sub_107B4C
