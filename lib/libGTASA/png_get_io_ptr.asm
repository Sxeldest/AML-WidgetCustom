; =========================================================
; Game Engine Function: png_get_io_ptr
; Address            : 0x1EE0E4 - 0x1EE0F0
; =========================================================

1EE0E4:  CMP             R0, #0
1EE0E6:  ITE NE
1EE0E8:  LDRNE.W         R0, [R0,#0x120]
1EE0EC:  MOVEQ           R0, #0
1EE0EE:  BX              LR
