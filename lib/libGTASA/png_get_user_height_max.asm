; =========================================================
; Game Engine Function: png_get_user_height_max
; Address            : 0x1F3F04 - 0x1F3F10
; =========================================================

1F3F04:  CMP             R0, #0
1F3F06:  ITE NE
1F3F08:  LDRNE.W         R0, [R0,#0x338]
1F3F0C:  MOVEQ           R0, #0
1F3F0E:  BX              LR
