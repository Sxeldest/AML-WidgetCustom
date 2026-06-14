; =========================================================
; Game Engine Function: png_get_progressive_ptr
; Address            : 0x1F561C - 0x1F5628
; =========================================================

1F561C:  CMP             R0, #0
1F561E:  ITE NE
1F5620:  LDRNE.W         R0, [R0,#0x120]
1F5624:  MOVEQ           R0, #0
1F5626:  BX              LR
