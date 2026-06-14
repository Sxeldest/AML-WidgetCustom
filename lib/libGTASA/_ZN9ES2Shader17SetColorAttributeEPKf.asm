; =========================================================
; Game Engine Function: _ZN9ES2Shader17SetColorAttributeEPKf
; Address            : 0x1CD1A4 - 0x1CD1BA
; =========================================================

1CD1A4:  LDR             R0, =(_ZN9ES2Shader9aBindingsE_ptr - 0x1CD1B0)
1CD1A6:  VLD1.32         {D16-D17}, [R1]
1CD1AA:  MOVS            R1, #1
1CD1AC:  ADD             R0, PC; _ZN9ES2Shader9aBindingsE_ptr
1CD1AE:  LDR             R0, [R0]; ES2Shader::aBindings ...
1CD1B0:  STRB.W          R1, [R0],#4; ES2Shader::aBindings
1CD1B4:  VST1.32         {D16-D17}, [R0]
1CD1B8:  BX              LR
