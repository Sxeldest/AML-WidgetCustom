; =========================================================
; Game Engine Function: png_get_rgb_to_gray_status
; Address            : 0x1F3EC4 - 0x1F3ED0
; =========================================================

1F3EC4:  CMP             R0, #0
1F3EC6:  ITE NE
1F3EC8:  LDRBNE.W        R0, [R0,#0x304]
1F3ECC:  MOVEQ           R0, #0
1F3ECE:  BX              LR
