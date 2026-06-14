; =========================================================
; Game Engine Function: inflate_blocks_sync_point
; Address            : 0x20DDE8 - 0x20DDF2
; =========================================================

20DDE8:  LDR             R0, [R0]
20DDEA:  CMP             R0, #1
20DDEC:  IT NE
20DDEE:  MOVNE           R0, #0
20DDF0:  BX              LR
