; =========================================================
; Game Engine Function: _Z33forceLinearFilteringMatTexturesCBP10RpMaterialPv
; Address            : 0x5D15B2 - 0x5D15BE
; =========================================================

5D15B2:  LDR             R2, [R0]
5D15B4:  CMP             R2, #0
5D15B6:  IT NE
5D15B8:  STRBNE.W        R1, [R2,#0x50]
5D15BC:  BX              LR
