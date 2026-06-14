; =========================================================
; Game Engine Function: _Z20_rwGetES2TextureTypev
; Address            : 0x1AEB4C - 0x1AEB56
; =========================================================

1AEB4C:  LDR             R0, =(es2TextureType_ptr - 0x1AEB52)
1AEB4E:  ADD             R0, PC; es2TextureType_ptr
1AEB50:  LDR             R0, [R0]; es2TextureType
1AEB52:  LDR             R0, [R0]
1AEB54:  BX              LR
