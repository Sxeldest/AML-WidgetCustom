; =========================================================
; Game Engine Function: png_push_have_info
; Address            : 0x1F4DA8 - 0x1F4DB4
; =========================================================

1F4DA8:  LDR.W           R2, [R0,#0x284]
1F4DAC:  CMP             R2, #0
1F4DAE:  IT EQ
1F4DB0:  BXEQ            LR
1F4DB2:  BX              R2
