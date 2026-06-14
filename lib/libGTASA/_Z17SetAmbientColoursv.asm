; =========================================================
; Game Engine Function: _Z17SetAmbientColoursv
; Address            : 0x5D2018 - 0x5D202A
; =========================================================

5D2018:  LDR             R0, =(pAmbient_ptr - 0x5D2020)
5D201A:  LDR             R1, =(AmbientLightColourForFrame_ptr - 0x5D2022)
5D201C:  ADD             R0, PC; pAmbient_ptr
5D201E:  ADD             R1, PC; AmbientLightColourForFrame_ptr
5D2020:  LDR             R0, [R0]; pAmbient
5D2022:  LDR             R1, [R1]; AmbientLightColourForFrame
5D2024:  LDR             R0, [R0]
5D2026:  B.W             sub_193254
