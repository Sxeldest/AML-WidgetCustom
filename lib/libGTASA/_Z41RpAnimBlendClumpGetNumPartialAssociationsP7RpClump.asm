; =========================================================
; Game Engine Function: _Z41RpAnimBlendClumpGetNumPartialAssociationsP7RpClump
; Address            : 0x390C7C - 0x390C9E
; =========================================================

390C7C:  LDR             R1, =(ClumpOffset_ptr - 0x390C82)
390C7E:  ADD             R1, PC; ClumpOffset_ptr
390C80:  LDR             R1, [R1]; ClumpOffset
390C82:  LDR             R1, [R1]
390C84:  LDR             R0, [R0,R1]
390C86:  LDR             R1, [R0]
390C88:  MOVS            R0, #0
390C8A:  B               loc_390C96
390C8C:  LDRH            R2, [R1,#0x2A]
390C8E:  LDR             R1, [R1]
390C90:  UBFX.W          R2, R2, #4, #1
390C94:  ADD             R0, R2
390C96:  CMP             R1, #0
390C98:  IT EQ
390C9A:  BXEQ            LR
390C9C:  B               loc_390C8C
