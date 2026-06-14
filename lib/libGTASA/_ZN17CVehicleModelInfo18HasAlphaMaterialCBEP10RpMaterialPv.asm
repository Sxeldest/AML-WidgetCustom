; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo18HasAlphaMaterialCBEP10RpMaterialPv
; Address            : 0x387F18 - 0x387F26
; =========================================================

387F18:  LDRB            R2, [R0,#7]
387F1A:  CMP             R2, #0xFF
387F1C:  ITTT NE
387F1E:  MOVNE           R0, #1
387F20:  STRBNE          R0, [R1]
387F22:  MOVNE           R0, #0
387F24:  BX              LR
