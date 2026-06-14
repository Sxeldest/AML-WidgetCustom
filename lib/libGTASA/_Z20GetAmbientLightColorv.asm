; =========================================================
; Game Engine Function: _Z20GetAmbientLightColorv
; Address            : 0x1B9B50 - 0x1B9B58
; =========================================================

1B9B50:  LDR             R0, =(AmbientLightColor_ptr - 0x1B9B56)
1B9B52:  ADD             R0, PC; AmbientLightColor_ptr
1B9B54:  LDR             R0, [R0]; AmbientLightColor
1B9B56:  BX              LR
