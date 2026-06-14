; =========================================================
; Game Engine Function: _Z20VertexAttrFormatToGL23RQVertexAttributeFormat
; Address            : 0x220790 - 0x22079E
; =========================================================

220790:  CMP             R0, #4
220792:  ITEE HI
220794:  MOVHI           R0, #0
220796:  ADRLS           R1, dword_2207A0
220798:  LDRLS.W         R0, [R1,R0,LSL#2]
22079C:  BX              LR
