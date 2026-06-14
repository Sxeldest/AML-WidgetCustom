; =========================================================
; Game Engine Function: png_get_user_chunk_ptr
; Address            : 0x1F3ED0 - 0x1F3EDC
; =========================================================

1F3ED0:  CMP             R0, #0
1F3ED2:  ITE NE
1F3ED4:  LDRNE.W         R0, [R0,#0x2F0]
1F3ED8:  MOVEQ           R0, #0
1F3EDA:  BX              LR
