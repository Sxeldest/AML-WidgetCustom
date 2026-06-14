; =========================================================
; Game Engine Function: _Z22RQVertexAttrFormatToGL23RQVertexAttributeFormat
; Address            : 0x1CB71C - 0x1CB72E
; =========================================================

1CB71C:  CMP             R0, #4
1CB71E:  ITT HI
1CB720:  MOVHI           R0, #0
1CB722:  BXHI            LR
1CB724:  LDR             R1, =(unk_5EA7A0 - 0x1CB72A)
1CB726:  ADD             R1, PC; unk_5EA7A0
1CB728:  LDR.W           R0, [R1,R0,LSL#2]
1CB72C:  BX              LR
