; =========================================================
; Game Engine Function: _Z17SetAmbientColoursP10RwRGBAReal
; Address            : 0x5D2034 - 0x5D2042
; =========================================================

5D2034:  MOV             R1, R0
5D2036:  LDR             R0, =(pAmbient_ptr - 0x5D203C)
5D2038:  ADD             R0, PC; pAmbient_ptr
5D203A:  LDR             R0, [R0]; pAmbient
5D203C:  LDR             R0, [R0]
5D203E:  B.W             sub_193254
