; =========================================================
; Game Engine Function: _Z20GetAmbientLightDirtyv
; Address            : 0x1B9B5C - 0x1B9B64
; =========================================================

1B9B5C:  LDR             R0, =(AmbientLightDirty_ptr - 0x1B9B62)
1B9B5E:  ADD             R0, PC; AmbientLightDirty_ptr
1B9B60:  LDR             R0, [R0]; AmbientLightDirty
1B9B62:  BX              LR
