; =========================================================
; Game Engine Function: png_push_restore_buffer
; Address            : 0x1F4290 - 0x1F42A0
; =========================================================

1F4290:  LDR.W           R3, [R0,#0x2A8]
1F4294:  STRD.W          R1, R1, [R0,#0x298]
1F4298:  ADDS            R1, R3, R2
1F429A:  STRD.W          R1, R2, [R0,#0x2B0]
1F429E:  BX              LR
