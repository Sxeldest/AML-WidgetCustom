; =========================================================
; Game Engine Function: png_get_user_width_max
; Address            : 0x1F3EF8 - 0x1F3F04
; =========================================================

1F3EF8:  CMP             R0, #0
1F3EFA:  ITE NE
1F3EFC:  LDRNE.W         R0, [R0,#0x334]
1F3F00:  MOVEQ           R0, #0
1F3F02:  BX              LR
