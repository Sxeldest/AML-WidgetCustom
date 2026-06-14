; =========================================================
; Game Engine Function: png_push_have_row
; Address            : 0x1F54B0 - 0x1F54C6
; =========================================================

1F54B0:  LDR.W           R12, [R0,#0x288]
1F54B4:  CMP.W           R12, #0
1F54B8:  IT EQ
1F54BA:  BXEQ            LR
1F54BC:  LDRB.W          R3, [R0,#0x20D]
1F54C0:  LDR.W           R2, [R0,#0x1D8]
1F54C4:  BX              R12
