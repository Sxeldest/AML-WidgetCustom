; =========================================================
; Game Engine Function: png_push_have_end
; Address            : 0x1F4D9C - 0x1F4DA8
; =========================================================

1F4D9C:  LDR.W           R2, [R0,#0x28C]
1F4DA0:  CMP             R2, #0
1F4DA2:  IT EQ
1F4DA4:  BXEQ            LR
1F4DA6:  BX              R2
