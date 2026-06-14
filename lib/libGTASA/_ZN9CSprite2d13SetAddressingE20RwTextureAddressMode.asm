; =========================================================
; Game Engine Function: _ZN9CSprite2d13SetAddressingE20RwTextureAddressMode
; Address            : 0x5C898C - 0x5C89A8
; =========================================================

5C898C:  LDR             R2, [R0]
5C898E:  CMP             R2, #0
5C8990:  ITTTT NE
5C8992:  LSLNE           R3, R1, #0xC
5C8994:  BFINE.W         R3, R1, #8, #4
5C8998:  LSRNE           R1, R3, #8
5C899A:  STRBNE.W        R1, [R2,#0x51]
5C899E:  ITT NE
5C89A0:  LDRNE           R0, [R0]
5C89A2:  BXNE            LR
5C89A4:  MOVS            R0, #0
5C89A6:  BX              LR
